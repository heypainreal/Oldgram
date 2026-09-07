#import "ModernBridge.h"
#import "ModernTL.h"

#import <LegacyComponents/TGPeerIdAdapter.h>

#import <objc/runtime.h>

// Имена, которые в старой схеме назывались иначе, чем в современной.
static NSDictionary<NSString *, NSString *> *ModernBridgeFieldAliases(void)
{
    static NSDictionary *aliases = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        aliases = @{
            // message: to_id -> peer_id, reply_to_msg_id -> reply_to:MessageReplyHeader
            @"peer_id": @"to_id",
            @"reply_to": @"reply_to_msg_id",
            @"thumbs": @"thumb",
            @"bot_inline_placeholder": @"inlineBotPlaceholder",
        };
    });
    return aliases;
}

/// Описание свойства старого класса: кодировка типа и, для объектов, класс.
typedef struct {
    char encoding;
    __unsafe_unretained Class objectClass;
} ModernBridgeProperty;

static bool ModernBridgeReadProperty(Class cls, NSString *name, ModernBridgeProperty *out)
{
    objc_property_t property = class_getProperty(cls, name.UTF8String);
    if (property == NULL) {
        return false;
    }

    const char *attributes = property_getAttributes(property);
    if (attributes == NULL || attributes[0] != 'T') {
        return false;
    }

    out->encoding = attributes[1];
    out->objectClass = nil;

    if (out->encoding == '@' && attributes[2] == '"') {
        const char *start = attributes + 3;
        const char *end = strchr(start, '"');
        if (end != NULL && end > start) {
            NSString *className = [[NSString alloc] initWithBytes:start length:(NSUInteger)(end - start) encoding:NSUTF8StringEncoding];
            out->objectClass = NSClassFromString(className);
        }
    }

    return true;
}

/// Безопасное чтение свойства: у современных классов набор полей другой,
/// и обращение по несуществующему ключу иначе бросает исключение.
static id ModernBridgeValue(id object, NSString *key)
{
    if (object == nil || object == [NSNull null]) {
        return nil;
    }
    id value = nil;
    @try {
        value = [object valueForKey:key];
    } @catch (NSException *exception) {
        return nil;
    }
    return value == [NSNull null] ? nil : value;
}

@interface ModernBridgeParser : NSObject <TLObject>

@property (nonatomic, strong) id<TLObject> modernParser;
@property (nonatomic) Class targetClass;
/// имя свойства в ModernTL_* -> имя свойства в старом классе
@property (nonatomic, strong) NSDictionary<NSString *, NSString *> *fieldMap;
/// Доводка для конструкторов, где поля не просто переименовали, а перенесли
/// внутрь вложенного объекта.
@property (nonatomic, copy) void (^postProcess)(id parsed, id target);
/// bool-свойство старого класса -> (имя маски, номер бита)
@property (nonatomic, strong) NSDictionary<NSString *, NSArray *> *booleanFlags;

@end

@implementation ModernBridgeParser

