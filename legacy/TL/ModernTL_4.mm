// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
#import "ModernTL.h"
#import <objc/runtime.h>
#import "NSInputStream+TL.h"
#import "NSOutputStream+TL.h"
#import "TLMetaClassStore.h"

@implementation ModernTL_todoCompletion
- (int32_t)TLconstructorSignature { return (int32_t)0x221bb5e4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_todoCompletion *obj = [[ModernTL_todoCompletion alloc] init];
    obj.n_id = [is readInt32];
    obj.completed_by = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
    TLMetaClassStore::serializeObject(os, self.completed_by, true);
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_todoItem
- (int32_t)TLconstructorSignature { return (int32_t)0xcba9a52f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_todoItem *obj = [[ModernTL_todoItem alloc] init];
    obj.n_id = [is readInt32];
    obj.title = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
    TLMetaClassStore::serializeObject(os, self.title, true);
}
@end

@implementation ModernTL_todoList
- (int32_t)TLconstructorSignature { return (int32_t)0x49b92a26; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_todoList *obj = [[ModernTL_todoList alloc] init];
    obj.flags = [is readInt32];
    obj.title = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.list = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.title, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.list.count];
        for (id item in self.list) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_topPeer
- (int32_t)TLconstructorSignature { return (int32_t)0xedcdc05b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeer *obj = [[ModernTL_topPeer alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.rating = [is readDouble];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeDouble:self.rating];
}
@end

@implementation ModernTL_topPeerCategoryBotsApp
- (int32_t)TLconstructorSignature { return (int32_t)0xfd9e7bec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryBotsApp *obj = [[ModernTL_topPeerCategoryBotsApp alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryBotsGuestChat
- (int32_t)TLconstructorSignature { return (int32_t)0x6c24f3dd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryBotsGuestChat *obj = [[ModernTL_topPeerCategoryBotsGuestChat alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryBotsInline
- (int32_t)TLconstructorSignature { return (int32_t)0x148677e2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryBotsInline *obj = [[ModernTL_topPeerCategoryBotsInline alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryBotsPM
- (int32_t)TLconstructorSignature { return (int32_t)0xab661b5b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryBotsPM *obj = [[ModernTL_topPeerCategoryBotsPM alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryChannels
- (int32_t)TLconstructorSignature { return (int32_t)0x161d9628; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryChannels *obj = [[ModernTL_topPeerCategoryChannels alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryCorrespondents
- (int32_t)TLconstructorSignature { return (int32_t)0x0637b7ed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryCorrespondents *obj = [[ModernTL_topPeerCategoryCorrespondents alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryForwardChats
- (int32_t)TLconstructorSignature { return (int32_t)0xfbeec0f0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryForwardChats *obj = [[ModernTL_topPeerCategoryForwardChats alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryForwardUsers
- (int32_t)TLconstructorSignature { return (int32_t)0xa8406ca9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryForwardUsers *obj = [[ModernTL_topPeerCategoryForwardUsers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryGroups
- (int32_t)TLconstructorSignature { return (int32_t)0xbd17a14a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryGroups *obj = [[ModernTL_topPeerCategoryGroups alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryPhoneCalls
- (int32_t)TLconstructorSignature { return (int32_t)0x1e76a78c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryPhoneCalls *obj = [[ModernTL_topPeerCategoryPhoneCalls alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_topPeerCategoryPeers
- (int32_t)TLconstructorSignature { return (int32_t)0xfb834291; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_topPeerCategoryPeers *obj = [[ModernTL_topPeerCategoryPeers alloc] init];
    obj.category = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.count = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.peers = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.category, true);
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updateAiComposeTones
- (int32_t)TLconstructorSignature { return (int32_t)0x8c0f91fb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateAiComposeTones *obj = [[ModernTL_updateAiComposeTones alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateAttachMenuBots
- (int32_t)TLconstructorSignature { return (int32_t)0x17b7a20b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateAttachMenuBots *obj = [[ModernTL_updateAttachMenuBots alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateAutoSaveSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xec05b097; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateAutoSaveSettings *obj = [[ModernTL_updateAutoSaveSettings alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateBotBusinessConnect
- (int32_t)TLconstructorSignature { return (int32_t)0x8ae5c97a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotBusinessConnect *obj = [[ModernTL_updateBotBusinessConnect alloc] init];
    obj.connection = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.connection, true);
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotCallbackQuery
- (int32_t)TLconstructorSignature { return (int32_t)0xb9cfc48d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotCallbackQuery *obj = [[ModernTL_updateBotCallbackQuery alloc] init];
    obj.flags = [is readInt32];
    obj.query_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    obj.chat_instance = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.data = [is readBytes];
    }
    if (obj.flags & (1 << 1)) {
        obj.game_short_name = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.query_id];
    [os writeInt64:self.user_id];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    [os writeInt64:self.chat_instance];
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.data == nil ? [NSData data] : self.data];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.game_short_name == nil ? @"" : self.game_short_name];
    }
}
@end

@implementation ModernTL_updateBotChatBoost
- (int32_t)TLconstructorSignature { return (int32_t)0x904dd49c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotChatBoost *obj = [[ModernTL_updateBotChatBoost alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.boost = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.boost, true);
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotChatInviteRequester
- (int32_t)TLconstructorSignature { return (int32_t)0x7cb34d79; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotChatInviteRequester *obj = [[ModernTL_updateBotChatInviteRequester alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    obj.user_id = [is readInt64];
    obj.about = [is readString];
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.qts = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.query_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.date];
    [os writeInt64:self.user_id];
    [os writeString:self.about == nil ? @"" : self.about];
    TLMetaClassStore::serializeObject(os, self.invite, true);
    [os writeInt32:self.qts];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.query_id];
    }
}
@end

@implementation ModernTL_updateBotCommands
- (int32_t)TLconstructorSignature { return (int32_t)0x4d712f2e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotCommands *obj = [[ModernTL_updateBotCommands alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.bot_id = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.commands = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:self.bot_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.commands.count];
        for (id item in self.commands) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updateBotDeleteBusinessMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xa02a982e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotDeleteBusinessMessage *obj = [[ModernTL_updateBotDeleteBusinessMessage alloc] init];
    obj.connection_id = [is readString];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.connection_id == nil ? @"" : self.connection_id];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotEditBusinessMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x07df587c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotEditBusinessMessage *obj = [[ModernTL_updateBotEditBusinessMessage alloc] init];
    obj.flags = [is readInt32];
    obj.connection_id = [is readString];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.reply_to_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.connection_id == nil ? @"" : self.connection_id];
    TLMetaClassStore::serializeObject(os, self.message, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.reply_to_message, true);
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotGuestChatQuery
- (int32_t)TLconstructorSignature { return (int32_t)0xcdd4093d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotGuestChatQuery *obj = [[ModernTL_updateBotGuestChatQuery alloc] init];
    obj.flags = [is readInt32];
    obj.query_id = [is readInt64];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
            obj.reference_messages = items;
        }
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.query_id];
    TLMetaClassStore::serializeObject(os, self.message, true);
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.reference_messages.count];
            for (id item in self.reference_messages) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotInlineQuery
- (int32_t)TLconstructorSignature { return (int32_t)0x496f379c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotInlineQuery *obj = [[ModernTL_updateBotInlineQuery alloc] init];
    obj.flags = [is readInt32];
    obj.query_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.query = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.peer_type = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.offset = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.query_id];
    [os writeInt64:self.user_id];
    [os writeString:self.query == nil ? @"" : self.query];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.geo, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.peer_type, true);
    }
    [os writeString:self.offset == nil ? @"" : self.offset];
}
@end

@implementation ModernTL_updateBotInlineSend
- (int32_t)TLconstructorSignature { return (int32_t)0x12f12a07; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotInlineSend *obj = [[ModernTL_updateBotInlineSend alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = [is readInt64];
    obj.query = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.n_id = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.msg_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.user_id];
    [os writeString:self.query == nil ? @"" : self.query];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.geo, true);
    }
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.msg_id, true);
    }
}
@end

@implementation ModernTL_updateBotMenuButton
- (int32_t)TLconstructorSignature { return (int32_t)0x14b85813; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotMenuButton *obj = [[ModernTL_updateBotMenuButton alloc] init];
    obj.bot_id = [is readInt64];
    obj.button = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.bot_id];
    TLMetaClassStore::serializeObject(os, self.button, true);
}
@end

@implementation ModernTL_updateBotMessageReaction
- (int32_t)TLconstructorSignature { return (int32_t)0xac21d3ce; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotMessageReaction *obj = [[ModernTL_updateBotMessageReaction alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    obj.date = [is readInt32];
    obj.actor = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.old_reactions = items;
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
        obj.n_new_reactions = items;
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    [os writeInt32:self.date];
    TLMetaClassStore::serializeObject(os, self.actor, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.old_reactions.count];
        for (id item in self.old_reactions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.n_new_reactions.count];
        for (id item in self.n_new_reactions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotMessageReactions
- (int32_t)TLconstructorSignature { return (int32_t)0x09cb7759; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotMessageReactions *obj = [[ModernTL_updateBotMessageReactions alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    obj.date = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.reactions = items;
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    [os writeInt32:self.date];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.reactions.count];
        for (id item in self.reactions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotNewBusinessMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x9ddb347c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotNewBusinessMessage *obj = [[ModernTL_updateBotNewBusinessMessage alloc] init];
    obj.flags = [is readInt32];
    obj.connection_id = [is readString];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.reply_to_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.connection_id == nil ? @"" : self.connection_id];
    TLMetaClassStore::serializeObject(os, self.message, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.reply_to_message, true);
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotPrecheckoutQuery
- (int32_t)TLconstructorSignature { return (int32_t)0x8caa9a96; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotPrecheckoutQuery *obj = [[ModernTL_updateBotPrecheckoutQuery alloc] init];
    obj.flags = [is readInt32];
    obj.query_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.payload = [is readBytes];
    if (obj.flags & (1 << 0)) {
        obj.info = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.shipping_option_id = [is readString];
    }
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.query_id];
    [os writeInt64:self.user_id];
    [os writeBytes:self.payload == nil ? [NSData data] : self.payload];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.info, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.shipping_option_id == nil ? @"" : self.shipping_option_id];
    }
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
}
@end

@implementation ModernTL_updateBotPurchasedPaidMedia
- (int32_t)TLconstructorSignature { return (int32_t)0x283bd312; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotPurchasedPaidMedia *obj = [[ModernTL_updateBotPurchasedPaidMedia alloc] init];
    obj.user_id = [is readInt64];
    obj.payload = [is readString];
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeString:self.payload == nil ? @"" : self.payload];
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotShippingQuery
- (int32_t)TLconstructorSignature { return (int32_t)0xb5aefd7d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotShippingQuery *obj = [[ModernTL_updateBotShippingQuery alloc] init];
    obj.query_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.payload = [is readBytes];
    obj.shipping_address = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.query_id];
    [os writeInt64:self.user_id];
    [os writeBytes:self.payload == nil ? [NSData data] : self.payload];
    TLMetaClassStore::serializeObject(os, self.shipping_address, true);
}
@end

@implementation ModernTL_updateBotStopped
- (int32_t)TLconstructorSignature { return (int32_t)0xc4870a49; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotStopped *obj = [[ModernTL_updateBotStopped alloc] init];
    obj.user_id = [is readInt64];
    obj.date = [is readInt32];
    obj.stopped = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeInt32:self.date];
    [os writeInt32:self.stopped ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateBotWebhookJSON
- (int32_t)TLconstructorSignature { return (int32_t)0x8317c0c3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotWebhookJSON *obj = [[ModernTL_updateBotWebhookJSON alloc] init];
    obj.data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.data, true);
}
@end

@implementation ModernTL_updateBotWebhookJSONQuery
- (int32_t)TLconstructorSignature { return (int32_t)0x9b9240a6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBotWebhookJSONQuery *obj = [[ModernTL_updateBotWebhookJSONQuery alloc] init];
    obj.query_id = [is readInt64];
    obj.data = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.timeout = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.query_id];
    TLMetaClassStore::serializeObject(os, self.data, true);
    [os writeInt32:self.timeout];
}
@end

@implementation ModernTL_updateBusinessBotCallbackQuery
- (int32_t)TLconstructorSignature { return (int32_t)0x1ea2fda7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateBusinessBotCallbackQuery *obj = [[ModernTL_updateBusinessBotCallbackQuery alloc] init];
    obj.flags = [is readInt32];
    obj.query_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.connection_id = [is readString];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 2)) {
        obj.reply_to_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.chat_instance = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.data = [is readBytes];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.query_id];
    [os writeInt64:self.user_id];
    [os writeString:self.connection_id == nil ? @"" : self.connection_id];
    TLMetaClassStore::serializeObject(os, self.message, true);
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_to_message, true);
    }
    [os writeInt64:self.chat_instance];
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.data == nil ? [NSData data] : self.data];
    }
}
@end

@implementation ModernTL_updateChannel
- (int32_t)TLconstructorSignature { return (int32_t)0x635b4c09; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannel *obj = [[ModernTL_updateChannel alloc] init];
    obj.channel_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
}
@end

@implementation ModernTL_updateChannelAvailableMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xb23fc698; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelAvailableMessages *obj = [[ModernTL_updateChannelAvailableMessages alloc] init];
    obj.channel_id = [is readInt64];
    obj.available_min_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    [os writeInt32:self.available_min_id];
}
@end

@implementation ModernTL_updateChannelMessageForwards
- (int32_t)TLconstructorSignature { return (int32_t)0xd29a27f4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelMessageForwards *obj = [[ModernTL_updateChannelMessageForwards alloc] init];
    obj.channel_id = [is readInt64];
    obj.n_id = [is readInt32];
    obj.forwards = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    [os writeInt32:self.n_id];
    [os writeInt32:self.forwards];
}
@end

@implementation ModernTL_updateChannelMessageViews
- (int32_t)TLconstructorSignature { return (int32_t)0xf226ac08; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelMessageViews *obj = [[ModernTL_updateChannelMessageViews alloc] init];
    obj.channel_id = [is readInt64];
    obj.n_id = [is readInt32];
    obj.views = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    [os writeInt32:self.n_id];
    [os writeInt32:self.views];
}
@end

@implementation ModernTL_updateChannelParticipant
- (int32_t)TLconstructorSignature { return (int32_t)0x985d3abb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelParticipant *obj = [[ModernTL_updateChannelParticipant alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    obj.date = [is readInt32];
    obj.actor_id = [is readInt64];
    obj.user_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.prev_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.n_new_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    [os writeInt32:self.date];
    [os writeInt64:self.actor_id];
    [os writeInt64:self.user_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.prev_participant, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.n_new_participant, true);
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.invite, true);
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateChannelReadMessagesContents
- (int32_t)TLconstructorSignature { return (int32_t)0x25f324f7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelReadMessagesContents *obj = [[ModernTL_updateChannelReadMessagesContents alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.top_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.top_msg_id];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_updateChannelTooLong
- (int32_t)TLconstructorSignature { return (int32_t)0x108d941f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelTooLong *obj = [[ModernTL_updateChannelTooLong alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.pts = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.pts];
    }
}
@end

@implementation ModernTL_updateChannelUserTyping
- (int32_t)TLconstructorSignature { return (int32_t)0x8c88c923; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelUserTyping *obj = [[ModernTL_updateChannelUserTyping alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.top_msg_id = [is readInt32];
    }
    obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.action = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.top_msg_id];
    }
    TLMetaClassStore::serializeObject(os, self.from_id, true);
    TLMetaClassStore::serializeObject(os, self.action, true);
}
@end

@implementation ModernTL_updateChannelViewForumAsMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x07b68920; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelViewForumAsMessages *obj = [[ModernTL_updateChannelViewForumAsMessages alloc] init];
    obj.channel_id = [is readInt64];
    obj.enabled = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    [os writeInt32:self.enabled ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_updateChannelWebPage
- (int32_t)TLconstructorSignature { return (int32_t)0x2f2ba99f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChannelWebPage *obj = [[ModernTL_updateChannelWebPage alloc] init];
    obj.channel_id = [is readInt64];
    obj.webpage = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    TLMetaClassStore::serializeObject(os, self.webpage, true);
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateChat
- (int32_t)TLconstructorSignature { return (int32_t)0xf89a6a4e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChat *obj = [[ModernTL_updateChat alloc] init];
    obj.chat_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
}
@end

@implementation ModernTL_updateChatDefaultBannedRights
- (int32_t)TLconstructorSignature { return (int32_t)0x54c01850; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatDefaultBannedRights *obj = [[ModernTL_updateChatDefaultBannedRights alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.default_banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.default_banned_rights, true);
    [os writeInt32:self.version];
}
@end

@implementation ModernTL_updateChatParticipant
- (int32_t)TLconstructorSignature { return (int32_t)0xd087663a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatParticipant *obj = [[ModernTL_updateChatParticipant alloc] init];
    obj.flags = [is readInt32];
    obj.chat_id = [is readInt64];
    obj.date = [is readInt32];
    obj.actor_id = [is readInt64];
    obj.user_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.prev_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.n_new_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.chat_id];
    [os writeInt32:self.date];
    [os writeInt64:self.actor_id];
    [os writeInt64:self.user_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.prev_participant, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.n_new_participant, true);
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.invite, true);
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateChatParticipantAdd
- (int32_t)TLconstructorSignature { return (int32_t)0x3dda5451; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatParticipantAdd *obj = [[ModernTL_updateChatParticipantAdd alloc] init];
    obj.chat_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.inviter_id = [is readInt64];
    obj.date = [is readInt32];
    obj.version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
    [os writeInt64:self.user_id];
    [os writeInt64:self.inviter_id];
    [os writeInt32:self.date];
    [os writeInt32:self.version];
}
@end

@implementation ModernTL_updateChatParticipantAdmin
- (int32_t)TLconstructorSignature { return (int32_t)0xd7ca61a2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatParticipantAdmin *obj = [[ModernTL_updateChatParticipantAdmin alloc] init];
    obj.chat_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.is_admin = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    obj.version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
    [os writeInt64:self.user_id];
    [os writeInt32:self.is_admin ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    [os writeInt32:self.version];
}
@end

@implementation ModernTL_updateChatParticipantDelete
- (int32_t)TLconstructorSignature { return (int32_t)0xe32f3d77; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatParticipantDelete *obj = [[ModernTL_updateChatParticipantDelete alloc] init];
    obj.chat_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
    [os writeInt64:self.user_id];
    [os writeInt32:self.version];
}
@end

@implementation ModernTL_updateChatParticipantRank
- (int32_t)TLconstructorSignature { return (int32_t)0xbd8367b9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatParticipantRank *obj = [[ModernTL_updateChatParticipantRank alloc] init];
    obj.chat_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.rank = [is readString];
    obj.version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
    [os writeInt64:self.user_id];
    [os writeString:self.rank == nil ? @"" : self.rank];
    [os writeInt32:self.version];
}
@end

@implementation ModernTL_updateChatParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0x07761198; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatParticipants *obj = [[ModernTL_updateChatParticipants alloc] init];
    obj.participants = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.participants, true);
}
@end

@implementation ModernTL_updateChatUserTyping
- (int32_t)TLconstructorSignature { return (int32_t)0x83487af0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateChatUserTyping *obj = [[ModernTL_updateChatUserTyping alloc] init];
    obj.chat_id = [is readInt64];
    obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.action = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
    TLMetaClassStore::serializeObject(os, self.from_id, true);
    TLMetaClassStore::serializeObject(os, self.action, true);
}
@end

@implementation ModernTL_updateConfig
- (int32_t)TLconstructorSignature { return (int32_t)0xa229dd06; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateConfig *obj = [[ModernTL_updateConfig alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateContactsReset
- (int32_t)TLconstructorSignature { return (int32_t)0x7084a7be; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateContactsReset *obj = [[ModernTL_updateContactsReset alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateDcOptions
- (int32_t)TLconstructorSignature { return (int32_t)0x8e5e9873; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDcOptions *obj = [[ModernTL_updateDcOptions alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.dc_options = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dc_options.count];
        for (id item in self.dc_options) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updateDeleteChannelMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xc32d5b12; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDeleteChannelMessages *obj = [[ModernTL_updateDeleteChannelMessages alloc] init];
    obj.channel_id = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateDeleteEphemeralMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x56dbfcf8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDeleteEphemeralMessages *obj = [[ModernTL_updateDeleteEphemeralMessages alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.ids = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.ids.count];
        for (id item in self.ids) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_updateDeleteGroupCallMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x3e85e92c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDeleteGroupCallMessages *obj = [[ModernTL_updateDeleteGroupCallMessages alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_updateDeleteMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xa20db0e5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDeleteMessages *obj = [[ModernTL_updateDeleteMessages alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateDeleteQuickReply
- (int32_t)TLconstructorSignature { return (int32_t)0x53e6f1ec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDeleteQuickReply *obj = [[ModernTL_updateDeleteQuickReply alloc] init];
    obj.shortcut_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.shortcut_id];
}
@end

@implementation ModernTL_updateDeleteQuickReplyMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x566fe7cd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDeleteQuickReplyMessages *obj = [[ModernTL_updateDeleteQuickReplyMessages alloc] init];
    obj.shortcut_id = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.shortcut_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_updateDeleteScheduledMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xf2a71983; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDeleteScheduledMessages *obj = [[ModernTL_updateDeleteScheduledMessages alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt32])];
            }
            obj.sent_messages = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.sent_messages.count];
            for (id item in self.sent_messages) {
                [os writeInt32:[item intValue]];
            }
        }
    }
}
@end

@implementation ModernTL_updateDialogFilter
- (int32_t)TLconstructorSignature { return (int32_t)0x26ffde7d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDialogFilter *obj = [[ModernTL_updateDialogFilter alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.filter = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.n_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.filter, true);
    }
}
@end

@implementation ModernTL_updateDialogFilterOrder
- (int32_t)TLconstructorSignature { return (int32_t)0xa5d72105; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDialogFilterOrder *obj = [[ModernTL_updateDialogFilterOrder alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.order = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.order.count];
        for (id item in self.order) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_updateDialogFilters
- (int32_t)TLconstructorSignature { return (int32_t)0x3504914f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDialogFilters *obj = [[ModernTL_updateDialogFilters alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateDialogPinned
- (int32_t)TLconstructorSignature { return (int32_t)0x6e6fe51c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDialogPinned *obj = [[ModernTL_updateDialogPinned alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.folder_id = [is readInt32];
    }
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.folder_id];
    }
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_updateDialogUnreadMark
- (int32_t)TLconstructorSignature { return (int32_t)0xb658f23e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDialogUnreadMark *obj = [[ModernTL_updateDialogUnreadMark alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 1)) {
        obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    }
}
@end

@implementation ModernTL_updateDraftMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xedfc111e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateDraftMessage *obj = [[ModernTL_updateDraftMessage alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.top_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.draft = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.top_msg_id];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    }
    TLMetaClassStore::serializeObject(os, self.draft, true);
}
@end

@implementation ModernTL_updateEditChannelMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x1b3f4df7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateEditChannelMessage *obj = [[ModernTL_updateEditChannelMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateEditEphemeralMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x4bbb8f01; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateEditEphemeralMessage *obj = [[ModernTL_updateEditEphemeralMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_updateEditMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xe40370a3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateEditMessage *obj = [[ModernTL_updateEditMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateEmojiGameInfo
- (int32_t)TLconstructorSignature { return (int32_t)0xfb9c547a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateEmojiGameInfo *obj = [[ModernTL_updateEmojiGameInfo alloc] init];
    obj.info = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.info, true);
}
@end

@implementation ModernTL_updateEncryptedChatTyping
- (int32_t)TLconstructorSignature { return (int32_t)0x1710f156; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateEncryptedChatTyping *obj = [[ModernTL_updateEncryptedChatTyping alloc] init];
    obj.chat_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.chat_id];
}
@end

@implementation ModernTL_updateEncryptedMessagesRead
- (int32_t)TLconstructorSignature { return (int32_t)0x38fe25b7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateEncryptedMessagesRead *obj = [[ModernTL_updateEncryptedMessagesRead alloc] init];
    obj.chat_id = [is readInt32];
    obj.max_date = [is readInt32];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.chat_id];
    [os writeInt32:self.max_date];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_updateEncryption
- (int32_t)TLconstructorSignature { return (int32_t)0xb4a2e88d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateEncryption *obj = [[ModernTL_updateEncryption alloc] init];
    obj.chat = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.chat, true);
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_updateFavedStickers
- (int32_t)TLconstructorSignature { return (int32_t)0xe511996d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateFavedStickers *obj = [[ModernTL_updateFavedStickers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateFolderPeers
- (int32_t)TLconstructorSignature { return (int32_t)0x19360dc0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateFolderPeers *obj = [[ModernTL_updateFolderPeers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.folder_peers = items;
    }
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.folder_peers.count];
        for (id item in self.folder_peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateGeoLiveViewed
- (int32_t)TLconstructorSignature { return (int32_t)0x871fb939; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateGeoLiveViewed *obj = [[ModernTL_updateGeoLiveViewed alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
}
@end

@implementation ModernTL_updateGroupCall
- (int32_t)TLconstructorSignature { return (int32_t)0x9d2216e0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateGroupCall *obj = [[ModernTL_updateGroupCall alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.peer, true);
    }
    TLMetaClassStore::serializeObject(os, self.call, true);
}
@end

@implementation ModernTL_updateGroupCallChainBlocks
- (int32_t)TLconstructorSignature { return (int32_t)0xa477288f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateGroupCallChainBlocks *obj = [[ModernTL_updateGroupCallChainBlocks alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.sub_chain_id = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSData *item = [is readBytes];
            [items addObject:item == nil ? [NSData data] : item];
        }
        obj.blocks = items;
    }
    obj.next_offset = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
    [os writeInt32:self.sub_chain_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocks.count];
        for (id item in self.blocks) {
            [os writeBytes:item];
        }
    }
    [os writeInt32:self.next_offset];
}
@end

@implementation ModernTL_updateGroupCallConnection
- (int32_t)TLconstructorSignature { return (int32_t)0x0b783982; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateGroupCallConnection *obj = [[ModernTL_updateGroupCallConnection alloc] init];
    obj.flags = [is readInt32];
    obj.params = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.params, true);
}
@end

@implementation ModernTL_updateGroupCallEncryptedMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xc957a766; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateGroupCallEncryptedMessage *obj = [[ModernTL_updateGroupCallEncryptedMessage alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.encrypted_message = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
    TLMetaClassStore::serializeObject(os, self.from_id, true);
    [os writeBytes:self.encrypted_message == nil ? [NSData data] : self.encrypted_message];
}
@end

@implementation ModernTL_updateGroupCallMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xd8326f0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateGroupCallMessage *obj = [[ModernTL_updateGroupCallMessage alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_updateGroupCallParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0xf2ebdb4e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateGroupCallParticipants *obj = [[ModernTL_updateGroupCallParticipants alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.participants = items;
    }
    obj.version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.participants.count];
        for (id item in self.participants) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.version];
}
@end

@implementation ModernTL_updateInlineBotCallbackQuery
- (int32_t)TLconstructorSignature { return (int32_t)0x691e9052; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateInlineBotCallbackQuery *obj = [[ModernTL_updateInlineBotCallbackQuery alloc] init];
    obj.flags = [is readInt32];
    obj.query_id = [is readInt64];
    obj.user_id = [is readInt64];
    obj.msg_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.chat_instance = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.data = [is readBytes];
    }
    if (obj.flags & (1 << 1)) {
        obj.game_short_name = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.query_id];
    [os writeInt64:self.user_id];
    TLMetaClassStore::serializeObject(os, self.msg_id, true);
    [os writeInt64:self.chat_instance];
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.data == nil ? [NSData data] : self.data];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.game_short_name == nil ? @"" : self.game_short_name];
    }
}
@end

@implementation ModernTL_updateJoinChatWebViewDecision
- (int32_t)TLconstructorSignature { return (int32_t)0xbdac7e70; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateJoinChatWebViewDecision *obj = [[ModernTL_updateJoinChatWebViewDecision alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.query_id = [is readInt64];
    obj.result = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:self.query_id];
    TLMetaClassStore::serializeObject(os, self.result, true);
}
@end

@implementation ModernTL_updateLangPack
- (int32_t)TLconstructorSignature { return (int32_t)0x56022f4d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateLangPack *obj = [[ModernTL_updateLangPack alloc] init];
    obj.difference = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.difference, true);
}
@end

@implementation ModernTL_updateLangPackTooLong
- (int32_t)TLconstructorSignature { return (int32_t)0x46560264; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateLangPackTooLong *obj = [[ModernTL_updateLangPackTooLong alloc] init];
    obj.lang_code = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.lang_code == nil ? @"" : self.lang_code];
}
@end

@implementation ModernTL_updateLoginToken
- (int32_t)TLconstructorSignature { return (int32_t)0x564fe691; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateLoginToken *obj = [[ModernTL_updateLoginToken alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateManagedBot
- (int32_t)TLconstructorSignature { return (int32_t)0x4880ed9a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateManagedBot *obj = [[ModernTL_updateManagedBot alloc] init];
    obj.user_id = [is readInt64];
    obj.bot_id = [is readInt64];
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeInt64:self.bot_id];
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateMessageExtendedMedia
- (int32_t)TLconstructorSignature { return (int32_t)0xd5a41724; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateMessageExtendedMedia *obj = [[ModernTL_updateMessageExtendedMedia alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
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
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.extended_media.count];
        for (id item in self.extended_media) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updateMessageID
- (int32_t)TLconstructorSignature { return (int32_t)0x4e90bfd6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateMessageID *obj = [[ModernTL_updateMessageID alloc] init];
    obj.n_id = [is readInt32];
    obj.random_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
    [os writeInt64:self.random_id];
}
@end

@implementation ModernTL_updateMessagePoll
- (int32_t)TLconstructorSignature { return (int32_t)0xd64c522b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateMessagePoll *obj = [[ModernTL_updateMessagePoll alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.top_msg_id = [is readInt32];
    }
    obj.poll_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.poll = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.results = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.peer, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.msg_id];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.top_msg_id];
    }
    [os writeInt64:self.poll_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.poll, true);
    }
    TLMetaClassStore::serializeObject(os, self.results, true);
}
@end

@implementation ModernTL_updateMessagePollVote
- (int32_t)TLconstructorSignature { return (int32_t)0x7699f014; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateMessagePollVote *obj = [[ModernTL_updateMessagePollVote alloc] init];
    obj.poll_id = [is readInt64];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSData *item = [is readBytes];
            [items addObject:item == nil ? [NSData data] : item];
        }
        obj.options = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.positions = items;
    }
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.poll_id];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.options.count];
        for (id item in self.options) {
            [os writeBytes:item];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.positions.count];
        for (id item in self.positions) {
            [os writeInt32:[item intValue]];
        }
    }
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateMessageReactions
- (int32_t)TLconstructorSignature { return (int32_t)0x1e297bfa; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateMessageReactions *obj = [[ModernTL_updateMessageReactions alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.top_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.reactions = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.top_msg_id];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    }
    TLMetaClassStore::serializeObject(os, self.reactions, true);
}
@end

@implementation ModernTL_updateMonoForumNoPaidException
- (int32_t)TLconstructorSignature { return (int32_t)0x9f812b08; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateMonoForumNoPaidException *obj = [[ModernTL_updateMonoForumNoPaidException alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
}
@end

@implementation ModernTL_updateMoveStickerSetToTop
- (int32_t)TLconstructorSignature { return (int32_t)0x86fccf85; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateMoveStickerSetToTop *obj = [[ModernTL_updateMoveStickerSetToTop alloc] init];
    obj.flags = [is readInt32];
    obj.stickerset = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.stickerset];
}
@end

@implementation ModernTL_updateNewAuthorization
- (int32_t)TLconstructorSignature { return (int32_t)0x8951abef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewAuthorization *obj = [[ModernTL_updateNewAuthorization alloc] init];
    obj.flags = [is readInt32];
    obj.n_hash = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.date = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.device = [is readString];
    }
    if (obj.flags & (1 << 0)) {
        obj.location = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_hash];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.date];
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.device == nil ? @"" : self.device];
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.location == nil ? @"" : self.location];
    }
}
@end

@implementation ModernTL_updateNewBotConnection
- (int32_t)TLconstructorSignature { return (int32_t)0xb22083a6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewBotConnection *obj = [[ModernTL_updateNewBotConnection alloc] init];
    obj.flags = [is readInt32];
    obj.bot_id = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.date = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.device = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.location = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.bot_id];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.date];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.device == nil ? @"" : self.device];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.location == nil ? @"" : self.location];
    }
}
@end

@implementation ModernTL_updateNewChannelMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x62ba04d9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewChannelMessage *obj = [[ModernTL_updateNewChannelMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateNewEncryptedMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x12bcbd9a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewEncryptedMessage *obj = [[ModernTL_updateNewEncryptedMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.qts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
    [os writeInt32:self.qts];
}
@end

@implementation ModernTL_updateNewEphemeralMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x20bcbba1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewEphemeralMessage *obj = [[ModernTL_updateNewEphemeralMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_updateNewMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x1f2b0afd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewMessage *obj = [[ModernTL_updateNewMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateNewQuickReply
- (int32_t)TLconstructorSignature { return (int32_t)0xf53da717; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewQuickReply *obj = [[ModernTL_updateNewQuickReply alloc] init];
    obj.quick_reply = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.quick_reply, true);
}
@end

@implementation ModernTL_updateNewScheduledMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x39a51dfb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewScheduledMessage *obj = [[ModernTL_updateNewScheduledMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_updateNewStickerSet
- (int32_t)TLconstructorSignature { return (int32_t)0x688a30aa; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewStickerSet *obj = [[ModernTL_updateNewStickerSet alloc] init];
    obj.stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.stickerset, true);
}
@end

@implementation ModernTL_updateNewStoryReaction
- (int32_t)TLconstructorSignature { return (int32_t)0x1824e40b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNewStoryReaction *obj = [[ModernTL_updateNewStoryReaction alloc] init];
    obj.story_id = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.reaction = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.story_id];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.reaction, true);
}
@end

@implementation ModernTL_updateNotifySettings
- (int32_t)TLconstructorSignature { return (int32_t)0xbec268ef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateNotifySettings *obj = [[ModernTL_updateNotifySettings alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.notify_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.notify_settings, true);
}
@end

@implementation ModernTL_updatePaidReactionPrivacy
- (int32_t)TLconstructorSignature { return (int32_t)0x8b725fce; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePaidReactionPrivacy *obj = [[ModernTL_updatePaidReactionPrivacy alloc] init];
    obj.n_private = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.n_private, true);
}
@end

@implementation ModernTL_updatePeerBlocked
- (int32_t)TLconstructorSignature { return (int32_t)0xebe07752; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePeerBlocked *obj = [[ModernTL_updatePeerBlocked alloc] init];
    obj.flags = [is readInt32];
    obj.peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer_id, true);
}
@end

@implementation ModernTL_updatePeerHistoryTTL
- (int32_t)TLconstructorSignature { return (int32_t)0xbb9bb9a5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePeerHistoryTTL *obj = [[ModernTL_updatePeerHistoryTTL alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.ttl_period = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.ttl_period];
    }
}
@end

@implementation ModernTL_updatePeerLocated
- (int32_t)TLconstructorSignature { return (int32_t)0xb4afcfb0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePeerLocated *obj = [[ModernTL_updatePeerLocated alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.peers = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updatePeerSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x6a7e7366; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePeerSettings *obj = [[ModernTL_updatePeerSettings alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.settings, true);
}
@end

@implementation ModernTL_updatePeerWallpaper
- (int32_t)TLconstructorSignature { return (int32_t)0xae3f101d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePeerWallpaper *obj = [[ModernTL_updatePeerWallpaper alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.wallpaper = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.wallpaper, true);
    }
}
@end

@implementation ModernTL_updatePendingJoinRequests
- (int32_t)TLconstructorSignature { return (int32_t)0x7063c3db; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePendingJoinRequests *obj = [[ModernTL_updatePendingJoinRequests alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.requests_pending = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.recent_requesters = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.requests_pending];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.recent_requesters.count];
        for (id item in self.recent_requesters) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_updatePhoneCall
- (int32_t)TLconstructorSignature { return (int32_t)0xab0f6b1e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePhoneCall *obj = [[ModernTL_updatePhoneCall alloc] init];
    obj.phone_call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.phone_call, true);
}
@end

@implementation ModernTL_updatePhoneCallSignalingData
- (int32_t)TLconstructorSignature { return (int32_t)0x2661bf09; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePhoneCallSignalingData *obj = [[ModernTL_updatePhoneCallSignalingData alloc] init];
    obj.phone_call_id = [is readInt64];
    obj.data = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.phone_call_id];
    [os writeBytes:self.data == nil ? [NSData data] : self.data];
}
@end

@implementation ModernTL_updatePinnedChannelMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x5bb98608; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePinnedChannelMessages *obj = [[ModernTL_updatePinnedChannelMessages alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updatePinnedDialogs
- (int32_t)TLconstructorSignature { return (int32_t)0xfa0f3ca2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePinnedDialogs *obj = [[ModernTL_updatePinnedDialogs alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.folder_id = [is readInt32];
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
            obj.order = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.folder_id];
    }
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.order.count];
            for (id item in self.order) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_updatePinnedForumTopic
- (int32_t)TLconstructorSignature { return (int32_t)0x683b2c52; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePinnedForumTopic *obj = [[ModernTL_updatePinnedForumTopic alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.topic_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.topic_id];
}
@end

@implementation ModernTL_updatePinnedForumTopics
- (int32_t)TLconstructorSignature { return (int32_t)0xdef143d0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePinnedForumTopics *obj = [[ModernTL_updatePinnedForumTopics alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt32])];
            }
            obj.order = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.order.count];
            for (id item in self.order) {
                [os writeInt32:[item intValue]];
            }
        }
    }
}
@end

@implementation ModernTL_updatePinnedMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xed85eab5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePinnedMessages *obj = [[ModernTL_updatePinnedMessages alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updatePinnedSavedDialogs
- (int32_t)TLconstructorSignature { return (int32_t)0x686c85a6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePinnedSavedDialogs *obj = [[ModernTL_updatePinnedSavedDialogs alloc] init];
    obj.flags = [is readInt32];
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
            obj.order = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.order.count];
            for (id item in self.order) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_updatePrivacy
- (int32_t)TLconstructorSignature { return (int32_t)0xee3b272a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePrivacy *obj = [[ModernTL_updatePrivacy alloc] init];
    obj.key = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.rules = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.key, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.rules.count];
        for (id item in self.rules) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updatePtsChanged
- (int32_t)TLconstructorSignature { return (int32_t)0x3354678f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatePtsChanged *obj = [[ModernTL_updatePtsChanged alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateQuickReplies
- (int32_t)TLconstructorSignature { return (int32_t)0xf9470ab2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateQuickReplies *obj = [[ModernTL_updateQuickReplies alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.quick_replies = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.quick_replies.count];
        for (id item in self.quick_replies) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updateQuickReplyMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x3e050d0f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateQuickReplyMessage *obj = [[ModernTL_updateQuickReplyMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_updateReadChannelDiscussionInbox
- (int32_t)TLconstructorSignature { return (int32_t)0xd6b19546; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadChannelDiscussionInbox *obj = [[ModernTL_updateReadChannelDiscussionInbox alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    obj.top_msg_id = [is readInt32];
    obj.read_max_id = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.broadcast_id = [is readInt64];
    }
    if (obj.flags & (1 << 0)) {
        obj.broadcast_post = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    [os writeInt32:self.top_msg_id];
    [os writeInt32:self.read_max_id];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.broadcast_id];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.broadcast_post];
    }
}
@end

@implementation ModernTL_updateReadChannelDiscussionOutbox
- (int32_t)TLconstructorSignature { return (int32_t)0x695c9e7c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadChannelDiscussionOutbox *obj = [[ModernTL_updateReadChannelDiscussionOutbox alloc] init];
    obj.channel_id = [is readInt64];
    obj.top_msg_id = [is readInt32];
    obj.read_max_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    [os writeInt32:self.top_msg_id];
    [os writeInt32:self.read_max_id];
}
@end

@implementation ModernTL_updateReadChannelInbox
- (int32_t)TLconstructorSignature { return (int32_t)0x922e6e10; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadChannelInbox *obj = [[ModernTL_updateReadChannelInbox alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.folder_id = [is readInt32];
    }
    obj.channel_id = [is readInt64];
    obj.max_id = [is readInt32];
    obj.still_unread_count = [is readInt32];
    obj.pts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.folder_id];
    }
    [os writeInt64:self.channel_id];
    [os writeInt32:self.max_id];
    [os writeInt32:self.still_unread_count];
    [os writeInt32:self.pts];
}
@end

@implementation ModernTL_updateReadChannelOutbox
- (int32_t)TLconstructorSignature { return (int32_t)0xb75f99a9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadChannelOutbox *obj = [[ModernTL_updateReadChannelOutbox alloc] init];
    obj.channel_id = [is readInt64];
    obj.max_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    [os writeInt32:self.max_id];
}
@end

@implementation ModernTL_updateReadFeaturedEmojiStickers
- (int32_t)TLconstructorSignature { return (int32_t)0xfb4c496c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadFeaturedEmojiStickers *obj = [[ModernTL_updateReadFeaturedEmojiStickers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateReadFeaturedStickers
- (int32_t)TLconstructorSignature { return (int32_t)0x571d2742; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadFeaturedStickers *obj = [[ModernTL_updateReadFeaturedStickers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateReadHistoryInbox
- (int32_t)TLconstructorSignature { return (int32_t)0x9e84bc99; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadHistoryInbox *obj = [[ModernTL_updateReadHistoryInbox alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.folder_id = [is readInt32];
    }
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 1)) {
        obj.top_msg_id = [is readInt32];
    }
    obj.max_id = [is readInt32];
    obj.still_unread_count = [is readInt32];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.folder_id];
    }
    TLMetaClassStore::serializeObject(os, self.peer, true);
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.top_msg_id];
    }
    [os writeInt32:self.max_id];
    [os writeInt32:self.still_unread_count];
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateReadHistoryOutbox
- (int32_t)TLconstructorSignature { return (int32_t)0x2f2f21bf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadHistoryOutbox *obj = [[ModernTL_updateReadHistoryOutbox alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.max_id = [is readInt32];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.max_id];
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateReadMessagesContents
- (int32_t)TLconstructorSignature { return (int32_t)0xf8227181; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadMessagesContents *obj = [[ModernTL_updateReadMessagesContents alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.messages = items;
    }
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.date];
    }
}
@end

@implementation ModernTL_updateReadMonoForumInbox
- (int32_t)TLconstructorSignature { return (int32_t)0x77b0e372; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadMonoForumInbox *obj = [[ModernTL_updateReadMonoForumInbox alloc] init];
    obj.channel_id = [is readInt64];
    obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.read_max_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    [os writeInt32:self.read_max_id];
}
@end

@implementation ModernTL_updateReadMonoForumOutbox
- (int32_t)TLconstructorSignature { return (int32_t)0xa4a79376; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadMonoForumOutbox *obj = [[ModernTL_updateReadMonoForumOutbox alloc] init];
    obj.channel_id = [is readInt64];
    obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.read_max_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
    TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    [os writeInt32:self.read_max_id];
}
@end

@implementation ModernTL_updateReadStories
- (int32_t)TLconstructorSignature { return (int32_t)0xf74e932b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateReadStories *obj = [[ModernTL_updateReadStories alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.max_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.max_id];
}
@end

@implementation ModernTL_updateRecentEmojiStatuses
- (int32_t)TLconstructorSignature { return (int32_t)0x30f443db; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateRecentEmojiStatuses *obj = [[ModernTL_updateRecentEmojiStatuses alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateRecentReactions
- (int32_t)TLconstructorSignature { return (int32_t)0x6f7863f4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateRecentReactions *obj = [[ModernTL_updateRecentReactions alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateRecentStickers
- (int32_t)TLconstructorSignature { return (int32_t)0x9a422c20; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateRecentStickers *obj = [[ModernTL_updateRecentStickers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateSavedDialogPinned
- (int32_t)TLconstructorSignature { return (int32_t)0xaeaf9e74; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateSavedDialogPinned *obj = [[ModernTL_updateSavedDialogPinned alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_updateSavedGifs
- (int32_t)TLconstructorSignature { return (int32_t)0x9375341e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateSavedGifs *obj = [[ModernTL_updateSavedGifs alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateSavedReactionTags
- (int32_t)TLconstructorSignature { return (int32_t)0x39c67432; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateSavedReactionTags *obj = [[ModernTL_updateSavedReactionTags alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateSavedRingtones
- (int32_t)TLconstructorSignature { return (int32_t)0x74d8be99; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateSavedRingtones *obj = [[ModernTL_updateSavedRingtones alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateSentPhoneCode
- (int32_t)TLconstructorSignature { return (int32_t)0x504aa18f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateSentPhoneCode *obj = [[ModernTL_updateSentPhoneCode alloc] init];
    obj.sent_code = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.sent_code, true);
}
@end

@implementation ModernTL_updateSentStoryReaction
- (int32_t)TLconstructorSignature { return (int32_t)0x7d627683; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateSentStoryReaction *obj = [[ModernTL_updateSentStoryReaction alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.story_id = [is readInt32];
    obj.reaction = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.story_id];
    TLMetaClassStore::serializeObject(os, self.reaction, true);
}
@end

@implementation ModernTL_updateServiceNotification
- (int32_t)TLconstructorSignature { return (int32_t)0xebe46819; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateServiceNotification *obj = [[ModernTL_updateServiceNotification alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.inbox_date = [is readInt32];
    }
    obj.type = [is readString];
    obj.message = [is readString];
    obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.inbox_date];
    }
    [os writeString:self.type == nil ? @"" : self.type];
    [os writeString:self.message == nil ? @"" : self.message];
    TLMetaClassStore::serializeObject(os, self.media, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.entities.count];
        for (id item in self.entities) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updateSmsJob
- (int32_t)TLconstructorSignature { return (int32_t)0xf16269d4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateSmsJob *obj = [[ModernTL_updateSmsJob alloc] init];
    obj.job_id = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.job_id == nil ? @"" : self.job_id];
}
@end

@implementation ModernTL_updateStarGiftAuctionState
- (int32_t)TLconstructorSignature { return (int32_t)0x48e246c2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStarGiftAuctionState *obj = [[ModernTL_updateStarGiftAuctionState alloc] init];
    obj.gift_id = [is readInt64];
    obj.state = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.gift_id];
    TLMetaClassStore::serializeObject(os, self.state, true);
}
@end

@implementation ModernTL_updateStarGiftAuctionUserState
- (int32_t)TLconstructorSignature { return (int32_t)0xdc58f31e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStarGiftAuctionUserState *obj = [[ModernTL_updateStarGiftAuctionUserState alloc] init];
    obj.gift_id = [is readInt64];
    obj.user_state = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.gift_id];
    TLMetaClassStore::serializeObject(os, self.user_state, true);
}
@end

@implementation ModernTL_updateStarGiftCraftFail
- (int32_t)TLconstructorSignature { return (int32_t)0xac072444; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStarGiftCraftFail *obj = [[ModernTL_updateStarGiftCraftFail alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_updateStarsBalance
- (int32_t)TLconstructorSignature { return (int32_t)0x4e80a379; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStarsBalance *obj = [[ModernTL_updateStarsBalance alloc] init];
    obj.balance = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.balance, true);
}
@end

@implementation ModernTL_updateStarsRevenueStatus
- (int32_t)TLconstructorSignature { return (int32_t)0xa584b019; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStarsRevenueStatus *obj = [[ModernTL_updateStarsRevenueStatus alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.status = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.status, true);
}
@end

@implementation ModernTL_updateStickerSets
- (int32_t)TLconstructorSignature { return (int32_t)0x31c24808; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStickerSets *obj = [[ModernTL_updateStickerSets alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_updateStickerSetsOrder
- (int32_t)TLconstructorSignature { return (int32_t)0x0bb2d201; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStickerSetsOrder *obj = [[ModernTL_updateStickerSetsOrder alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.order = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.order.count];
        for (id item in self.order) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_updateStoriesStealthMode
- (int32_t)TLconstructorSignature { return (int32_t)0x2c084dc1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStoriesStealthMode *obj = [[ModernTL_updateStoriesStealthMode alloc] init];
    obj.stealth_mode = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.stealth_mode, true);
}
@end

@implementation ModernTL_updateStory
- (int32_t)TLconstructorSignature { return (int32_t)0x75b3b798; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStory *obj = [[ModernTL_updateStory alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.story = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.story, true);
}
@end

@implementation ModernTL_updateStoryID
- (int32_t)TLconstructorSignature { return (int32_t)0x1bf335b9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateStoryID *obj = [[ModernTL_updateStoryID alloc] init];
    obj.n_id = [is readInt32];
    obj.random_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
    [os writeInt64:self.random_id];
}
@end

@implementation ModernTL_updateTheme
- (int32_t)TLconstructorSignature { return (int32_t)0x8216fba3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateTheme *obj = [[ModernTL_updateTheme alloc] init];
    obj.theme = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.theme, true);
}
@end

@implementation ModernTL_updateTranscribedAudio
- (int32_t)TLconstructorSignature { return (int32_t)0x0084cd5a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateTranscribedAudio *obj = [[ModernTL_updateTranscribedAudio alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    obj.transcription_id = [is readInt64];
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.msg_id];
    [os writeInt64:self.transcription_id];
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_updateUser
- (int32_t)TLconstructorSignature { return (int32_t)0x20529438; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateUser *obj = [[ModernTL_updateUser alloc] init];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_updateUserEmojiStatus
- (int32_t)TLconstructorSignature { return (int32_t)0x28373599; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateUserEmojiStatus *obj = [[ModernTL_updateUserEmojiStatus alloc] init];
    obj.user_id = [is readInt64];
    obj.emoji_status = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    TLMetaClassStore::serializeObject(os, self.emoji_status, true);
}
@end

@implementation ModernTL_updateUserName
- (int32_t)TLconstructorSignature { return (int32_t)0xa7848924; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateUserName *obj = [[ModernTL_updateUserName alloc] init];
    obj.user_id = [is readInt64];
    obj.first_name = [is readString];
    obj.last_name = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.usernames = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeString:self.first_name == nil ? @"" : self.first_name];
    [os writeString:self.last_name == nil ? @"" : self.last_name];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.usernames.count];
        for (id item in self.usernames) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_updateUserPhone
- (int32_t)TLconstructorSignature { return (int32_t)0x05492a13; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateUserPhone *obj = [[ModernTL_updateUserPhone alloc] init];
    obj.user_id = [is readInt64];
    obj.phone = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeString:self.phone == nil ? @"" : self.phone];
}
@end

@implementation ModernTL_updateUserStatus
- (int32_t)TLconstructorSignature { return (int32_t)0xe5bdf8de; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateUserStatus *obj = [[ModernTL_updateUserStatus alloc] init];
    obj.user_id = [is readInt64];
    obj.status = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    TLMetaClassStore::serializeObject(os, self.status, true);
}
@end

@implementation ModernTL_updateUserTyping
- (int32_t)TLconstructorSignature { return (int32_t)0x2a17bf5c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateUserTyping *obj = [[ModernTL_updateUserTyping alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.top_msg_id = [is readInt32];
    }
    obj.action = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.user_id];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.top_msg_id];
    }
    TLMetaClassStore::serializeObject(os, self.action, true);
}
@end

@implementation ModernTL_updateWebBrowserException
- (int32_t)TLconstructorSignature { return (int32_t)0x140502d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateWebBrowserException *obj = [[ModernTL_updateWebBrowserException alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.open_external_browser = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    obj.exception = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.open_external_browser ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    TLMetaClassStore::serializeObject(os, self.exception, true);
}
@end

@implementation ModernTL_updateWebBrowserSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xc39a2ade; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateWebBrowserSettings *obj = [[ModernTL_updateWebBrowserSettings alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_updateWebPage
- (int32_t)TLconstructorSignature { return (int32_t)0x7f891213; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateWebPage *obj = [[ModernTL_updateWebPage alloc] init];
    obj.webpage = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.webpage, true);
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_updateWebViewResultSent
- (int32_t)TLconstructorSignature { return (int32_t)0x1592b79d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateWebViewResultSent *obj = [[ModernTL_updateWebViewResultSent alloc] init];
    obj.query_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.query_id];
}
@end

@implementation ModernTL_businessBotRecipients
- (int32_t)TLconstructorSignature { return (int32_t)0xb88cf373; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessBotRecipients *obj = [[ModernTL_businessBotRecipients alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 4)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt64])];
            }
            obj.users = items;
        }
    }
    if (obj.flags & (1 << 6)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt64])];
            }
            obj.exclude_users = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 4)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.users.count];
            for (id item in self.users) {
                [os writeInt64:[item longLongValue]];
            }
        }
    }
    if (self.flags & (1 << 6)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.exclude_users.count];
            for (id item in self.exclude_users) {
                [os writeInt64:[item longLongValue]];
            }
        }
    }
}
@end

@implementation ModernTL_businessBotRights
- (int32_t)TLconstructorSignature { return (int32_t)0xa0624cf7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessBotRights *obj = [[ModernTL_businessBotRights alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_businessChatLink
- (int32_t)TLconstructorSignature { return (int32_t)0xb4ae666f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessChatLink *obj = [[ModernTL_businessChatLink alloc] init];
    obj.flags = [is readInt32];
    obj.link = [is readString];
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
    if (obj.flags & (1 << 1)) {
        obj.title = [is readString];
    }
    obj.views = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.link == nil ? @"" : self.link];
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
    if (self.flags & (1 << 1)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
    [os writeInt32:self.views];
}
@end

@implementation ModernTL_businessGreetingMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xe519abab; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessGreetingMessage *obj = [[ModernTL_businessGreetingMessage alloc] init];
    obj.shortcut_id = [is readInt32];
    obj.recipients = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.no_activity_days = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.shortcut_id];
    TLMetaClassStore::serializeObject(os, self.recipients, true);
    [os writeInt32:self.no_activity_days];
}
@end

@implementation ModernTL_businessIntro
- (int32_t)TLconstructorSignature { return (int32_t)0x5a0a066d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessIntro *obj = [[ModernTL_businessIntro alloc] init];
    obj.flags = [is readInt32];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.sticker = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.sticker, true);
    }
}
@end

@implementation ModernTL_businessLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xac5c1af7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessLocation *obj = [[ModernTL_businessLocation alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.geo_point = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.address = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.geo_point, true);
    }
    [os writeString:self.address == nil ? @"" : self.address];
}
@end

@implementation ModernTL_businessRecipients
- (int32_t)TLconstructorSignature { return (int32_t)0x21108ff7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessRecipients *obj = [[ModernTL_businessRecipients alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 4)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt64])];
            }
            obj.users = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 4)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.users.count];
            for (id item in self.users) {
                [os writeInt64:[item longLongValue]];
            }
        }
    }
}
@end

@implementation ModernTL_businessWeeklyOpen
- (int32_t)TLconstructorSignature { return (int32_t)0x120b1ab9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessWeeklyOpen *obj = [[ModernTL_businessWeeklyOpen alloc] init];
    obj.start_minute = [is readInt32];
    obj.end_minute = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.start_minute];
    [os writeInt32:self.end_minute];
}
@end

@implementation ModernTL_businessWorkHours
- (int32_t)TLconstructorSignature { return (int32_t)0x8c92b098; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessWorkHours *obj = [[ModernTL_businessWorkHours alloc] init];
    obj.flags = [is readInt32];
    obj.timezone_id = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.weekly_open = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.timezone_id == nil ? @"" : self.timezone_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.weekly_open.count];
        for (id item in self.weekly_open) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_cdnConfig
- (int32_t)TLconstructorSignature { return (int32_t)0x5725e40a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_cdnConfig *obj = [[ModernTL_cdnConfig alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.public_keys = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.public_keys.count];
        for (id item in self.public_keys) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_cdnPublicKey
- (int32_t)TLconstructorSignature { return (int32_t)0xc982eaba; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_cdnPublicKey *obj = [[ModernTL_cdnPublicKey alloc] init];
    obj.dc_id = [is readInt32];
    obj.public_key = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.dc_id];
    [os writeString:self.public_key == nil ? @"" : self.public_key];
}
@end

@implementation ModernTL_channelAdminLogEvent
- (int32_t)TLconstructorSignature { return (int32_t)0x1fad68cd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEvent *obj = [[ModernTL_channelAdminLogEvent alloc] init];
    obj.n_id = [is readInt64];
    obj.date = [is readInt32];
    obj.user_id = [is readInt64];
    obj.action = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.date];
    [os writeInt64:self.user_id];
    TLMetaClassStore::serializeObject(os, self.action, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeAbout
- (int32_t)TLconstructorSignature { return (int32_t)0x55188a2e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeAbout *obj = [[ModernTL_channelAdminLogEventActionChangeAbout alloc] init];
    obj.prev_value = [is readString];
    obj.n_new_value = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.prev_value == nil ? @"" : self.prev_value];
    [os writeString:self.n_new_value == nil ? @"" : self.n_new_value];
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeAvailableReactions
- (int32_t)TLconstructorSignature { return (int32_t)0xbe4e0ef8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeAvailableReactions *obj = [[ModernTL_channelAdminLogEventActionChangeAvailableReactions alloc] init];
    obj.prev_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_value, true);
    TLMetaClassStore::serializeObject(os, self.n_new_value, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeEmojiStatus
- (int32_t)TLconstructorSignature { return (int32_t)0x3ea9feb1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeEmojiStatus *obj = [[ModernTL_channelAdminLogEventActionChangeEmojiStatus alloc] init];
    obj.prev_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_value, true);
    TLMetaClassStore::serializeObject(os, self.n_new_value, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeEmojiStickerSet
- (int32_t)TLconstructorSignature { return (int32_t)0x46d840ab; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeEmojiStickerSet *obj = [[ModernTL_channelAdminLogEventActionChangeEmojiStickerSet alloc] init];
    obj.prev_stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_stickerset, true);
    TLMetaClassStore::serializeObject(os, self.n_new_stickerset, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeHistoryTTL
- (int32_t)TLconstructorSignature { return (int32_t)0x6e941a38; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeHistoryTTL *obj = [[ModernTL_channelAdminLogEventActionChangeHistoryTTL alloc] init];
    obj.prev_value = [is readInt32];
    obj.n_new_value = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.prev_value];
    [os writeInt32:self.n_new_value];
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeLinkedChat
- (int32_t)TLconstructorSignature { return (int32_t)0x050c7ac8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeLinkedChat *obj = [[ModernTL_channelAdminLogEventActionChangeLinkedChat alloc] init];
    obj.prev_value = [is readInt64];
    obj.n_new_value = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.prev_value];
    [os writeInt64:self.n_new_value];
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeLocation
- (int32_t)TLconstructorSignature { return (int32_t)0x0e6b76ae; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeLocation *obj = [[ModernTL_channelAdminLogEventActionChangeLocation alloc] init];
    obj.prev_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_value, true);
    TLMetaClassStore::serializeObject(os, self.n_new_value, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangePeerColor
- (int32_t)TLconstructorSignature { return (int32_t)0x5796e780; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangePeerColor *obj = [[ModernTL_channelAdminLogEventActionChangePeerColor alloc] init];
    obj.prev_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_value, true);
    TLMetaClassStore::serializeObject(os, self.n_new_value, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangePhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x434bd2af; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangePhoto *obj = [[ModernTL_channelAdminLogEventActionChangePhoto alloc] init];
    obj.prev_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_photo, true);
    TLMetaClassStore::serializeObject(os, self.n_new_photo, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeProfilePeerColor
- (int32_t)TLconstructorSignature { return (int32_t)0x5e477b25; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeProfilePeerColor *obj = [[ModernTL_channelAdminLogEventActionChangeProfilePeerColor alloc] init];
    obj.prev_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_value, true);
    TLMetaClassStore::serializeObject(os, self.n_new_value, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeStickerSet
- (int32_t)TLconstructorSignature { return (int32_t)0xb1c3caa7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeStickerSet *obj = [[ModernTL_channelAdminLogEventActionChangeStickerSet alloc] init];
    obj.prev_stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_stickerset, true);
    TLMetaClassStore::serializeObject(os, self.n_new_stickerset, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeTitle
- (int32_t)TLconstructorSignature { return (int32_t)0xe6dfb825; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeTitle *obj = [[ModernTL_channelAdminLogEventActionChangeTitle alloc] init];
    obj.prev_value = [is readString];
    obj.n_new_value = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.prev_value == nil ? @"" : self.prev_value];
    [os writeString:self.n_new_value == nil ? @"" : self.n_new_value];
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeUsername
- (int32_t)TLconstructorSignature { return (int32_t)0x6a4afc38; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeUsername *obj = [[ModernTL_channelAdminLogEventActionChangeUsername alloc] init];
    obj.prev_value = [is readString];
    obj.n_new_value = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.prev_value == nil ? @"" : self.prev_value];
    [os writeString:self.n_new_value == nil ? @"" : self.n_new_value];
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeUsernames
- (int32_t)TLconstructorSignature { return (int32_t)0xf04fb3a9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeUsernames *obj = [[ModernTL_channelAdminLogEventActionChangeUsernames alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSString *item = [is readString];
            [items addObject:item == nil ? @"" : item];
        }
        obj.prev_value = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSString *item = [is readString];
            [items addObject:item == nil ? @"" : item];
        }
        obj.n_new_value = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.prev_value.count];
        for (id item in self.prev_value) {
            [os writeString:item];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.n_new_value.count];
        for (id item in self.n_new_value) {
            [os writeString:item];
        }
    }
}
@end

@implementation ModernTL_channelAdminLogEventActionChangeWallpaper
- (int32_t)TLconstructorSignature { return (int32_t)0x31bb5d52; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionChangeWallpaper *obj = [[ModernTL_channelAdminLogEventActionChangeWallpaper alloc] init];
    obj.prev_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_value, true);
    TLMetaClassStore::serializeObject(os, self.n_new_value, true);
}
@end

