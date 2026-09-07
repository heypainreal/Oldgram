// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
#import "ModernTL.h"
#import <objc/runtime.h>
#import "NSInputStream+TL.h"
#import "NSOutputStream+TL.h"
#import "TLMetaClassStore.h"

@implementation ModernTL_accountDaysTTL
- (int32_t)TLconstructorSignature { return (int32_t)0xb8d0afdf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_accountDaysTTL *obj = [[ModernTL_accountDaysTTL alloc] init];
    obj.days = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.days];
}
@end

@implementation ModernTL_aiComposeTone
- (int32_t)TLconstructorSignature { return (int32_t)0xcff63ea9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_aiComposeTone *obj = [[ModernTL_aiComposeTone alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.slug = [is readString];
    obj.title = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.emoji_id = [is readInt64];
    }
    if (obj.flags & (1 << 4)) {
        obj.prompt = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.installs_count = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.author_id = [is readInt64];
    }
    if (obj.flags & (1 << 5)) {
        obj.example_english = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeString:self.slug == nil ? @"" : self.slug];
    [os writeString:self.title == nil ? @"" : self.title];
    if (self.flags & (1 << 1)) {
        [os writeInt64:self.emoji_id];
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.prompt == nil ? @"" : self.prompt];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.installs_count];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt64:self.author_id];
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.example_english, true);
    }
}
@end

@implementation ModernTL_aiComposeToneDefault
- (int32_t)TLconstructorSignature { return (int32_t)0x9bad6414; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_aiComposeToneDefault *obj = [[ModernTL_aiComposeToneDefault alloc] init];
    obj.tone = [is readString];
    obj.emoji_id = [is readInt64];
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.tone == nil ? @"" : self.tone];
    [os writeInt64:self.emoji_id];
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_aiComposeToneExample
- (int32_t)TLconstructorSignature { return (int32_t)0xf1d628ec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_aiComposeToneExample *obj = [[ModernTL_aiComposeToneExample alloc] init];
    obj.from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.to = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.from, true);
    TLMetaClassStore::serializeObject(os, self.to, true);
}
@end

@implementation ModernTL_attachMenuBot
- (int32_t)TLconstructorSignature { return (int32_t)0xd90d8dfe; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuBot *obj = [[ModernTL_attachMenuBot alloc] init];
    obj.flags = [is readInt32];
    obj.bot_id = [is readInt64];
    obj.short_name = [is readString];
    if (obj.flags & (1 << 3)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.peer_types = items;
        }
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.icons = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.bot_id];
    [os writeString:self.short_name == nil ? @"" : self.short_name];
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.peer_types.count];
            for (id item in self.peer_types) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.icons.count];
        for (id item in self.icons) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_attachMenuBotIcon
- (int32_t)TLconstructorSignature { return (int32_t)0xb2a7386b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuBotIcon *obj = [[ModernTL_attachMenuBotIcon alloc] init];
    obj.flags = [is readInt32];
    obj.name = [is readString];
    obj.icon = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.colors = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.name == nil ? @"" : self.name];
    TLMetaClassStore::serializeObject(os, self.icon, true);
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.colors.count];
            for (id item in self.colors) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_attachMenuBotIconColor
- (int32_t)TLconstructorSignature { return (int32_t)0x4576f3f0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuBotIconColor *obj = [[ModernTL_attachMenuBotIconColor alloc] init];
    obj.name = [is readString];
    obj.color = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.name == nil ? @"" : self.name];
    [os writeInt32:self.color];
}
@end