- (int32_t)TLconstructorSignature
{
    return [_modernParser TLconstructorSignature];
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)signature environment:(id<TLSerializationEnvironment>)environment context:(TLSerializationContext *)context error:(__autoreleasing NSError **)error
{
    id parsed = [_modernParser TLdeserialize:is signature:signature environment:environment context:context error:error];
    if (parsed == nil) {
        return nil;
    }

    id target = [[_targetClass alloc] init];

    [_fieldMap enumerateKeysAndObjectsUsingBlock:^(NSString *modernName, NSString *legacyName, __unused BOOL *stop) {
        id value = nil;
        @try {
            value = [parsed valueForKey:modernName];
        } @catch (NSException *exception) {
            return;
        }

        if (value == nil || value == [NSNull null]) {
            return;
        }

        ModernBridgeProperty legacyProperty;
        bool hasLegacyProperty = ModernBridgeReadProperty(self->_targetClass, legacyName, &legacyProperty);
        
        if (hasLegacyProperty && legacyProperty.encoding == '@'
            && [value isKindOfClass:[NSArray class]]
            && legacyProperty.objectClass != nil
            && ![legacyProperty.objectClass isSubclassOfClass:[NSArray class]]) {
            value = [(NSArray *)value firstObject];
            if (value == nil) {
                return;
            }
        }
        
        if (hasLegacyProperty
            && legacyProperty.encoding != '@' && ![value isKindOfClass:[NSNumber class]]) {
            // Ждём число, а пришёл объект: берём идентификатор внутри него.
            // Для from_id это Peer, для reply_to — заголовок ответа.
            //
            // Идентификатор группы или канала нельзя брать сырым: приложение
            // хранит пиров в собственном пространстве, где группы и каналы
            // отрицательные. Без пересчёта автор сообщения от лица группы
            // выглядел посторонним пользователем.
            NSNumber *number = nil;
            for (NSString *key in @[legacyName, @"user_id", @"channel_id", @"chat_id", @"n_id"]) {
                id inner = ModernBridgeValue(value, key);
                if (![inner isKindOfClass:[NSNumber class]]) {
                    continue;
                }
                int64_t rawId = [inner longLongValue];
                if ([key isEqualToString:@"channel_id"]) {
                    number = @(TGPeerIdFromChannelId(rawId));
                } else if ([key isEqualToString:@"chat_id"]) {
                    number = @(TGPeerIdFromGroupId(rawId));
                } else {
                    number = inner;
                }
                break;
            }
            if (number == nil) {
                return;
            }
            value = number;
        }

        // Схема заменила часть строковых полей объектами: restriction_reason
        // стал вектором RestrictionReason. Класс значения KVC не проверяет, и
        // объект молча оседал в NSString-свойстве — приложение падало уже при
        // сохранении пользователя в базу.
        if (hasLegacyProperty && legacyProperty.encoding == '@'
            && legacyProperty.objectClass != nil
            && ![value isKindOfClass:legacyProperty.objectClass]) {
            if ([legacyProperty.objectClass isSubclassOfClass:[NSString class]]) {
                NSString *text = nil;
                for (NSString *key in @[@"text", @"reason", @"username", @"value"]) {
                    id inner = ModernBridgeValue(value, key);
                    if ([inner isKindOfClass:[NSString class]]) {
                        text = inner;
                        break;
                    }
                }
                if (text == nil) {
                    return;
                }
                value = text;
            } else {
                return;
            }
        }

        @try {
            [target setValue:value forKey:legacyName];
        } @catch (NSException *exception) {
            TGLog(@"[ModernBridge] %@.%@ не принял значение: %@", NSStringFromClass(self->_targetClass), legacyName, exception.reason);
        }
    }];

    [_booleanFlags enumerateKeysAndObjectsUsingBlock:^(NSString *property, NSArray *position, __unused BOOL *stop) {
        NSNumber *mask = ModernBridgeValue(parsed, position[0]);
        if (![mask isKindOfClass:[NSNumber class]]) {
            return;
        }
        bool value = ([mask intValue] & (1 << [position[1] intValue])) != 0;
        @try {
            [target setValue:@(value) forKey:property];
        } @catch (NSException *exception) {
        }
    }];

    if (_postProcess != nil) {
        _postProcess(parsed, target);
    }

    return target;
}

- (void)TLserialize:(NSOutputStream *)os
{
    [_modernParser TLserialize:os];
}

@end

/// Конструкторы, у которых старый класс назван иначе, чем в схеме.
///
/// По суффиксу после «$» такие классы не находятся: TLchannelDifferenceTooLong
/// вообще не содержит «$», а разница каналов лежит в TLUpdates_ChannelDifference$…
static NSDictionary<NSString *, Class> *ModernBridgeExplicitClasses(void)
{
    static NSDictionary *classes = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSDictionary<NSString *, NSString *> *names = @{
            @"updates_channelDifference": @"TLUpdates_ChannelDifference$channelDifference",
            @"updates_channelDifferenceEmpty": @"TLUpdates_ChannelDifference$empty",
            @"updates_channelDifferenceTooLong": @"TLchannelDifferenceTooLong",
            @"users_userFull": @"TLUserFull$userFull",
        };

        NSMutableDictionary *result = [[NSMutableDictionary alloc] init];
        [names enumerateKeysAndObjectsUsingBlock:^(NSString *suffix, NSString *className, __unused BOOL *stop) {
            Class cls = NSClassFromString(className);
            if (cls != nil) {
                result[suffix] = cls;
            } else {
                TGLog(@"[ModernBridge] класс %@ не найден", className);
            }
        }];
        classes = result;
    });
    return classes;
}

/// Переименования полей, действующие только внутри одного конструктора.
///
/// Общий словарь алиасов здесь не годится: from_id в updateChatUserTyping стал
/// автором печати (старое user_id), а в messageFwdHeader сохранил своё имя.
static NSDictionary<NSString *, NSDictionary<NSString *, NSString *> *> *ModernBridgeConstructorAliases(void)
{
    static NSDictionary *aliases = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        aliases = @{
            @"updateChatUserTyping": @{@"from_id": @"user_id"},
            @"channelParticipantBanned": @{@"peer": @"user_id"},
        };
    });
    return aliases;
}

/// Булевы флаги вида creator:flags.0?true.
///
/// На проводе они не занимают места и в сгенерированные классы не попадают —
/// есть только сама маска flags. У старых классов это отдельные bool-свойства,
/// и без восстановления канал не отличался от супергруппы, а голосовое
/// сообщение — от обычного файла.
static NSDictionary<NSString *, NSDictionary<NSString *, NSArray *> *> *ModernBridgeBooleanFlags(void)
{
    static NSDictionary *flags = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        flags = @{
        @"botInlineMessageText": @{@"no_webpage": @[@"flags", @(0)]},
        @"channel": @{@"broadcast": @[@"flags", @(5)], @"creator": @[@"flags", @(0)], @"left": @[@"flags", @(2)], @"megagroup": @[@"flags", @(8)], @"min": @[@"flags", @(12)], @"restricted": @[@"flags", @(9)], @"signatures": @[@"flags", @(11)], @"verified": @[@"flags", @(7)]},
        @"channelFull": @{@"canViewParticipants": @[@"flags", @(3)], @"can_set_stickers": @[@"flags", @(7)], @"can_set_username": @[@"flags", @(6)]},
        @"channels_exportMessageLink": @{@"grouped": @[@"flags", @(0)]},
        @"chat": @{@"creator": @[@"flags", @(0)], @"deactivated": @[@"flags", @(5)], @"left": @[@"flags", @(2)]},
        @"chatInvite": @{@"isBroadcast": @[@"flags", @(1)], @"isChannel": @[@"flags", @(0)], @"isPublic": @[@"flags", @(2)], @"isSupergroup": @[@"flags", @(3)]},
        @"documentAttributeAudio": @{@"is_voice": @[@"flags", @(10)]},
        @"inputPeerPhotoFileLocation": @{@"big": @[@"flags", @(0)]},
        @"invoice": @{@"email_requested": @[@"flags", @(3)], @"flexible": @[@"flags", @(5)], @"name_requested": @[@"flags", @(1)], @"phone_requested": @[@"flags", @(2)], @"shipping_address_requested": @[@"flags", @(4)], @"test": @[@"flags", @(0)]},
        @"messageMediaInvoice": @{@"shipping_address_requested": @[@"flags", @(1)]},
        @"payments_paymentForm": @{@"can_save_credentials": @[@"flags", @(2)], @"password_missing": @[@"flags", @(3)]},
        @"payments_savedInfo": @{@"has_saved_credentials": @[@"flags", @(1)]},
        @"userFull": @{@"blocked": @[@"flags", @(0)]},
        };
    });
    return flags;
}