@implementation ModernTL_attachMenuBots
- (int32_t)TLconstructorSignature { return (int32_t)0x3c4301c0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuBots *obj = [[ModernTL_attachMenuBots alloc] init];
    obj.n_hash = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.bots = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.bots.count];
        for (id item in self.bots) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_attachMenuBotsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xf1d88a5c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuBotsNotModified *obj = [[ModernTL_attachMenuBotsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_attachMenuBotsBot
- (int32_t)TLconstructorSignature { return (int32_t)0x93bf667f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuBotsBot *obj = [[ModernTL_attachMenuBotsBot alloc] init];
    obj.bot = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.bot, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_attachMenuPeerTypeBotPM
- (int32_t)TLconstructorSignature { return (int32_t)0xc32bfa1a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuPeerTypeBotPM *obj = [[ModernTL_attachMenuPeerTypeBotPM alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_attachMenuPeerTypeBroadcast
- (int32_t)TLconstructorSignature { return (int32_t)0x7bfbdefc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuPeerTypeBroadcast *obj = [[ModernTL_attachMenuPeerTypeBroadcast alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_attachMenuPeerTypeChat
- (int32_t)TLconstructorSignature { return (int32_t)0x0509113f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuPeerTypeChat *obj = [[ModernTL_attachMenuPeerTypeChat alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_attachMenuPeerTypePM
- (int32_t)TLconstructorSignature { return (int32_t)0xf146d31f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuPeerTypePM *obj = [[ModernTL_attachMenuPeerTypePM alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_attachMenuPeerTypeSameBotPM
- (int32_t)TLconstructorSignature { return (int32_t)0x7d6be90e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_attachMenuPeerTypeSameBotPM *obj = [[ModernTL_attachMenuPeerTypeSameBotPM alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_auctionBidLevel
- (int32_t)TLconstructorSignature { return (int32_t)0x310240cc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auctionBidLevel *obj = [[ModernTL_auctionBidLevel alloc] init];
    obj.pos = [is readInt32];
    obj.amount = [is readInt64];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.pos];
    [os writeInt64:self.amount];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_authorization
- (int32_t)TLconstructorSignature { return (int32_t)0xad01d61d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_authorization *obj = [[ModernTL_authorization alloc] init];
    obj.flags = [is readInt32];
    obj.n_hash = [is readInt64];
    obj.device_model = [is readString];
    obj.platform = [is readString];
    obj.system_version = [is readString];
    obj.api_id = [is readInt32];
    obj.app_name = [is readString];
    obj.app_version = [is readString];
    obj.date_created = [is readInt32];
    obj.date_active = [is readInt32];
    obj.ip = [is readString];
    obj.country = [is readString];
    obj.region = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_hash];
    [os writeString:self.device_model == nil ? @"" : self.device_model];
    [os writeString:self.platform == nil ? @"" : self.platform];
    [os writeString:self.system_version == nil ? @"" : self.system_version];
    [os writeInt32:self.api_id];
    [os writeString:self.app_name == nil ? @"" : self.app_name];
    [os writeString:self.app_version == nil ? @"" : self.app_version];
    [os writeInt32:self.date_created];
    [os writeInt32:self.date_active];
    [os writeString:self.ip == nil ? @"" : self.ip];
    [os writeString:self.country == nil ? @"" : self.country];
    [os writeString:self.region == nil ? @"" : self.region];
}
@end

@implementation ModernTL_autoDownloadSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xbaa57628; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_autoDownloadSettings *obj = [[ModernTL_autoDownloadSettings alloc] init];
    obj.flags = [is readInt32];
    obj.photo_size_max = [is readInt32];
    obj.video_size_max = [is readInt64];
    obj.file_size_max = [is readInt64];
    obj.video_upload_maxbitrate = [is readInt32];
    obj.small_queue_active_operations_max = [is readInt32];
    obj.large_queue_active_operations_max = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.photo_size_max];
    [os writeInt64:self.video_size_max];
    [os writeInt64:self.file_size_max];
    [os writeInt32:self.video_upload_maxbitrate];
    [os writeInt32:self.small_queue_active_operations_max];
    [os writeInt32:self.large_queue_active_operations_max];
}
@end

@implementation ModernTL_autoSaveException
- (int32_t)TLconstructorSignature { return (int32_t)0x81602d47; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_autoSaveException *obj = [[ModernTL_autoSaveException alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.settings, true);
}
@end

@implementation ModernTL_autoSaveSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xc84834ce; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_autoSaveSettings *obj = [[ModernTL_autoSaveSettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.video_max_size = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        [os writeInt64:self.video_max_size];
    }
}
@end

@implementation ModernTL_availableEffect
- (int32_t)TLconstructorSignature { return (int32_t)0x93c3e27e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_availableEffect *obj = [[ModernTL_availableEffect alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.emoticon = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.static_icon_id = [is readInt64];
    }
    obj.effect_sticker_id = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.effect_animation_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeString:self.emoticon == nil ? @"" : self.emoticon];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.static_icon_id];
    }
    [os writeInt64:self.effect_sticker_id];
    if (self.flags & (1 << 1)) {
        [os writeInt64:self.effect_animation_id];
    }
}
@end

@implementation ModernTL_availableReaction
- (int32_t)TLconstructorSignature { return (int32_t)0xc077ec01; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_availableReaction *obj = [[ModernTL_availableReaction alloc] init];
    obj.flags = [is readInt32];
    obj.reaction = [is readString];
    obj.title = [is readString];
    obj.static_icon = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.appear_animation = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.select_animation = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.activate_animation = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.effect_animation = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 1)) {
        obj.around_animation = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.center_icon = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.reaction == nil ? @"" : self.reaction];
    [os writeString:self.title == nil ? @"" : self.title];
    TLMetaClassStore::serializeObject(os, self.static_icon, true);
    TLMetaClassStore::serializeObject(os, self.appear_animation, true);
    TLMetaClassStore::serializeObject(os, self.select_animation, true);
    TLMetaClassStore::serializeObject(os, self.activate_animation, true);
    TLMetaClassStore::serializeObject(os, self.effect_animation, true);
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.around_animation, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.center_icon, true);
    }
}
@end

@implementation ModernTL_bankCardOpenUrl
- (int32_t)TLconstructorSignature { return (int32_t)0xf568028a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_bankCardOpenUrl *obj = [[ModernTL_bankCardOpenUrl alloc] init];
    obj.url = [is readString];
    obj.name = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeString:self.name == nil ? @"" : self.name];
}
@end

@implementation ModernTL_baseThemeArctic
- (int32_t)TLconstructorSignature { return (int32_t)0x5b11125a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_baseThemeArctic *obj = [[ModernTL_baseThemeArctic alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_baseThemeClassic
- (int32_t)TLconstructorSignature { return (int32_t)0xc3a12462; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_baseThemeClassic *obj = [[ModernTL_baseThemeClassic alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_baseThemeDay
- (int32_t)TLconstructorSignature { return (int32_t)0xfbd81688; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_baseThemeDay *obj = [[ModernTL_baseThemeDay alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_baseThemeNight
- (int32_t)TLconstructorSignature { return (int32_t)0xb7b31ea8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_baseThemeNight *obj = [[ModernTL_baseThemeNight alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_baseThemeTinted
- (int32_t)TLconstructorSignature { return (int32_t)0x6d5f77ee; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_baseThemeTinted *obj = [[ModernTL_baseThemeTinted alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_birthday
- (int32_t)TLconstructorSignature { return (int32_t)0x6c8e1e06; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_birthday *obj = [[ModernTL_birthday alloc] init];
    obj.flags = [is readInt32];
    obj.day = [is readInt32];
    obj.month = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.year = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.day];
    [os writeInt32:self.month];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.year];
    }
}
@end

@implementation ModernTL_boost
- (int32_t)TLconstructorSignature { return (int32_t)0x4b3e14d6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_boost *obj = [[ModernTL_boost alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.user_id = [is readInt64];
    }
    if (obj.flags & (1 << 2)) {
        obj.giveaway_msg_id = [is readInt32];
    }
    obj.date = [is readInt32];
    obj.expires = [is readInt32];
    if (obj.flags & (1 << 4)) {
        obj.used_gift_slug = [is readString];
    }
    if (obj.flags & (1 << 5)) {
        obj.multiplier = [is readInt32];
    }
    if (obj.flags & (1 << 6)) {
        obj.stars = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.user_id];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.giveaway_msg_id];
    }
    [os writeInt32:self.date];
    [os writeInt32:self.expires];
    if (self.flags & (1 << 4)) {
        [os writeString:self.used_gift_slug == nil ? @"" : self.used_gift_slug];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.multiplier];
    }
    if (self.flags & (1 << 6)) {
        [os writeInt64:self.stars];
    }
}
@end

@implementation ModernTL_inputEncryptedChat
- (int32_t)TLconstructorSignature { return (int32_t)0xf141b5e1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputEncryptedChat *obj = [[ModernTL_inputEncryptedChat alloc] init];
    obj.chat_id = [is readInt32];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.chat_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputEncryptedFile
- (int32_t)TLconstructorSignature { return (int32_t)0x5a17b5e5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputEncryptedFile *obj = [[ModernTL_inputEncryptedFile alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputEncryptedFileBigUploaded
- (int32_t)TLconstructorSignature { return (int32_t)0x2dc173c8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputEncryptedFileBigUploaded *obj = [[ModernTL_inputEncryptedFileBigUploaded alloc] init];
    obj.n_id = [is readInt64];
    obj.parts = [is readInt32];
    obj.key_fingerprint = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.parts];
    [os writeInt32:self.key_fingerprint];
}
@end

@implementation ModernTL_inputEncryptedFileEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x1837c364; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputEncryptedFileEmpty *obj = [[ModernTL_inputEncryptedFileEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputEncryptedFileUploaded
- (int32_t)TLconstructorSignature { return (int32_t)0x64bd0306; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputEncryptedFileUploaded *obj = [[ModernTL_inputEncryptedFileUploaded alloc] init];
    obj.n_id = [is readInt64];
    obj.parts = [is readInt32];
    obj.md5_checksum = [is readString];
    obj.key_fingerprint = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.parts];
    [os writeString:self.md5_checksum == nil ? @"" : self.md5_checksum];
    [os writeInt32:self.key_fingerprint];
}
@end

@implementation ModernTL_inputFile
- (int32_t)TLconstructorSignature { return (int32_t)0xf52ff27f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputFile *obj = [[ModernTL_inputFile alloc] init];
    obj.n_id = [is readInt64];
    obj.parts = [is readInt32];
    obj.name = [is readString];
    obj.md5_checksum = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.parts];
    [os writeString:self.name == nil ? @"" : self.name];
    [os writeString:self.md5_checksum == nil ? @"" : self.md5_checksum];
}
@end

@implementation ModernTL_inputFileBig
- (int32_t)TLconstructorSignature { return (int32_t)0xfa4f0bb5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputFileBig *obj = [[ModernTL_inputFileBig alloc] init];
    obj.n_id = [is readInt64];
    obj.parts = [is readInt32];
    obj.name = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.parts];
    [os writeString:self.name == nil ? @"" : self.name];
}
@end

@implementation ModernTL_inputFileStoryDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x62dc8b48; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputFileStoryDocument *obj = [[ModernTL_inputFileStoryDocument alloc] init];
    obj.n_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.n_id, true);
}
@end

@implementation ModernTL_inputDocumentFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xbad07584; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputDocumentFileLocation *obj = [[ModernTL_inputDocumentFileLocation alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.file_reference = [is readBytes];
    obj.thumb_size = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
    [os writeString:self.thumb_size == nil ? @"" : self.thumb_size];
}
@end

@implementation ModernTL_inputEncryptedFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xf5235d55; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputEncryptedFileLocation *obj = [[ModernTL_inputEncryptedFileLocation alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xdfdaabe1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputFileLocation *obj = [[ModernTL_inputFileLocation alloc] init];
    obj.volume_id = [is readInt64];
    obj.local_id = [is readInt32];
    obj.secret = [is readInt64];
    obj.file_reference = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.volume_id];
    [os writeInt32:self.local_id];
    [os writeInt64:self.secret];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
}
@end

@implementation ModernTL_inputGroupCallStream
- (int32_t)TLconstructorSignature { return (int32_t)0x0598a92a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGroupCallStream *obj = [[ModernTL_inputGroupCallStream alloc] init];
    obj.flags = [is readInt32];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.time_ms = [is readInt64];
    obj.scale = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.video_channel = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.video_quality = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.call, true);
    [os writeInt64:self.time_ms];
    [os writeInt32:self.scale];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.video_channel];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.video_quality];
    }
}
@end

@implementation ModernTL_inputPeerPhotoFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0x37257e99; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerPhotoFileLocation *obj = [[ModernTL_inputPeerPhotoFileLocation alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.photo_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:self.photo_id];
}
@end

@implementation ModernTL_inputPhotoFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0x40181ffe; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPhotoFileLocation *obj = [[ModernTL_inputPhotoFileLocation alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.file_reference = [is readBytes];
    obj.thumb_size = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
    [os writeString:self.thumb_size == nil ? @"" : self.thumb_size];
}
@end

@implementation ModernTL_inputPhotoLegacyFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xd83466f3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPhotoLegacyFileLocation *obj = [[ModernTL_inputPhotoLegacyFileLocation alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.file_reference = [is readBytes];
    obj.volume_id = [is readInt64];
    obj.local_id = [is readInt32];
    obj.secret = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
    [os writeInt64:self.volume_id];
    [os writeInt32:self.local_id];
    [os writeInt64:self.secret];
}
@end

@implementation ModernTL_inputSecureFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xcbc7ee28; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSecureFileLocation *obj = [[ModernTL_inputSecureFileLocation alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputStickerSetThumb
- (int32_t)TLconstructorSignature { return (int32_t)0x9d84f3db; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetThumb *obj = [[ModernTL_inputStickerSetThumb alloc] init];
    obj.stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.thumb_version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.stickerset, true);
    [os writeInt32:self.thumb_version];
}
@end

@implementation ModernTL_inputTakeoutFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0x29be5899; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputTakeoutFileLocation *obj = [[ModernTL_inputTakeoutFileLocation alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputFolderPeer
- (int32_t)TLconstructorSignature { return (int32_t)0xfbd2c296; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputFolderPeer *obj = [[ModernTL_inputFolderPeer alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.folder_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.folder_id];
}
@end

@implementation ModernTL_inputGameID
- (int32_t)TLconstructorSignature { return (int32_t)0x032c3e77; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGameID *obj = [[ModernTL_inputGameID alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputGameShortName
- (int32_t)TLconstructorSignature { return (int32_t)0xc331e80a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGameShortName *obj = [[ModernTL_inputGameShortName alloc] init];
    obj.bot_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.short_name = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.bot_id, true);
    [os writeString:self.short_name == nil ? @"" : self.short_name];
}
@end

@implementation ModernTL_inputGeoPoint
- (int32_t)TLconstructorSignature { return (int32_t)0x48222faf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGeoPoint *obj = [[ModernTL_inputGeoPoint alloc] init];
    obj.flags = [is readInt32];
    obj.lat = [is readDouble];
    obj.n_long = [is readDouble];
    if (obj.flags & (1 << 0)) {
        obj.accuracy_radius = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeDouble:self.lat];
    [os writeDouble:self.n_long];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.accuracy_radius];
    }
}
@end

@implementation ModernTL_inputGeoPointEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xe4c123d6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGeoPointEmpty *obj = [[ModernTL_inputGeoPointEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputGroupCall
- (int32_t)TLconstructorSignature { return (int32_t)0xd8aa840f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGroupCall *obj = [[ModernTL_inputGroupCall alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputGroupCallInviteMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x8c10603f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGroupCallInviteMessage *obj = [[ModernTL_inputGroupCallInviteMessage alloc] init];
    obj.msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.msg_id];
}
@end

@implementation ModernTL_inputGroupCallSlug
- (int32_t)TLconstructorSignature { return (int32_t)0xfe06823f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputGroupCallSlug *obj = [[ModernTL_inputGroupCallSlug alloc] init];
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_inputInvoiceBusinessBotTransferStars
- (int32_t)TLconstructorSignature { return (int32_t)0xf4997e42; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceBusinessBotTransferStars *obj = [[ModernTL_inputInvoiceBusinessBotTransferStars alloc] init];
    obj.bot = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.stars = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.bot, true);
    [os writeInt64:self.stars];
}
@end

@implementation ModernTL_inputInvoiceChatInviteSubscription
- (int32_t)TLconstructorSignature { return (int32_t)0x34e793f1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceChatInviteSubscription *obj = [[ModernTL_inputInvoiceChatInviteSubscription alloc] init];
    obj.n_hash = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_hash == nil ? @"" : self.n_hash];
}
@end

@implementation ModernTL_inputInvoiceMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xc5b56859; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceMessage *obj = [[ModernTL_inputInvoiceMessage alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
}
@end

@implementation ModernTL_inputInvoicePremiumAuthCode
- (int32_t)TLconstructorSignature { return (int32_t)0x3e77f614; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoicePremiumAuthCode *obj = [[ModernTL_inputInvoicePremiumAuthCode alloc] init];
    obj.purpose = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.purpose, true);
}
@end

@implementation ModernTL_inputInvoicePremiumGiftCode
- (int32_t)TLconstructorSignature { return (int32_t)0x98986c0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoicePremiumGiftCode *obj = [[ModernTL_inputInvoicePremiumGiftCode alloc] init];
    obj.purpose = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.option = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.purpose, true);
    TLMetaClassStore::serializeObject(os, self.option, true);
}
@end

@implementation ModernTL_inputInvoicePremiumGiftStars
- (int32_t)TLconstructorSignature { return (int32_t)0xdabab2ef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoicePremiumGiftStars *obj = [[ModernTL_inputInvoicePremiumGiftStars alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.months = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.user_id, true);
    [os writeInt32:self.months];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.message, true);
    }
}
@end

@implementation ModernTL_inputInvoiceSlug
- (int32_t)TLconstructorSignature { return (int32_t)0xc326caef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceSlug *obj = [[ModernTL_inputInvoiceSlug alloc] init];
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_inputInvoiceStarGift
- (int32_t)TLconstructorSignature { return (int32_t)0xe8625e92; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStarGift *obj = [[ModernTL_inputInvoiceStarGift alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.gift_id = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:self.gift_id];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.message, true);
    }
}
@end

@implementation ModernTL_inputInvoiceStarGiftAuctionBid
- (int32_t)TLconstructorSignature { return (int32_t)0x1ecafa10; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStarGiftAuctionBid *obj = [[ModernTL_inputInvoiceStarGiftAuctionBid alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.gift_id = [is readInt64];
    obj.bid_amount = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.peer, true);
    }
    [os writeInt64:self.gift_id];
    [os writeInt64:self.bid_amount];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.message, true);
    }
}
@end

@implementation ModernTL_inputInvoiceStarGiftDropOriginalDetails
- (int32_t)TLconstructorSignature { return (int32_t)0x0923d8d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStarGiftDropOriginalDetails *obj = [[ModernTL_inputInvoiceStarGiftDropOriginalDetails alloc] init];
    obj.stargift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.stargift, true);
}
@end

@implementation ModernTL_inputInvoiceStarGiftPrepaidUpgrade
- (int32_t)TLconstructorSignature { return (int32_t)0x9a0b48b8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStarGiftPrepaidUpgrade *obj = [[ModernTL_inputInvoiceStarGiftPrepaidUpgrade alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_hash = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeString:self.n_hash == nil ? @"" : self.n_hash];
}
@end

@implementation ModernTL_inputInvoiceStarGiftResale
- (int32_t)TLconstructorSignature { return (int32_t)0xc39f5324; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStarGiftResale *obj = [[ModernTL_inputInvoiceStarGiftResale alloc] init];
    obj.flags = [is readInt32];
    obj.slug = [is readString];
    obj.to_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.slug == nil ? @"" : self.slug];
    TLMetaClassStore::serializeObject(os, self.to_id, true);
}
@end

@implementation ModernTL_inputInvoiceStarGiftTransfer
- (int32_t)TLconstructorSignature { return (int32_t)0x4a5f5bd9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStarGiftTransfer *obj = [[ModernTL_inputInvoiceStarGiftTransfer alloc] init];
    obj.stargift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.to_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.stargift, true);
    TLMetaClassStore::serializeObject(os, self.to_id, true);
}
@end

@implementation ModernTL_inputInvoiceStarGiftUpgrade
- (int32_t)TLconstructorSignature { return (int32_t)0x4d818d5d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStarGiftUpgrade *obj = [[ModernTL_inputInvoiceStarGiftUpgrade alloc] init];
    obj.flags = [is readInt32];
    obj.stargift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.stargift, true);
}
@end

@implementation ModernTL_inputInvoiceStars
- (int32_t)TLconstructorSignature { return (int32_t)0x65f00ce3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputInvoiceStars *obj = [[ModernTL_inputInvoiceStars alloc] init];
    obj.purpose = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.purpose, true);
}
@end

@implementation ModernTL_inputMediaContact
- (int32_t)TLconstructorSignature { return (int32_t)0xf8ab7dfb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaContact *obj = [[ModernTL_inputMediaContact alloc] init];
    obj.phone_number = [is readString];
    obj.first_name = [is readString];
    obj.last_name = [is readString];
    obj.vcard = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.phone_number == nil ? @"" : self.phone_number];
    [os writeString:self.first_name == nil ? @"" : self.first_name];
    [os writeString:self.last_name == nil ? @"" : self.last_name];
    [os writeString:self.vcard == nil ? @"" : self.vcard];
}
@end

@implementation ModernTL_inputMediaDice
- (int32_t)TLconstructorSignature { return (int32_t)0xe66fbf7b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaDice *obj = [[ModernTL_inputMediaDice alloc] init];
    obj.emoticon = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.emoticon == nil ? @"" : self.emoticon];
}
@end

@implementation ModernTL_inputMediaDocument
- (int32_t)TLconstructorSignature { return (int32_t)0xa8763ab5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaDocument *obj = [[ModernTL_inputMediaDocument alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 3)) {
        obj.video_cover = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 4)) {
        obj.video_timestamp = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.ttl_seconds = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.query = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.n_id, true);
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.video_cover, true);
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.video_timestamp];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.ttl_seconds];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.query == nil ? @"" : self.query];
    }
}
@end

@implementation ModernTL_inputMediaDocumentExternal
- (int32_t)TLconstructorSignature { return (int32_t)0x779600f9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaDocumentExternal *obj = [[ModernTL_inputMediaDocumentExternal alloc] init];
    obj.flags = [is readInt32];
    obj.url = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.ttl_seconds = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.video_cover = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.video_timestamp = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.url == nil ? @"" : self.url];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.ttl_seconds];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.video_cover, true);
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.video_timestamp];
    }
}
@end

@implementation ModernTL_inputMediaEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x9664f57f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaEmpty *obj = [[ModernTL_inputMediaEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMediaGame
- (int32_t)TLconstructorSignature { return (int32_t)0xd33f43f3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaGame *obj = [[ModernTL_inputMediaGame alloc] init];
    obj.n_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.n_id, true);
}
@end

@implementation ModernTL_inputMediaGeoLive
- (int32_t)TLconstructorSignature { return (int32_t)0x971fa843; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaGeoLive *obj = [[ModernTL_inputMediaGeoLive alloc] init];
    obj.flags = [is readInt32];
    obj.geo_point = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 2)) {
        obj.heading = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.period = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.proximity_notification_radius = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.geo_point, true);
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.heading];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.period];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.proximity_notification_radius];
    }
}
@end