/// Доводка после переноса полей — там, где схема убрала поля во вложенный объект.
static NSDictionary<NSString *, void (^)(id, id)> *ModernBridgePostProcessors(void)
{
    static NSDictionary *processors = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // updates.channelDifferenceTooLong больше не отдаёт pts, top_message и
        // счётчики непрочитанного плоским списком — всё это лежит в dialog.
        void (^tooLong)(id, id) = ^(id parsed, id target) {
            id dialog = nil;
            @try {
                dialog = [parsed valueForKey:@"dialog"];
            } @catch (NSException *exception) {
                return;
            }
            if (dialog == nil || dialog == [NSNull null]) {
                return;
            }

            NSArray *fields = @[@"pts", @"top_message", @"read_inbox_max_id",
                                @"read_outbox_max_id", @"unread_count", @"unread_mentions_count"];
            for (NSString *field in fields) {
                id value = nil;
                @try {
                    value = [dialog valueForKey:field];
                } @catch (NSException *exception) {
                    continue;
                }
                if (![value isKindOfClass:[NSNumber class]]) {
                    continue;
                }
                @try {
                    [target setValue:value forKey:field];
                } @catch (NSException *exception) {
                    continue;
                }
            }
        };

        // users.getFullUser теперь отвечает обёрткой users.userFull: сам профиль
        // лежит в full_user, а пользователь — отдельным списком users. Старый
        // код ждёт плоский userFull с вложенными user и link.
        void (^usersUserFull)(id, id) = ^(id parsed, id target) {
            id fullUser = ModernBridgeValue(parsed, @"full_user");
            NSArray *users = ModernBridgeValue(parsed, @"users");

            if (fullUser != nil) {
                for (NSString *field in @[@"flags", @"about", @"settings", @"profile_photo",
                                          @"notify_settings", @"bot_info", @"common_chats_count"]) {
                    id value = ModernBridgeValue(fullUser, field);
                    if (value == nil) {
                        continue;
                    }
                    @try {
                        [target setValue:value forKey:field];
                    } @catch (NSException *exception) {
                        continue;
                    }
                }
            }

            // Находим самого пользователя и кладём туда, где его ищет приложение.
            id user = nil;
            NSNumber *userId = ModernBridgeValue(fullUser, @"n_id");
            for (id candidate in users) {
                NSNumber *candidateId = ModernBridgeValue(candidate, @"n_id");
                if (userId == nil || [candidateId isEqualToNumber:userId]) {
                    user = candidate;
                    break;
                }
            }
            if (user == nil) {
                user = users.firstObject;
            }
            if (user == nil) {
                return;
            }

            @try {
                [target setValue:user forKey:@"user"];
            } @catch (NSException *exception) {
            }

            Class linkClass = NSClassFromString(@"TLcontacts_Link$contacts_link");
            if (linkClass != nil) {
                id link = [[linkClass alloc] init];
                @try {
                    [link setValue:user forKey:@"user"];
                    [target setValue:link forKey:@"link"];
                } @catch (NSException *exception) {
                }
            }
        };

        // Пересылка: from_id стал Peer, и для постов канала старому коду нужен
        // отдельный channel_id — иначе автор пересылки теряется.
        void (^fwdHeader)(id, id) = ^(id parsed, id target) {
            id from = ModernBridgeValue(parsed, @"from_id");
            if (from == nil) {
                return;
            }
            NSNumber *channelId = ModernBridgeValue(from, @"channel_id");
            NSNumber *userId = ModernBridgeValue(from, @"user_id");
            @try {
                if ([channelId isKindOfClass:[NSNumber class]]) {
                    [target setValue:channelId forKey:@"channel_id"];
                    [target setValue:@0 forKey:@"from_id"];
                } else if ([userId isKindOfClass:[NSNumber class]]) {
                    [target setValue:userId forKey:@"from_id"];
                }
            } @catch (NSException *exception) {
            }
        };

        // Смена имени: вместо одного username пришёл их список.
        void (^userName)(id, id) = ^(id parsed, id target) {
            NSArray *usernames = ModernBridgeValue(parsed, @"usernames");
            NSString *username = ModernBridgeValue(usernames.firstObject, @"username");
            if (![username isKindOfClass:[NSString class]]) {
                return;
            }
            @try {
                [target setValue:username forKey:@"username"];
            } @catch (NSException *exception) {
            }
        };

        // Установленный звонок: раньше первый адрес приезжал отдельным полем
        // connection, а остальные — списком alternative_connections. В схеме
        // 228 это один вектор connections, и без разбора libtgvoip оставался
        // без адресов — звонок соединялся вхолостую.
        void (^phoneCall)(id, id) = ^(id parsed, id target) {
            NSArray *connections = ModernBridgeValue(parsed, @"connections");
            if (![connections isKindOfClass:[NSArray class]] || connections.count == 0) {
                return;
            }

            // Сервер отдаёт вперемешку рефлекторы libtgvoip (phoneConnection) и
            // адреса webrtc, которые эта версия не умеет. Ставим первыми те,
            // что приложение действительно разберёт.
            Class supported = NSClassFromString(@"TLPhoneConnection$phoneConnection");
            NSMutableArray *ordered = [[NSMutableArray alloc] init];
            for (id connection in connections) {
                if (supported != nil && [connection isKindOfClass:supported]) {
                    [ordered addObject:connection];
                }
            }
            for (id connection in connections) {
                if (![ordered containsObject:connection]) {
                    [ordered addObject:connection];
                }
            }

            @try {
                [target setValue:ordered.firstObject forKey:@"connection"];
                [target setValue:[ordered subarrayWithRange:NSMakeRange(1, ordered.count - 1)]
                          forKey:@"alternative_connections"];
            } @catch (NSException *exception) {
            }
        };

        processors = @{
            @"phoneCall": [phoneCall copy],
            @"updates_channelDifferenceTooLong": [tooLong copy],
            @"users_userFull": [usersUserFull copy],
            @"messageFwdHeader": [fwdHeader copy],
            @"updateUserName": [userName copy],
        };
    });
    return processors;
}

/// Старые классы называются TL<Тип>$<конструктор>; собираем их по суффиксу.
static NSDictionary<NSString *, Class> *ModernBridgeLegacyClassesBySuffix(void)
{
    NSMutableDictionary *result = [[NSMutableDictionary alloc] init];

    unsigned int count = 0;
    Class *classes = objc_copyClassList(&count);
    for (unsigned int i = 0; i < count; i++) {
        const char *rawName = class_getName(classes[i]);
        if (strncmp(rawName, "TL", 2) != 0) {
            continue;
        }
        const char *separator = strchr(rawName, '$');
        if (separator == NULL || separator[1] == '\0') {
            continue;
        }
        NSString *suffix = [[NSString alloc] initWithUTF8String:separator + 1];
        if (result[suffix] == nil) {
            result[suffix] = classes[i];
        }
    }
    free(classes);

    return result;
}

/// Совместимо ли значение современного свойства со старым.
static bool ModernBridgeTypesMatch(ModernBridgeProperty modern, ModernBridgeProperty legacy)
{
    bool modernIsObject = modern.encoding == '@';
    bool legacyIsObject = legacy.encoding == '@';

    if (modernIsObject && !legacyIsObject) {
        // Схема 228 заменила часть числовых полей объектами: from_id стал Peer,
        // reply_to_msg_id — заголовком MessageReplyHeader. Достаём из них число.
        return true;
    }

    if (modernIsObject != legacyIsObject) {
        return false;
    }

    if (!modernIsObject) {
        // Числа и булевы приводятся друг к другу через KVC; int64 в int32
        // усекается — идентификаторы новых пиров это ломает, но старые чаты
        // (id < 2^31) работают.
        return true;
    }

    if (modern.objectClass == nil || legacy.objectClass == nil) {
        return true;
    }

    // NSString в NSArray и наоборот класть нельзя: в новой схеме часть полей
    // стала векторами (например restriction_reason).
    bool modernIsCollection = [modern.objectClass isSubclassOfClass:[NSArray class]];
    bool legacyIsCollection = [legacy.objectClass isSubclassOfClass:[NSArray class]];
    if (modernIsCollection && !legacyIsCollection) {
        // Часть одиночных полей стала векторами (document.thumb -> thumbs):
        // старому коду отдаём первый элемент.
        return true;
    }
    if (modernIsCollection != legacyIsCollection) {
        return false;
    }

    bool modernIsString = [modern.objectClass isSubclassOfClass:[NSString class]];
    bool legacyIsString = [legacy.objectClass isSubclassOfClass:[NSString class]];
    if (modernIsString != legacyIsString) {
        return false;
    }

    bool modernIsData = [modern.objectClass isSubclassOfClass:[NSData class]];
    bool legacyIsData = [legacy.objectClass isSubclassOfClass:[NSData class]];
    if (modernIsData != legacyIsData) {
        return false;
    }

    return true;
}