@implementation ModernTL_inputMediaGeoPoint
- (int32_t)TLconstructorSignature { return (int32_t)0xf9c44144; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaGeoPoint *obj = [[ModernTL_inputMediaGeoPoint alloc] init];
    obj.geo_point = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo_point, true);
}
@end

@implementation ModernTL_inputMediaInvoice
- (int32_t)TLconstructorSignature { return (int32_t)0x405fef0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaInvoice *obj = [[ModernTL_inputMediaInvoice alloc] init];
    obj.flags = [is readInt32];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.invoice = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.payload = [is readBytes];
    if (obj.flags & (1 << 3)) {
        obj.provider = [is readString];
    }
    obj.provider_data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 1)) {
        obj.start_param = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.extended_media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    TLMetaClassStore::serializeObject(os, self.invoice, true);
    [os writeBytes:self.payload == nil ? [NSData data] : self.payload];
    if (self.flags & (1 << 3)) {
        [os writeString:self.provider == nil ? @"" : self.provider];
    }
    TLMetaClassStore::serializeObject(os, self.provider_data, true);
    if (self.flags & (1 << 1)) {
        [os writeString:self.start_param == nil ? @"" : self.start_param];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.extended_media, true);
    }
}
@end

@implementation ModernTL_inputMediaPaidMedia
- (int32_t)TLconstructorSignature { return (int32_t)0xc4103386; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaPaidMedia *obj = [[ModernTL_inputMediaPaidMedia alloc] init];
    obj.flags = [is readInt32];
    obj.stars_amount = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.extended_media = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.payload = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.stars_amount];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.extended_media.count];
        for (id item in self.extended_media) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.payload == nil ? @"" : self.payload];
    }
}
@end

@implementation ModernTL_inputMediaPhoto
- (int32_t)TLconstructorSignature { return (int32_t)0xe3af4434; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaPhoto *obj = [[ModernTL_inputMediaPhoto alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.ttl_seconds = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.video = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.n_id, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.ttl_seconds];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.video, true);
    }
}
@end

@implementation ModernTL_inputMediaPhotoExternal
- (int32_t)TLconstructorSignature { return (int32_t)0xe5bbfe1a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaPhotoExternal *obj = [[ModernTL_inputMediaPhotoExternal alloc] init];
    obj.flags = [is readInt32];
    obj.url = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.ttl_seconds = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.url == nil ? @"" : self.url];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.ttl_seconds];
    }
}
@end

@implementation ModernTL_inputMediaPoll
- (int32_t)TLconstructorSignature { return (int32_t)0x883a4108; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaPoll *obj = [[ModernTL_inputMediaPoll alloc] init];
    obj.flags = [is readInt32];
    obj.poll = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt32])];
            }
            obj.correct_answers = items;
        }
    }
    if (obj.flags & (1 << 3)) {
        obj.attached_media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.solution = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.solution_entities = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        obj.solution_media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.poll, true);
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.correct_answers.count];
            for (id item in self.correct_answers) {
                [os writeInt32:[item intValue]];
            }
        }
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.attached_media, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.solution == nil ? @"" : self.solution];
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.solution_entities.count];
            for (id item in self.solution_entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.solution_media, true);
    }
}
@end

@implementation ModernTL_inputMediaStakeDice
- (int32_t)TLconstructorSignature { return (int32_t)0xf3a9244a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaStakeDice *obj = [[ModernTL_inputMediaStakeDice alloc] init];
    obj.game_hash = [is readString];
    obj.ton_amount = [is readInt64];
    obj.client_seed = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.game_hash == nil ? @"" : self.game_hash];
    [os writeInt64:self.ton_amount];
    [os writeBytes:self.client_seed == nil ? [NSData data] : self.client_seed];
}
@end

@implementation ModernTL_inputMediaStory
- (int32_t)TLconstructorSignature { return (int32_t)0x89fdd778; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaStory *obj = [[ModernTL_inputMediaStory alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.n_id];
}
@end

@implementation ModernTL_inputMediaTodo
- (int32_t)TLconstructorSignature { return (int32_t)0x9fc55fde; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaTodo *obj = [[ModernTL_inputMediaTodo alloc] init];
    obj.todo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.todo, true);
}
@end

@implementation ModernTL_inputMediaUploadedDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x037c9330; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaUploadedDocument *obj = [[ModernTL_inputMediaUploadedDocument alloc] init];
    obj.flags = [is readInt32];
    obj.file = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 2)) {
        obj.thumb = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.mime_type = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.attributes = items;
    }
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.stickers = items;
        }
    }
    if (obj.flags & (1 << 6)) {
        obj.video_cover = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
        obj.video_timestamp = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.ttl_seconds = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.file, true);
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.thumb, true);
    }
    [os writeString:self.mime_type == nil ? @"" : self.mime_type];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.attributes.count];
        for (id item in self.attributes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.stickers.count];
            for (id item in self.stickers) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 6)) {
        TLMetaClassStore::serializeObject(os, self.video_cover, true);
    }
    if (self.flags & (1 << 7)) {
        [os writeInt32:self.video_timestamp];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.ttl_seconds];
    }
}
@end

@implementation ModernTL_inputMediaUploadedPhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x7d8375da; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaUploadedPhoto *obj = [[ModernTL_inputMediaUploadedPhoto alloc] init];
    obj.flags = [is readInt32];
    obj.file = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.stickers = items;
        }
    }
    if (obj.flags & (1 << 1)) {
        obj.ttl_seconds = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.video = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.file, true);
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.stickers.count];
            for (id item in self.stickers) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.ttl_seconds];
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.video, true);
    }
}
@end

@implementation ModernTL_inputMediaVenue
- (int32_t)TLconstructorSignature { return (int32_t)0xc13d1c11; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaVenue *obj = [[ModernTL_inputMediaVenue alloc] init];
    obj.geo_point = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.title = [is readString];
    obj.address = [is readString];
    obj.provider = [is readString];
    obj.venue_id = [is readString];
    obj.venue_type = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo_point, true);
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.address == nil ? @"" : self.address];
    [os writeString:self.provider == nil ? @"" : self.provider];
    [os writeString:self.venue_id == nil ? @"" : self.venue_id];
    [os writeString:self.venue_type == nil ? @"" : self.venue_type];
}
@end