/// Имя свойства старого класса, совпадающее с современным без учёта регистра.
static NSString *ModernBridgeCaseInsensitiveName(Class legacyClass, NSString *modernName)
{
    NSString *result = nil;
    for (Class cls = legacyClass; cls != nil && cls != [NSObject class]; cls = class_getSuperclass(cls)) {
        unsigned int count = 0;
        objc_property_t *properties = class_copyPropertyList(cls, &count);
        for (unsigned int i = 0; i < count; i++) {
            NSString *name = [[NSString alloc] initWithUTF8String:property_getName(properties[i])];
            if ([name caseInsensitiveCompare:modernName] == NSOrderedSame) {
                result = name;
                break;
            }
        }
        free(properties);
        if (result != nil) {
            break;
        }
    }
    return result;
}

static NSDictionary<NSString *, NSString *> *ModernBridgeFieldMap(Class modernClass, Class legacyClass, NSString *constructor)
{
    NSMutableDictionary *map = [[NSMutableDictionary alloc] init];
    NSDictionary *aliases = ModernBridgeFieldAliases();
    NSDictionary *constructorAliases = ModernBridgeConstructorAliases()[constructor];

    // hash/description/superclass приходят от NSObject, а не из схемы.
    NSSet *ignored = [NSSet setWithArray:@[@"hash", @"description", @"debugDescription", @"superclass"]];

    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList(modernClass, &count);
    for (unsigned int i = 0; i < count; i++) {
        NSString *modernName = [[NSString alloc] initWithUTF8String:property_getName(properties[i])];
        if ([ignored containsObject:modernName]) {
            continue;
        }
        ModernBridgeProperty modernProperty;
        ModernBridgeProperty legacyProperty;
        if (!ModernBridgeReadProperty(modernClass, modernName, &modernProperty)) {
            continue;
        }

        // Алиас нужен, только когда одноимённого свойства у старого класса нет:
        // иначе document.thumbs всегда уходил бы в одиночный thumb.
        NSString *legacyName = constructorAliases[modernName] ?: modernName;
        if (!ModernBridgeReadProperty(legacyClass, legacyName, &legacyProperty)) {
            legacyName = aliases[modernName] ?: modernName;
            if (!ModernBridgeReadProperty(legacyClass, legacyName, &legacyProperty)) {
                // Генератор схемы приводит имена к snake_case и теряет заглавные
                // буквы: srp_B становится srp_b, и поле молча не переносится —
                // так ломалась проверка облачного пароля.
                legacyName = ModernBridgeCaseInsensitiveName(legacyClass, modernName);
                if (legacyName == nil || !ModernBridgeReadProperty(legacyClass, legacyName, &legacyProperty)) {
                    continue;
                }
            }
        }
        if (!ModernBridgeTypesMatch(modernProperty, legacyProperty)) {
            continue;
        }

        map[modernName] = legacyName;
    }
    free(properties);

    return map;
}

NSArray *ModernBridgeAllParsers(void)
{
    NSDictionary<NSString *, Class> *legacyClasses = ModernBridgeLegacyClassesBySuffix();
    NSMutableArray *bridges = [[NSMutableArray alloc] init];

    for (id<TLObject> modernParser in ModernTLAllParsers()) {
        NSString *modernClassName = NSStringFromClass([modernParser class]);
        if (![modernClassName hasPrefix:@"ModernTL_"]) {
            continue;
        }

        NSString *suffix = [modernClassName substringFromIndex:@"ModernTL_".length];
        // Часть конструкторов переименовали целиком: channelBannedRights стал
        // chatBannedRights, channelAdminRights — chatAdminRights.
        NSDictionary *constructorAliases = @{
            @"chatBannedRights": @"channelBannedRights",
            @"chatAdminRights": @"channelAdminRights",
        };
        if (constructorAliases[suffix] != nil && legacyClasses[suffix] == nil) {
            suffix = constructorAliases[suffix];
        }

        // Разница каналов лежит в классах с другими именами, и мост по суффиксу
        // их не находил: ответ доходил до приложения как ModernTL_*, isKindOfClass
        // не срабатывал, и обновления каналов молча пропадали.
        Class legacyClass = ModernBridgeExplicitClasses()[suffix];

        // В 2018 году актуальные версии конструкторов назывались modern<Имя>
        // (TLUser$modernUser), а одноимённые классы остались древними
        // заглушками — поэтому modern-вариант ищем первым.
        if (legacyClass == nil) {
            NSString *capitalized = [[[suffix substringToIndex:1] uppercaseString] stringByAppendingString:[suffix substringFromIndex:1]];
            legacyClass = legacyClasses[[@"modern" stringByAppendingString:capitalized]];
        }
        if (legacyClass == nil) {
            legacyClass = legacyClasses[suffix];
        }
        // Часть конструкторов приложение держит в классах с суффиксом Meta:
        // конкретного TLDocumentAttribute$documentAttributeSticker нет, есть
        // только ...StickerMeta. Без этой ветки стикер приезжал как
        // ModernTL_*, isKindOfClass не срабатывал — стикеры показывались
        // файлами, а ответ на звонок вообще не узнавался.
        if (legacyClass == nil) {
            legacyClass = legacyClasses[[suffix stringByAppendingString:@"Meta"]];
        }
        if (legacyClass == nil) {
            continue;
        }

        // Пустой набор общих полей — не повод отказываться от моста: у
        // конструкторов вроде contacts.contactsNotModified полей нет вовсе, а без
        // моста приложение получало ModernTL_* и не узнавало ответ.
        NSDictionary *fieldMap = ModernBridgeFieldMap([modernParser class], legacyClass, suffix);

        ModernBridgeParser *bridge = [[ModernBridgeParser alloc] init];
        bridge.modernParser = modernParser;
        bridge.targetClass = legacyClass;
        bridge.fieldMap = fieldMap;
        bridge.postProcess = ModernBridgePostProcessors()[suffix];
        bridge.booleanFlags = ModernBridgeBooleanFlags()[suffix];
        [bridges addObject:bridge];
    }

    TGLog(@"[ModernBridge] мостов к старым классам: %d", (int)bridges.count);
    
    // Точечная диагностика по типам, на которых спотыкается приложение.
    for (NSString *name in @[@"config", @"user", @"dialog", @"message", @"peerUser",
                             @"messages_dialogs", @"updates", @"updates_state",
                             @"updates_difference", @"updateShort", @"chat", @"channel"]) {
        NSString *modernClassName = [@"ModernTL_" stringByAppendingString:name];
        Class modernClass = NSClassFromString(modernClassName);
        NSString *nameCapitalized = [[[name substringToIndex:1] uppercaseString] stringByAppendingString:[name substringFromIndex:1]];
        Class legacyClass = legacyClasses[[@"modern" stringByAppendingString:nameCapitalized]];
        if (legacyClass == nil) {
            legacyClass = legacyClasses[name];
        }
        NSUInteger fields = (modernClass != nil && legacyClass != nil)
            ? ModernBridgeFieldMap(modernClass, legacyClass, name).count : 0;
        TGLog(@"[ModernBridge] %@: современный=%@ старый=%@ полей=%d", name,
              modernClass == nil ? @"нет" : @"есть",
              legacyClass == nil ? @"нет" : NSStringFromClass(legacyClass),
              (int)fields);
    }

    return bridges;
}