@implementation ModernTL_inputMediaWebPage
- (int32_t)TLconstructorSignature { return (int32_t)0xc21b8849; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaWebPage *obj = [[ModernTL_inputMediaWebPage alloc] init];
    obj.flags = [is readInt32];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_inputMessageCallbackQuery
- (int32_t)TLconstructorSignature { return (int32_t)0xacfa1a7e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessageCallbackQuery *obj = [[ModernTL_inputMessageCallbackQuery alloc] init];
    obj.n_id = [is readInt32];
    obj.query_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
    [os writeInt64:self.query_id];
}
@end

@implementation ModernTL_inputMessageID
- (int32_t)TLconstructorSignature { return (int32_t)0xa676a322; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessageID *obj = [[ModernTL_inputMessageID alloc] init];
    obj.n_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
}
@end

@implementation ModernTL_inputMessagePinned
- (int32_t)TLconstructorSignature { return (int32_t)0x86872538; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagePinned *obj = [[ModernTL_inputMessagePinned alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessageReplyTo
- (int32_t)TLconstructorSignature { return (int32_t)0xbad88395; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessageReplyTo *obj = [[ModernTL_inputMessageReplyTo alloc] init];
    obj.n_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
}
@end

@implementation ModernTL_inputMessageReadMetric
- (int32_t)TLconstructorSignature { return (int32_t)0x402b4495; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessageReadMetric *obj = [[ModernTL_inputMessageReadMetric alloc] init];
    obj.msg_id = [is readInt32];
    obj.view_id = [is readInt64];
    obj.time_in_view_ms = [is readInt32];
    obj.active_time_in_view_ms = [is readInt32];
    obj.height_to_viewport_ratio_permille = [is readInt32];
    obj.seen_range_ratio_permille = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.msg_id];
    [os writeInt64:self.view_id];
    [os writeInt32:self.time_in_view_ms];
    [os writeInt32:self.active_time_in_view_ms];
    [os writeInt32:self.height_to_viewport_ratio_permille];
    [os writeInt32:self.seen_range_ratio_permille];
}
@end

@implementation ModernTL_inputNotifyBroadcasts
- (int32_t)TLconstructorSignature { return (int32_t)0xb1db7c7e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputNotifyBroadcasts *obj = [[ModernTL_inputNotifyBroadcasts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputNotifyChats
- (int32_t)TLconstructorSignature { return (int32_t)0x4a95e84e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputNotifyChats *obj = [[ModernTL_inputNotifyChats alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputNotifyCommunity
- (int32_t)TLconstructorSignature { return (int32_t)0x27bb1adc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputNotifyCommunity *obj = [[ModernTL_inputNotifyCommunity alloc] init];
    obj.community = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.community, true);
}
@end

@implementation ModernTL_inputNotifyForumTopic
- (int32_t)TLconstructorSignature { return (int32_t)0x5c467992; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputNotifyForumTopic *obj = [[ModernTL_inputNotifyForumTopic alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.top_msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.top_msg_id];
}
@end

@implementation ModernTL_inputNotifyPeer
- (int32_t)TLconstructorSignature { return (int32_t)0xb8bc5b0c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputNotifyPeer *obj = [[ModernTL_inputNotifyPeer alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_inputNotifyUsers
- (int32_t)TLconstructorSignature { return (int32_t)0x193b4417; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputNotifyUsers *obj = [[ModernTL_inputNotifyUsers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPasskeyCredentialFirebasePNV
- (int32_t)TLconstructorSignature { return (int32_t)0x5b1ccb28; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPasskeyCredentialFirebasePNV *obj = [[ModernTL_inputPasskeyCredentialFirebasePNV alloc] init];
    obj.pnv_token = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.pnv_token == nil ? @"" : self.pnv_token];
}
@end

@implementation ModernTL_inputPasskeyCredentialPublicKey
- (int32_t)TLconstructorSignature { return (int32_t)0x3c27b78f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPasskeyCredentialPublicKey *obj = [[ModernTL_inputPasskeyCredentialPublicKey alloc] init];
    obj.n_id = [is readString];
    obj.raw_id = [is readString];
    obj.response = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeString:self.raw_id == nil ? @"" : self.raw_id];
    TLMetaClassStore::serializeObject(os, self.response, true);
}
@end

@implementation ModernTL_inputPasskeyResponseLogin
- (int32_t)TLconstructorSignature { return (int32_t)0xc31fc14a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPasskeyResponseLogin *obj = [[ModernTL_inputPasskeyResponseLogin alloc] init];
    obj.client_data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.authenticator_data = [is readBytes];
    obj.signature = [is readBytes];
    obj.user_handle = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.client_data, true);
    [os writeBytes:self.authenticator_data == nil ? [NSData data] : self.authenticator_data];
    [os writeBytes:self.signature == nil ? [NSData data] : self.signature];
    [os writeString:self.user_handle == nil ? @"" : self.user_handle];
}
@end

@implementation ModernTL_inputPasskeyResponseRegister
- (int32_t)TLconstructorSignature { return (int32_t)0x3e63935c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPasskeyResponseRegister *obj = [[ModernTL_inputPasskeyResponseRegister alloc] init];
    obj.client_data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.attestation_data = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.client_data, true);
    [os writeBytes:self.attestation_data == nil ? [NSData data] : self.attestation_data];
}
@end

@implementation ModernTL_inputPaymentCredentials
- (int32_t)TLconstructorSignature { return (int32_t)0x3417d728; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPaymentCredentials *obj = [[ModernTL_inputPaymentCredentials alloc] init];
    obj.flags = [is readInt32];
    obj.data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.data, true);
}
@end

@implementation ModernTL_inputPaymentCredentialsApplePay
- (int32_t)TLconstructorSignature { return (int32_t)0x0aa1c39f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPaymentCredentialsApplePay *obj = [[ModernTL_inputPaymentCredentialsApplePay alloc] init];
    obj.payment_data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.payment_data, true);
}
@end

@implementation ModernTL_inputPaymentCredentialsGooglePay
- (int32_t)TLconstructorSignature { return (int32_t)0x8ac32801; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPaymentCredentialsGooglePay *obj = [[ModernTL_inputPaymentCredentialsGooglePay alloc] init];
    obj.payment_token = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.payment_token, true);
}
@end

@implementation ModernTL_inputPaymentCredentialsSaved
- (int32_t)TLconstructorSignature { return (int32_t)0xc10eb2cf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPaymentCredentialsSaved *obj = [[ModernTL_inputPaymentCredentialsSaved alloc] init];
    obj.n_id = [is readString];
    obj.tmp_password = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeBytes:self.tmp_password == nil ? [NSData data] : self.tmp_password];
}
@end

@implementation ModernTL_inputPeerChannel
- (int32_t)TLconstructorSignature { return (int32_t)0x27bcbbfc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerChannel *obj = [[ModernTL_inputPeerChannel alloc] init];
    obj.channel_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputPeerChannelFromMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xbd2a0840; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerChannelFromMessage *obj = [[ModernTL_inputPeerChannelFromMessage alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    obj.channel_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    [os writeInt64:self.channel_id];
}
@end

@implementation ModernTL_inputPeerChat
- (int32_t)TLconstructorSignature { return (int32_t)0x35a95cb9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerChat *obj = [[ModernTL_inputPeerChat alloc] init];
    obj.chat_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
}
@end

@implementation ModernTL_inputPeerEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x7f3b18ea; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerEmpty *obj = [[ModernTL_inputPeerEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPeerSelf
- (int32_t)TLconstructorSignature { return (int32_t)0x7da07ec9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerSelf *obj = [[ModernTL_inputPeerSelf alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPeerUser
- (int32_t)TLconstructorSignature { return (int32_t)0xdde8a54c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerUser *obj = [[ModernTL_inputPeerUser alloc] init];
    obj.user_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputPeerUserFromMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xa87b0a1c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerUserFromMessage *obj = [[ModernTL_inputPeerUserFromMessage alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_inputPeerNotifySettings
- (int32_t)TLconstructorSignature { return (int32_t)0xcacb6ae2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerNotifySettings *obj = [[ModernTL_inputPeerNotifySettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.show_previews = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    if (obj.flags & (1 << 1)) {
        obj.silent = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    if (obj.flags & (1 << 2)) {
        obj.mute_until = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 6)) {
        obj.stories_muted = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    if (obj.flags & (1 << 7)) {
        obj.stories_hide_sender = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    if (obj.flags & (1 << 8)) {
        obj.stories_sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.show_previews ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.silent ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.mute_until];
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.sound, true);
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.stories_muted ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    if (self.flags & (1 << 7)) {
        [os writeInt32:self.stories_hide_sender ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.stories_sound, true);
    }
}
@end

@implementation ModernTL_inputPhoneCall
- (int32_t)TLconstructorSignature { return (int32_t)0x1e36fded; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPhoneCall *obj = [[ModernTL_inputPhoneCall alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputPhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x3bb3b94a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPhoto *obj = [[ModernTL_inputPhoto alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.file_reference = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
}
@end

@implementation ModernTL_inputPhotoEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x1cd7bf0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPhotoEmpty *obj = [[ModernTL_inputPhotoEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyAbout
- (int32_t)TLconstructorSignature { return (int32_t)0x3823cc40; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyAbout *obj = [[ModernTL_inputPrivacyKeyAbout alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyAddedByPhone
- (int32_t)TLconstructorSignature { return (int32_t)0xd1219bdd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyAddedByPhone *obj = [[ModernTL_inputPrivacyKeyAddedByPhone alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyBirthday
- (int32_t)TLconstructorSignature { return (int32_t)0xd65a11cc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyBirthday *obj = [[ModernTL_inputPrivacyKeyBirthday alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyChatInvite
- (int32_t)TLconstructorSignature { return (int32_t)0xbdfb0426; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyChatInvite *obj = [[ModernTL_inputPrivacyKeyChatInvite alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyForwards
- (int32_t)TLconstructorSignature { return (int32_t)0xa4dd4c08; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyForwards *obj = [[ModernTL_inputPrivacyKeyForwards alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyNoPaidMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xbdc597b4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyNoPaidMessages *obj = [[ModernTL_inputPrivacyKeyNoPaidMessages alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyPhoneCall
- (int32_t)TLconstructorSignature { return (int32_t)0xfabadc5f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyPhoneCall *obj = [[ModernTL_inputPrivacyKeyPhoneCall alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyPhoneNumber
- (int32_t)TLconstructorSignature { return (int32_t)0x0352dafa; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyPhoneNumber *obj = [[ModernTL_inputPrivacyKeyPhoneNumber alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyPhoneP2P
- (int32_t)TLconstructorSignature { return (int32_t)0xdb9e70d2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyPhoneP2P *obj = [[ModernTL_inputPrivacyKeyPhoneP2P alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyProfilePhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x5719bacc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyProfilePhoto *obj = [[ModernTL_inputPrivacyKeyProfilePhoto alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeySavedMusic
- (int32_t)TLconstructorSignature { return (int32_t)0x4dbe9226; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeySavedMusic *obj = [[ModernTL_inputPrivacyKeySavedMusic alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyStarGiftsAutoSave
- (int32_t)TLconstructorSignature { return (int32_t)0xe1732341; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyStarGiftsAutoSave *obj = [[ModernTL_inputPrivacyKeyStarGiftsAutoSave alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyStatusTimestamp
- (int32_t)TLconstructorSignature { return (int32_t)0x4f96cb18; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyStatusTimestamp *obj = [[ModernTL_inputPrivacyKeyStatusTimestamp alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyKeyVoiceMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xaee69d68; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyKeyVoiceMessages *obj = [[ModernTL_inputPrivacyKeyVoiceMessages alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueAllowAll
- (int32_t)TLconstructorSignature { return (int32_t)0x184b35ce; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueAllowAll *obj = [[ModernTL_inputPrivacyValueAllowAll alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueAllowBots
- (int32_t)TLconstructorSignature { return (int32_t)0x5a4fcce5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueAllowBots *obj = [[ModernTL_inputPrivacyValueAllowBots alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueAllowChatParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0x840649cf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueAllowChatParticipants *obj = [[ModernTL_inputPrivacyValueAllowChatParticipants alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.chats = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_inputPrivacyValueAllowCloseFriends
- (int32_t)TLconstructorSignature { return (int32_t)0x2f453e49; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueAllowCloseFriends *obj = [[ModernTL_inputPrivacyValueAllowCloseFriends alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueAllowContacts
- (int32_t)TLconstructorSignature { return (int32_t)0x0d09e07b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueAllowContacts *obj = [[ModernTL_inputPrivacyValueAllowContacts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueAllowPremium
- (int32_t)TLconstructorSignature { return (int32_t)0x77cdc9f1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueAllowPremium *obj = [[ModernTL_inputPrivacyValueAllowPremium alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueAllowUsers
- (int32_t)TLconstructorSignature { return (int32_t)0x131cc67f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueAllowUsers *obj = [[ModernTL_inputPrivacyValueAllowUsers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_inputPrivacyValueDisallowAll
- (int32_t)TLconstructorSignature { return (int32_t)0xd66b66c9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueDisallowAll *obj = [[ModernTL_inputPrivacyValueDisallowAll alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueDisallowBots
- (int32_t)TLconstructorSignature { return (int32_t)0xc4e57915; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueDisallowBots *obj = [[ModernTL_inputPrivacyValueDisallowBots alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueDisallowChatParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0xe94f0f86; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueDisallowChatParticipants *obj = [[ModernTL_inputPrivacyValueDisallowChatParticipants alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.chats = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_inputPrivacyValueDisallowContacts
- (int32_t)TLconstructorSignature { return (int32_t)0x0ba52007; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueDisallowContacts *obj = [[ModernTL_inputPrivacyValueDisallowContacts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputPrivacyValueDisallowUsers
- (int32_t)TLconstructorSignature { return (int32_t)0x90110467; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPrivacyValueDisallowUsers *obj = [[ModernTL_inputPrivacyValueDisallowUsers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_inputQuickReplyShortcut
- (int32_t)TLconstructorSignature { return (int32_t)0x24596d41; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputQuickReplyShortcut *obj = [[ModernTL_inputQuickReplyShortcut alloc] init];
    obj.shortcut = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.shortcut == nil ? @"" : self.shortcut];
}
@end

@implementation ModernTL_inputQuickReplyShortcutId
- (int32_t)TLconstructorSignature { return (int32_t)0x01190cf1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputQuickReplyShortcutId *obj = [[ModernTL_inputQuickReplyShortcutId alloc] init];
    obj.shortcut_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.shortcut_id];
}
@end

@implementation ModernTL_inputReplyToEphemeralMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x4119b95e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputReplyToEphemeralMessage *obj = [[ModernTL_inputReplyToEphemeralMessage alloc] init];
    obj.n_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
}
@end

@implementation ModernTL_inputReplyToMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x3bd4b7c2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputReplyToMessage *obj = [[ModernTL_inputReplyToMessage alloc] init];
    obj.flags = [is readInt32];
    obj.reply_to_msg_id = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.top_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.reply_to_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.quote_text = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.quote_entities = items;
        }
    }
    if (obj.flags & (1 << 4)) {
        obj.quote_offset = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.monoforum_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 6)) {
        obj.todo_item_id = [is readInt32];
    }
    if (obj.flags & (1 << 7)) {
        obj.poll_option = [is readBytes];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.reply_to_msg_id];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.top_msg_id];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.reply_to_peer_id, true);
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.quote_text == nil ? @"" : self.quote_text];
    }
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.quote_entities.count];
            for (id item in self.quote_entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.quote_offset];
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.monoforum_peer_id, true);
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.todo_item_id];
    }
    if (self.flags & (1 << 7)) {
        [os writeBytes:self.poll_option == nil ? [NSData data] : self.poll_option];
    }
}
@end

@implementation ModernTL_inputReplyToMonoForum
- (int32_t)TLconstructorSignature { return (int32_t)0x69d66c45; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputReplyToMonoForum *obj = [[ModernTL_inputReplyToMonoForum alloc] init];
    obj.monoforum_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.monoforum_peer_id, true);
}
@end

@implementation ModernTL_inputReplyToStory
- (int32_t)TLconstructorSignature { return (int32_t)0x5881323a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputReplyToStory *obj = [[ModernTL_inputReplyToStory alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.story_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.story_id];
}
@end

@implementation ModernTL_inputRichFileDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x83281dbd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputRichFileDocument *obj = [[ModernTL_inputRichFileDocument alloc] init];
    obj.n_id = [is readString];
    obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    TLMetaClassStore::serializeObject(os, self.document, true);
}
@end

@implementation ModernTL_inputRichFilePhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x9b00622b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputRichFilePhoto *obj = [[ModernTL_inputRichFilePhoto alloc] init];
    obj.n_id = [is readString];
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    TLMetaClassStore::serializeObject(os, self.photo, true);
}
@end

@implementation ModernTL_inputRichMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xe4c449fc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputRichMessage *obj = [[ModernTL_inputRichMessage alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.blocks = items;
    }
    if (obj.flags & (1 << 2)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.photos = items;
        }
    }
    if (obj.flags & (1 << 3)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.documents = items;
        }
    }
    if (obj.flags & (1 << 4)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.users = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocks.count];
        for (id item in self.blocks) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.photos.count];
            for (id item in self.photos) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.documents.count];
            for (id item in self.documents) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 4)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.users.count];
            for (id item in self.users) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_inputRichMessageHTML
- (int32_t)TLconstructorSignature { return (int32_t)0xdacb836a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputRichMessageHTML *obj = [[ModernTL_inputRichMessageHTML alloc] init];
    obj.flags = [is readInt32];
    obj.html = [is readString];
    if (obj.flags & (1 << 2)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.files = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.html == nil ? @"" : self.html];
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.files.count];
            for (id item in self.files) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_inputRichMessageMarkdown
- (int32_t)TLconstructorSignature { return (int32_t)0x004b572c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputRichMessageMarkdown *obj = [[ModernTL_inputRichMessageMarkdown alloc] init];
    obj.flags = [is readInt32];
    obj.markdown = [is readString];
    if (obj.flags & (1 << 2)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.files = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.markdown == nil ? @"" : self.markdown];
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.files.count];
            for (id item in self.files) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_inputSavedStarGiftChat
- (int32_t)TLconstructorSignature { return (int32_t)0xf101aa7f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSavedStarGiftChat *obj = [[ModernTL_inputSavedStarGiftChat alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.saved_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:self.saved_id];
}
@end

@implementation ModernTL_inputSavedStarGiftSlug
- (int32_t)TLconstructorSignature { return (int32_t)0x2085c238; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSavedStarGiftSlug *obj = [[ModernTL_inputSavedStarGiftSlug alloc] init];
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_inputSavedStarGiftUser
- (int32_t)TLconstructorSignature { return (int32_t)0x69279795; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSavedStarGiftUser *obj = [[ModernTL_inputSavedStarGiftUser alloc] init];
    obj.msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.msg_id];
}
@end

@implementation ModernTL_inputSecureFile
- (int32_t)TLconstructorSignature { return (int32_t)0x5367e5be; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSecureFile *obj = [[ModernTL_inputSecureFile alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputSecureFileUploaded
- (int32_t)TLconstructorSignature { return (int32_t)0x3334b0f0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSecureFileUploaded *obj = [[ModernTL_inputSecureFileUploaded alloc] init];
    obj.n_id = [is readInt64];
    obj.parts = [is readInt32];
    obj.md5_checksum = [is readString];
    obj.file_hash = [is readBytes];
    obj.secret = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.parts];
    [os writeString:self.md5_checksum == nil ? @"" : self.md5_checksum];
    [os writeBytes:self.file_hash == nil ? [NSData data] : self.file_hash];
    [os writeBytes:self.secret == nil ? [NSData data] : self.secret];
}
@end

@implementation ModernTL_inputSecureValue
- (int32_t)TLconstructorSignature { return (int32_t)0xdb21d0a7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSecureValue *obj = [[ModernTL_inputSecureValue alloc] init];
    obj.flags = [is readInt32];
    obj.type = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.front_side = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.reverse_side = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.selfie = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 6)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.translation = items;
        }
    }
    if (obj.flags & (1 << 4)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.files = items;
        }
    }
    if (obj.flags & (1 << 5)) {
        obj.plain_data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.type, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.data, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.front_side, true);
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reverse_side, true);
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.selfie, true);
    }
    if (self.flags & (1 << 6)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.translation.count];
            for (id item in self.translation) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 4)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.files.count];
            for (id item in self.files) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.plain_data, true);
    }
}
@end

@implementation ModernTL_inputSingleMedia
- (int32_t)TLconstructorSignature { return (int32_t)0x1cc6e91f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputSingleMedia *obj = [[ModernTL_inputSingleMedia alloc] init];
    obj.flags = [is readInt32];
    obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.random_id = [is readInt64];
    obj.message = [is readString];
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.entities = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.media, true);
    [os writeInt64:self.random_id];
    [os writeString:self.message == nil ? @"" : self.message];
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_inputStarGiftAuction
- (int32_t)TLconstructorSignature { return (int32_t)0x02e16c98; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStarGiftAuction *obj = [[ModernTL_inputStarGiftAuction alloc] init];
    obj.gift_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.gift_id];
}
@end

@implementation ModernTL_inputStarGiftAuctionSlug
- (int32_t)TLconstructorSignature { return (int32_t)0x7ab58308; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStarGiftAuctionSlug *obj = [[ModernTL_inputStarGiftAuctionSlug alloc] init];
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_inputStarsTransaction
- (int32_t)TLconstructorSignature { return (int32_t)0x206ae6d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStarsTransaction *obj = [[ModernTL_inputStarsTransaction alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.n_id == nil ? @"" : self.n_id];
}
@end

@implementation ModernTL_inputStickerSetAnimatedEmoji
- (int32_t)TLconstructorSignature { return (int32_t)0x028703c8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetAnimatedEmoji *obj = [[ModernTL_inputStickerSetAnimatedEmoji alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetAnimatedEmojiAnimations
- (int32_t)TLconstructorSignature { return (int32_t)0x0cde3739; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetAnimatedEmojiAnimations *obj = [[ModernTL_inputStickerSetAnimatedEmojiAnimations alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetDice
- (int32_t)TLconstructorSignature { return (int32_t)0xe67f520e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetDice *obj = [[ModernTL_inputStickerSetDice alloc] init];
    obj.emoticon = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.emoticon == nil ? @"" : self.emoticon];
}
@end

@implementation ModernTL_inputStickerSetEmojiChannelDefaultStatuses
- (int32_t)TLconstructorSignature { return (int32_t)0x49748553; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetEmojiChannelDefaultStatuses *obj = [[ModernTL_inputStickerSetEmojiChannelDefaultStatuses alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetEmojiDefaultStatuses
- (int32_t)TLconstructorSignature { return (int32_t)0x29d0f5ee; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetEmojiDefaultStatuses *obj = [[ModernTL_inputStickerSetEmojiDefaultStatuses alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetEmojiDefaultTopicIcons
- (int32_t)TLconstructorSignature { return (int32_t)0x44c1f8e9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetEmojiDefaultTopicIcons *obj = [[ModernTL_inputStickerSetEmojiDefaultTopicIcons alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetEmojiGenericAnimations
- (int32_t)TLconstructorSignature { return (int32_t)0x04c4d4ce; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetEmojiGenericAnimations *obj = [[ModernTL_inputStickerSetEmojiGenericAnimations alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xffb62b95; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetEmpty *obj = [[ModernTL_inputStickerSetEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetID
- (int32_t)TLconstructorSignature { return (int32_t)0x9de7a269; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetID *obj = [[ModernTL_inputStickerSetID alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputStickerSetPremiumGifts
- (int32_t)TLconstructorSignature { return (int32_t)0xc88b3b02; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetPremiumGifts *obj = [[ModernTL_inputStickerSetPremiumGifts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetShortName
- (int32_t)TLconstructorSignature { return (int32_t)0x861cc8a0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetShortName *obj = [[ModernTL_inputStickerSetShortName alloc] init];
    obj.short_name = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.short_name == nil ? @"" : self.short_name];
}
@end

@implementation ModernTL_inputStickerSetTonGifts
- (int32_t)TLconstructorSignature { return (int32_t)0x1cf671a0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetTonGifts *obj = [[ModernTL_inputStickerSetTonGifts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputStickerSetItem
- (int32_t)TLconstructorSignature { return (int32_t)0x32da9e9c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickerSetItem *obj = [[ModernTL_inputStickerSetItem alloc] init];
    obj.flags = [is readInt32];
    obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.emoji = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.mask_coords = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.keywords = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.document, true);
    [os writeString:self.emoji == nil ? @"" : self.emoji];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.mask_coords, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.keywords == nil ? @"" : self.keywords];
    }
}
@end

@implementation ModernTL_inputStickeredMediaDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x0438865b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickeredMediaDocument *obj = [[ModernTL_inputStickeredMediaDocument alloc] init];
    obj.n_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.n_id, true);
}
@end

@implementation ModernTL_inputStickeredMediaPhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x4a992157; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStickeredMediaPhoto *obj = [[ModernTL_inputStickeredMediaPhoto alloc] init];
    obj.n_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.n_id, true);
}
@end

@implementation ModernTL_inputStorePaymentAuthCode
- (int32_t)TLconstructorSignature { return (int32_t)0x3fc18057; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentAuthCode *obj = [[ModernTL_inputStorePaymentAuthCode alloc] init];
    obj.flags = [is readInt32];
    obj.phone_number = [is readString];
    obj.phone_code_hash = [is readString];
    obj.premium_days = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.phone_number == nil ? @"" : self.phone_number];
    [os writeString:self.phone_code_hash == nil ? @"" : self.phone_code_hash];
    [os writeInt32:self.premium_days];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
}
@end

@implementation ModernTL_inputStorePaymentGiftPremium
- (int32_t)TLconstructorSignature { return (int32_t)0x616f7fe8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentGiftPremium *obj = [[ModernTL_inputStorePaymentGiftPremium alloc] init];
    obj.user_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.user_id, true);
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
}
@end

@implementation ModernTL_inputStorePaymentPremiumGiftCode
- (int32_t)TLconstructorSignature { return (int32_t)0xfb790393; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentPremiumGiftCode *obj = [[ModernTL_inputStorePaymentPremiumGiftCode alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.boost_peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.boost_peer, true);
    }
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.message, true);
    }
}
@end

@implementation ModernTL_inputStorePaymentPremiumGiveaway
- (int32_t)TLconstructorSignature { return (int32_t)0x160544ca; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentPremiumGiveaway *obj = [[ModernTL_inputStorePaymentPremiumGiveaway alloc] init];
    obj.flags = [is readInt32];
    obj.boost_peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 1)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.additional_peers = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                NSString *item = [is readString];
                [items addObject:item == nil ? @"" : item];
            }
            obj.countries_iso2 = items;
        }
    }
    if (obj.flags & (1 << 4)) {
        obj.prize_description = [is readString];
    }
    obj.random_id = [is readInt64];
    obj.until_date = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.boost_peer, true);
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.additional_peers.count];
            for (id item in self.additional_peers) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.countries_iso2.count];
            for (id item in self.countries_iso2) {
                [os writeString:item];
            }
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.prize_description == nil ? @"" : self.prize_description];
    }
    [os writeInt64:self.random_id];
    [os writeInt32:self.until_date];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
}
@end

@implementation ModernTL_inputStorePaymentPremiumSubscription
- (int32_t)TLconstructorSignature { return (int32_t)0xa6751e66; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentPremiumSubscription *obj = [[ModernTL_inputStorePaymentPremiumSubscription alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_inputStorePaymentStarsGift
- (int32_t)TLconstructorSignature { return (int32_t)0x1d741ef7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentStarsGift *obj = [[ModernTL_inputStorePaymentStarsGift alloc] init];
    obj.user_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.stars = [is readInt64];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.user_id, true);
    [os writeInt64:self.stars];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
}
@end

@implementation ModernTL_inputStorePaymentStarsGiveaway
- (int32_t)TLconstructorSignature { return (int32_t)0x751f08fa; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentStarsGiveaway *obj = [[ModernTL_inputStorePaymentStarsGiveaway alloc] init];
    obj.flags = [is readInt32];
    obj.stars = [is readInt64];
    obj.boost_peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 1)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.additional_peers = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                NSString *item = [is readString];
                [items addObject:item == nil ? @"" : item];
            }
            obj.countries_iso2 = items;
        }
    }
    if (obj.flags & (1 << 4)) {
        obj.prize_description = [is readString];
    }
    obj.random_id = [is readInt64];
    obj.until_date = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    obj.users = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.stars];
    TLMetaClassStore::serializeObject(os, self.boost_peer, true);
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.additional_peers.count];
            for (id item in self.additional_peers) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.countries_iso2.count];
            for (id item in self.countries_iso2) {
                [os writeString:item];
            }
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.prize_description == nil ? @"" : self.prize_description];
    }
    [os writeInt64:self.random_id];
    [os writeInt32:self.until_date];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    [os writeInt32:self.users];
}
@end

@implementation ModernTL_inputStorePaymentStarsTopup
- (int32_t)TLconstructorSignature { return (int32_t)0xf9a2a6cb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputStorePaymentStarsTopup *obj = [[ModernTL_inputStorePaymentStarsTopup alloc] init];
    obj.flags = [is readInt32];
    obj.stars = [is readInt64];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.spend_purpose_peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.stars];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.spend_purpose_peer, true);
    }
}
@end

@implementation ModernTL_inputTheme
- (int32_t)TLconstructorSignature { return (int32_t)0x3c5693e9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputTheme *obj = [[ModernTL_inputTheme alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputThemeSlug
- (int32_t)TLconstructorSignature { return (int32_t)0xf5890df1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputThemeSlug *obj = [[ModernTL_inputThemeSlug alloc] init];
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_inputThemeSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x8fde504f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputThemeSettings *obj = [[ModernTL_inputThemeSettings alloc] init];
    obj.flags = [is readInt32];
    obj.base_theme = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.accent_color = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.outbox_accent_color = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt32])];
            }
            obj.message_colors = items;
        }
    }
    if (obj.flags & (1 << 1)) {
        obj.wallpaper = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.wallpaper_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.base_theme, true);
    [os writeInt32:self.accent_color];
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.outbox_accent_color];
    }
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.message_colors.count];
            for (id item in self.message_colors) {
                [os writeInt32:[item intValue]];
            }
        }
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.wallpaper, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.wallpaper_settings, true);
    }
}
@end

@implementation ModernTL_inputUser
- (int32_t)TLconstructorSignature { return (int32_t)0xf21158c6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputUser *obj = [[ModernTL_inputUser alloc] init];
    obj.user_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputUserEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xb98886cf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputUserEmpty *obj = [[ModernTL_inputUserEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputUserFromMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x1da448e2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputUserFromMessage *obj = [[ModernTL_inputUserFromMessage alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_inputUserSelf
- (int32_t)TLconstructorSignature { return (int32_t)0xf7c1b13f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputUserSelf *obj = [[ModernTL_inputUserSelf alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputWallPaper
- (int32_t)TLconstructorSignature { return (int32_t)0xe630b979; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputWallPaper *obj = [[ModernTL_inputWallPaper alloc] init];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
}
@end

@implementation ModernTL_inputWallPaperNoFile
- (int32_t)TLconstructorSignature { return (int32_t)0x967a462e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputWallPaperNoFile *obj = [[ModernTL_inputWallPaperNoFile alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_inputWallPaperSlug
- (int32_t)TLconstructorSignature { return (int32_t)0x72091c80; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputWallPaperSlug *obj = [[ModernTL_inputWallPaperSlug alloc] init];
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_inputWebDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x9bed434d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputWebDocument *obj = [[ModernTL_inputWebDocument alloc] init];
    obj.url = [is readString];
    obj.size = [is readInt32];
    obj.mime_type = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.attributes = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt32:self.size];
    [os writeString:self.mime_type == nil ? @"" : self.mime_type];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.attributes.count];
        for (id item in self.attributes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_inputWebFileAudioAlbumThumbLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xf46fe924; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputWebFileAudioAlbumThumbLocation *obj = [[ModernTL_inputWebFileAudioAlbumThumbLocation alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.title = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.performer = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.document, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.performer == nil ? @"" : self.performer];
    }
}
@end

@implementation ModernTL_inputWebFileGeoPointLocation
- (int32_t)TLconstructorSignature { return (int32_t)0x9f2221c9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputWebFileGeoPointLocation *obj = [[ModernTL_inputWebFileGeoPointLocation alloc] init];
    obj.geo_point = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.access_hash = [is readInt64];
    obj.w = [is readInt32];
    obj.h = [is readInt32];
    obj.zoom = [is readInt32];
    obj.scale = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo_point, true);
    [os writeInt64:self.access_hash];
    [os writeInt32:self.w];
    [os writeInt32:self.h];
    [os writeInt32:self.zoom];
    [os writeInt32:self.scale];
}
@end

@implementation ModernTL_inputWebFileLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xc239d686; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputWebFileLocation *obj = [[ModernTL_inputWebFileLocation alloc] init];
    obj.url = [is readString];
    obj.access_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt64:self.access_hash];
}
@end

