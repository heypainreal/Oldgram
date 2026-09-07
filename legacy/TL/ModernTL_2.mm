// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
#import "ModernTL.h"
#import <objc/runtime.h>
#import "NSInputStream+TL.h"
#import "NSOutputStream+TL.h"
#import "TLMetaClassStore.h"

@implementation ModernTL_notifyChats
- (int32_t)TLconstructorSignature { return (int32_t)0xc007cec3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notifyChats *obj = [[ModernTL_notifyChats alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_notifyCommunity
- (int32_t)TLconstructorSignature { return (int32_t)0xbe376999; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notifyCommunity *obj = [[ModernTL_notifyCommunity alloc] init];
    obj.community_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.community_id];
}
@end

@implementation ModernTL_notifyForumTopic
- (int32_t)TLconstructorSignature { return (int32_t)0x226e6308; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notifyForumTopic *obj = [[ModernTL_notifyForumTopic alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.top_msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.top_msg_id];
}
@end

@implementation ModernTL_notifyPeer
- (int32_t)TLconstructorSignature { return (int32_t)0x9fd40bd8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notifyPeer *obj = [[ModernTL_notifyPeer alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_notifyUsers
- (int32_t)TLconstructorSignature { return (int32_t)0xb4c83b4c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notifyUsers *obj = [[ModernTL_notifyUsers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_outboxReadDate
- (int32_t)TLconstructorSignature { return (int32_t)0x3bb842ac; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_outboxReadDate *obj = [[ModernTL_outboxReadDate alloc] init];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_page
- (int32_t)TLconstructorSignature { return (int32_t)0x98657f0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_page *obj = [[ModernTL_page alloc] init];
    obj.flags = [is readInt32];
    obj.url = [is readString];
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
    if (obj.flags & (1 << 3)) {
        obj.views = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.url == nil ? @"" : self.url];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocks.count];
        for (id item in self.blocks) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.photos.count];
        for (id item in self.photos) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.documents.count];
        for (id item in self.documents) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.views];
    }
}
@end

@implementation ModernTL_inputPageBlockMap
- (int32_t)TLconstructorSignature { return (int32_t)0x574b617f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPageBlockMap *obj = [[ModernTL_inputPageBlockMap alloc] init];
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.zoom = [is readInt32];
    obj.w = [is readInt32];
    obj.h = [is readInt32];
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo, true);
    [os writeInt32:self.zoom];
    [os writeInt32:self.w];
    [os writeInt32:self.h];
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockAnchor
- (int32_t)TLconstructorSignature { return (int32_t)0xce0d37b0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockAnchor *obj = [[ModernTL_pageBlockAnchor alloc] init];
    obj.name = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.name == nil ? @"" : self.name];
}
@end

@implementation ModernTL_pageBlockAudio
- (int32_t)TLconstructorSignature { return (int32_t)0x804361ea; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockAudio *obj = [[ModernTL_pageBlockAudio alloc] init];
    obj.audio_id = [is readInt64];
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.audio_id];
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockAuthorDate
- (int32_t)TLconstructorSignature { return (int32_t)0xbaafe5e0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockAuthorDate *obj = [[ModernTL_pageBlockAuthorDate alloc] init];
    obj.author = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.published_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.author, true);
    [os writeInt32:self.published_date];
}
@end

@implementation ModernTL_pageBlockBlockquote
- (int32_t)TLconstructorSignature { return (int32_t)0x263d7c26; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockBlockquote *obj = [[ModernTL_pageBlockBlockquote alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockBlockquoteBlocks
- (int32_t)TLconstructorSignature { return (int32_t)0x0e6e47c4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockBlockquoteBlocks *obj = [[ModernTL_pageBlockBlockquoteBlocks alloc] init];
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
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocks.count];
        for (id item in self.blocks) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockChannel
- (int32_t)TLconstructorSignature { return (int32_t)0xef1751b5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockChannel *obj = [[ModernTL_pageBlockChannel alloc] init];
    obj.channel = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.channel, true);
}
@end

@implementation ModernTL_pageBlockCollage
- (int32_t)TLconstructorSignature { return (int32_t)0x65a0fa4d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockCollage *obj = [[ModernTL_pageBlockCollage alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.items = items;
    }
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.items.count];
        for (id item in self.items) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockCover
- (int32_t)TLconstructorSignature { return (int32_t)0x39f23300; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockCover *obj = [[ModernTL_pageBlockCover alloc] init];
    obj.cover = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.cover, true);
}
@end

@implementation ModernTL_pageBlockDetails
- (int32_t)TLconstructorSignature { return (int32_t)0x76768bed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockDetails *obj = [[ModernTL_pageBlockDetails alloc] init];
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
    obj.title = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    TLMetaClassStore::serializeObject(os, self.title, true);
}
@end

@implementation ModernTL_pageBlockDivider
- (int32_t)TLconstructorSignature { return (int32_t)0xdb20b188; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockDivider *obj = [[ModernTL_pageBlockDivider alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_pageBlockEmbed
- (int32_t)TLconstructorSignature { return (int32_t)0xa8718dc5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockEmbed *obj = [[ModernTL_pageBlockEmbed alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.url = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.html = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.poster_photo_id = [is readInt64];
    }
    if (obj.flags & (1 << 5)) {
        obj.w = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.h = [is readInt32];
    }
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.html == nil ? @"" : self.html];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt64:self.poster_photo_id];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.w];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.h];
    }
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockEmbedPost
- (int32_t)TLconstructorSignature { return (int32_t)0xf259a80b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockEmbedPost *obj = [[ModernTL_pageBlockEmbedPost alloc] init];
    obj.url = [is readString];
    obj.webpage_id = [is readInt64];
    obj.author_photo_id = [is readInt64];
    obj.author = [is readString];
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
        obj.blocks = items;
    }
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt64:self.webpage_id];
    [os writeInt64:self.author_photo_id];
    [os writeString:self.author == nil ? @"" : self.author];
    [os writeInt32:self.date];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocks.count];
        for (id item in self.blocks) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockFooter
- (int32_t)TLconstructorSignature { return (int32_t)0x48870999; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockFooter *obj = [[ModernTL_pageBlockFooter alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockHeader
- (int32_t)TLconstructorSignature { return (int32_t)0xbfd064ec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockHeader *obj = [[ModernTL_pageBlockHeader alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockHeading1
- (int32_t)TLconstructorSignature { return (int32_t)0xbaff072f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockHeading1 *obj = [[ModernTL_pageBlockHeading1 alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockHeading2
- (int32_t)TLconstructorSignature { return (int32_t)0x096b2aec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockHeading2 *obj = [[ModernTL_pageBlockHeading2 alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockHeading3
- (int32_t)TLconstructorSignature { return (int32_t)0x67e731ad; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockHeading3 *obj = [[ModernTL_pageBlockHeading3 alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockHeading4
- (int32_t)TLconstructorSignature { return (int32_t)0xb532772b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockHeading4 *obj = [[ModernTL_pageBlockHeading4 alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockHeading5
- (int32_t)TLconstructorSignature { return (int32_t)0xdbbe6c6a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockHeading5 *obj = [[ModernTL_pageBlockHeading5 alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockHeading6
- (int32_t)TLconstructorSignature { return (int32_t)0x682a41a9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockHeading6 *obj = [[ModernTL_pageBlockHeading6 alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockKicker
- (int32_t)TLconstructorSignature { return (int32_t)0x1e148390; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockKicker *obj = [[ModernTL_pageBlockKicker alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockList
- (int32_t)TLconstructorSignature { return (int32_t)0xe4e88011; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockList *obj = [[ModernTL_pageBlockList alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.items = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.items.count];
        for (id item in self.items) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_pageBlockMap
- (int32_t)TLconstructorSignature { return (int32_t)0xa44f3ef6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockMap *obj = [[ModernTL_pageBlockMap alloc] init];
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.zoom = [is readInt32];
    obj.w = [is readInt32];
    obj.h = [is readInt32];
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo, true);
    [os writeInt32:self.zoom];
    [os writeInt32:self.w];
    [os writeInt32:self.h];
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockMath
- (int32_t)TLconstructorSignature { return (int32_t)0x59080c20; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockMath *obj = [[ModernTL_pageBlockMath alloc] init];
    obj.source = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.source == nil ? @"" : self.source];
}
@end

@implementation ModernTL_pageBlockOrderedList
- (int32_t)TLconstructorSignature { return (int32_t)0x1fd6f6c1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockOrderedList *obj = [[ModernTL_pageBlockOrderedList alloc] init];
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
        obj.items = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.start = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.type = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.items.count];
        for (id item in self.items) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.start];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.type == nil ? @"" : self.type];
    }
}
@end

@implementation ModernTL_pageBlockParagraph
- (int32_t)TLconstructorSignature { return (int32_t)0x467a0766; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockParagraph *obj = [[ModernTL_pageBlockParagraph alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockPhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x1759c560; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockPhoto *obj = [[ModernTL_pageBlockPhoto alloc] init];
    obj.flags = [is readInt32];
    obj.photo_id = [is readInt64];
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.url = [is readString];
    }
    if (obj.flags & (1 << 0)) {
        obj.webpage_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.photo_id];
    TLMetaClassStore::serializeObject(os, self.caption, true);
    if (self.flags & (1 << 0)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.webpage_id];
    }
}
@end

@implementation ModernTL_pageBlockPreformatted
- (int32_t)TLconstructorSignature { return (int32_t)0xc070d93e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockPreformatted *obj = [[ModernTL_pageBlockPreformatted alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.language = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
    [os writeString:self.language == nil ? @"" : self.language];
}
@end

@implementation ModernTL_pageBlockPullquote
- (int32_t)TLconstructorSignature { return (int32_t)0x4f4456d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockPullquote *obj = [[ModernTL_pageBlockPullquote alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockRelatedArticles
- (int32_t)TLconstructorSignature { return (int32_t)0x16115a96; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockRelatedArticles *obj = [[ModernTL_pageBlockRelatedArticles alloc] init];
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
        obj.articles = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.title, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.articles.count];
        for (id item in self.articles) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_pageBlockSlideshow
- (int32_t)TLconstructorSignature { return (int32_t)0x031f9590; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockSlideshow *obj = [[ModernTL_pageBlockSlideshow alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.items = items;
    }
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.items.count];
        for (id item in self.items) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_pageBlockSubheader
- (int32_t)TLconstructorSignature { return (int32_t)0xf12bb6e1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockSubheader *obj = [[ModernTL_pageBlockSubheader alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockSubtitle
- (int32_t)TLconstructorSignature { return (int32_t)0x8ffa9a1f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockSubtitle *obj = [[ModernTL_pageBlockSubtitle alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockTable
- (int32_t)TLconstructorSignature { return (int32_t)0xbf4dea82; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockTable *obj = [[ModernTL_pageBlockTable alloc] init];
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
        obj.rows = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.title, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.rows.count];
        for (id item in self.rows) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_pageBlockThinking
- (int32_t)TLconstructorSignature { return (int32_t)0x3c29a3e2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockThinking *obj = [[ModernTL_pageBlockThinking alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockTitle
- (int32_t)TLconstructorSignature { return (int32_t)0x70abc3fd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockTitle *obj = [[ModernTL_pageBlockTitle alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageBlockUnsupported
- (int32_t)TLconstructorSignature { return (int32_t)0x13567e8a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockUnsupported *obj = [[ModernTL_pageBlockUnsupported alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_pageBlockVideo
- (int32_t)TLconstructorSignature { return (int32_t)0x7c8fe7b6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageBlockVideo *obj = [[ModernTL_pageBlockVideo alloc] init];
    obj.flags = [is readInt32];
    obj.video_id = [is readInt64];
    obj.caption = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.video_id];
    TLMetaClassStore::serializeObject(os, self.caption, true);
}
@end

@implementation ModernTL_botApp
- (int32_t)TLconstructorSignature { return (int32_t)0x95fcd1d6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botApp *obj = [[ModernTL_botApp alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.short_name = [is readString];
    obj.title = [is readString];
    obj.n_description = [is readString];
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.n_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeString:self.short_name == nil ? @"" : self.short_name];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
    TLMetaClassStore::serializeObject(os, self.photo, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.document, true);
    }
    [os writeInt64:self.n_hash];
}
@end

@implementation ModernTL_botAppNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x5da674b7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botAppNotModified *obj = [[ModernTL_botAppNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_botAppSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xc99b1950; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botAppSettings *obj = [[ModernTL_botAppSettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.placeholder_path = [is readBytes];
    }
    if (obj.flags & (1 << 1)) {
        obj.background_color = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.background_dark_color = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.header_color = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.header_dark_color = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.placeholder_path == nil ? [NSData data] : self.placeholder_path];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.background_color];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.background_dark_color];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.header_color];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.header_dark_color];
    }
}
@end

@implementation ModernTL_botBusinessConnection
- (int32_t)TLconstructorSignature { return (int32_t)0x8f34b2f5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botBusinessConnection *obj = [[ModernTL_botBusinessConnection alloc] init];
    obj.flags = [is readInt32];
    obj.connection_id = [is readString];
    obj.user_id = [is readInt64];
    obj.dc_id = [is readInt32];
    obj.date = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.connection_id == nil ? @"" : self.connection_id];
    [os writeInt64:self.user_id];
    [os writeInt32:self.dc_id];
    [os writeInt32:self.date];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.rights, true);
    }
}
@end

@implementation ModernTL_botCommand
- (int32_t)TLconstructorSignature { return (int32_t)0x9852d6d2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommand *obj = [[ModernTL_botCommand alloc] init];
    obj.flags = [is readInt32];
    obj.command = [is readString];
    obj.n_description = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.command == nil ? @"" : self.command];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
}
@end

@implementation ModernTL_botCommandScopeChatAdmins
- (int32_t)TLconstructorSignature { return (int32_t)0xb9aa606a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommandScopeChatAdmins *obj = [[ModernTL_botCommandScopeChatAdmins alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_botCommandScopeChats
- (int32_t)TLconstructorSignature { return (int32_t)0x6fe1a881; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommandScopeChats *obj = [[ModernTL_botCommandScopeChats alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_botCommandScopeDefault
- (int32_t)TLconstructorSignature { return (int32_t)0x2f6cb2ab; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommandScopeDefault *obj = [[ModernTL_botCommandScopeDefault alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_botCommandScopePeer
- (int32_t)TLconstructorSignature { return (int32_t)0xdb9d897d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommandScopePeer *obj = [[ModernTL_botCommandScopePeer alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_botCommandScopePeerAdmins
- (int32_t)TLconstructorSignature { return (int32_t)0x3fd863d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommandScopePeerAdmins *obj = [[ModernTL_botCommandScopePeerAdmins alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_botCommandScopePeerUser
- (int32_t)TLconstructorSignature { return (int32_t)0x0a1321f3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommandScopePeerUser *obj = [[ModernTL_botCommandScopePeerUser alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.user_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.user_id, true);
}
@end

@implementation ModernTL_botCommandScopeUsers
- (int32_t)TLconstructorSignature { return (int32_t)0x3c4f04d8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botCommandScopeUsers *obj = [[ModernTL_botCommandScopeUsers alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_botInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x4d8a0299; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInfo *obj = [[ModernTL_botInfo alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.user_id = [is readInt64];
    }
    if (obj.flags & (1 << 1)) {
        obj.n_description = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.description_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 5)) {
        obj.description_document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
            obj.commands = items;
        }
    }
    if (obj.flags & (1 << 3)) {
        obj.menu_button = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
        obj.privacy_policy_url = [is readString];
    }
    if (obj.flags & (1 << 8)) {
        obj.app_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 9)) {
        obj.verifier_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.user_id];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.n_description == nil ? @"" : self.n_description];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.description_photo, true);
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.description_document, true);
    }
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.commands.count];
            for (id item in self.commands) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.menu_button, true);
    }
    if (self.flags & (1 << 7)) {
        [os writeString:self.privacy_policy_url == nil ? @"" : self.privacy_policy_url];
    }
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.app_settings, true);
    }
    if (self.flags & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.verifier_settings, true);
    }
}
@end

@implementation ModernTL_botInlineMessageMediaAuto
- (int32_t)TLconstructorSignature { return (int32_t)0x764cf810; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageMediaAuto *obj = [[ModernTL_botInlineMessageMediaAuto alloc] init];
    obj.flags = [is readInt32];
    obj.message = [is readString];
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
            obj.entities = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.message == nil ? @"" : self.message];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
}
@end

@implementation ModernTL_botInlineMessageMediaContact
- (int32_t)TLconstructorSignature { return (int32_t)0x18d1cdc2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageMediaContact *obj = [[ModernTL_botInlineMessageMediaContact alloc] init];
    obj.flags = [is readInt32];
    obj.phone_number = [is readString];
    obj.first_name = [is readString];
    obj.last_name = [is readString];
    obj.vcard = [is readString];
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.phone_number == nil ? @"" : self.phone_number];
    [os writeString:self.first_name == nil ? @"" : self.first_name];
    [os writeString:self.last_name == nil ? @"" : self.last_name];
    [os writeString:self.vcard == nil ? @"" : self.vcard];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
}
@end

@implementation ModernTL_botInlineMessageMediaGeo
- (int32_t)TLconstructorSignature { return (int32_t)0x051846fd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageMediaGeo *obj = [[ModernTL_botInlineMessageMediaGeo alloc] init];
    obj.flags = [is readInt32];
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.heading = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.period = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.proximity_notification_radius = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.geo, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.heading];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.period];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.proximity_notification_radius];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
}
@end

@implementation ModernTL_botInlineMessageMediaInvoice
- (int32_t)TLconstructorSignature { return (int32_t)0x354a9b09; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageMediaInvoice *obj = [[ModernTL_botInlineMessageMediaInvoice alloc] init];
    obj.flags = [is readInt32];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
}
@end

@implementation ModernTL_botInlineMessageMediaVenue
- (int32_t)TLconstructorSignature { return (int32_t)0x8a86659c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageMediaVenue *obj = [[ModernTL_botInlineMessageMediaVenue alloc] init];
    obj.flags = [is readInt32];
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.title = [is readString];
    obj.address = [is readString];
    obj.provider = [is readString];
    obj.venue_id = [is readString];
    obj.venue_type = [is readString];
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.geo, true);
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.address == nil ? @"" : self.address];
    [os writeString:self.provider == nil ? @"" : self.provider];
    [os writeString:self.venue_id == nil ? @"" : self.venue_id];
    [os writeString:self.venue_type == nil ? @"" : self.venue_type];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
}
@end

@implementation ModernTL_botInlineMessageMediaWebPage
- (int32_t)TLconstructorSignature { return (int32_t)0x809ad9a6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageMediaWebPage *obj = [[ModernTL_botInlineMessageMediaWebPage alloc] init];
    obj.flags = [is readInt32];
    obj.message = [is readString];
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
            obj.entities = items;
        }
    }
    obj.url = [is readString];
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.message == nil ? @"" : self.message];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    [os writeString:self.url == nil ? @"" : self.url];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
}
@end

@implementation ModernTL_botInlineMessageRichMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x0a617e7b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageRichMessage *obj = [[ModernTL_botInlineMessageRichMessage alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.rich_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
    TLMetaClassStore::serializeObject(os, self.rich_message, true);
}
@end

@implementation ModernTL_botInlineMessageText
- (int32_t)TLconstructorSignature { return (int32_t)0x8c7f65e2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMessageText *obj = [[ModernTL_botInlineMessageText alloc] init];
    obj.flags = [is readInt32];
    obj.message = [is readString];
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
            obj.entities = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.message == nil ? @"" : self.message];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
}
@end

@implementation ModernTL_botInlineMediaResult
- (int32_t)TLconstructorSignature { return (int32_t)0x17db940b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineMediaResult *obj = [[ModernTL_botInlineMediaResult alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readString];
    obj.type = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.title = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.n_description = [is readString];
    }
    obj.send_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeString:self.type == nil ? @"" : self.type];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.document, true);
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.n_description == nil ? @"" : self.n_description];
    }
    TLMetaClassStore::serializeObject(os, self.send_message, true);
}
@end

@implementation ModernTL_botInlineResult
- (int32_t)TLconstructorSignature { return (int32_t)0x11965f3a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botInlineResult *obj = [[ModernTL_botInlineResult alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readString];
    obj.type = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.title = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.n_description = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.url = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.thumb = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 5)) {
        obj.content = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.send_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeString:self.type == nil ? @"" : self.type];
    if (self.flags & (1 << 1)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.n_description == nil ? @"" : self.n_description];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.thumb, true);
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.content, true);
    }
    TLMetaClassStore::serializeObject(os, self.send_message, true);
}
@end

@implementation ModernTL_botMenuButton
- (int32_t)TLconstructorSignature { return (int32_t)0xc7b57ce6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botMenuButton *obj = [[ModernTL_botMenuButton alloc] init];
    obj.text = [is readString];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_botMenuButtonCommands
- (int32_t)TLconstructorSignature { return (int32_t)0x4258c205; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botMenuButtonCommands *obj = [[ModernTL_botMenuButtonCommands alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_botMenuButtonDefault
- (int32_t)TLconstructorSignature { return (int32_t)0x7533a588; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botMenuButtonDefault *obj = [[ModernTL_botMenuButtonDefault alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_botPreviewMedia
- (int32_t)TLconstructorSignature { return (int32_t)0x23e91ba3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botPreviewMedia *obj = [[ModernTL_botPreviewMedia alloc] init];
    obj.date = [is readInt32];
    obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.date];
    TLMetaClassStore::serializeObject(os, self.media, true);
}
@end

@implementation ModernTL_botVerification
- (int32_t)TLconstructorSignature { return (int32_t)0xf93cd45c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botVerification *obj = [[ModernTL_botVerification alloc] init];
    obj.bot_id = [is readInt64];
    obj.icon = [is readInt64];
    obj.n_description = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.bot_id];
    [os writeInt64:self.icon];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
}
@end

@implementation ModernTL_botVerifierSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xb0cd6617; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_botVerifierSettings *obj = [[ModernTL_botVerifierSettings alloc] init];
    obj.flags = [is readInt32];
    obj.icon = [is readInt64];
    obj.company = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.custom_description = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.icon];
    [os writeString:self.company == nil ? @"" : self.company];
    if (self.flags & (1 << 0)) {
        [os writeString:self.custom_description == nil ? @"" : self.custom_description];
    }
}
@end

@implementation ModernTL_businessAwayMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xef156a5c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessAwayMessage *obj = [[ModernTL_businessAwayMessage alloc] init];
    obj.flags = [is readInt32];
    obj.shortcut_id = [is readInt32];
    obj.schedule = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.recipients = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.shortcut_id];
    TLMetaClassStore::serializeObject(os, self.schedule, true);
    TLMetaClassStore::serializeObject(os, self.recipients, true);
}
@end

@implementation ModernTL_businessAwayMessageScheduleAlways
- (int32_t)TLconstructorSignature { return (int32_t)0xc9b9e2b9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessAwayMessageScheduleAlways *obj = [[ModernTL_businessAwayMessageScheduleAlways alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_businessAwayMessageScheduleCustom
- (int32_t)TLconstructorSignature { return (int32_t)0xcc4d9ecc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessAwayMessageScheduleCustom *obj = [[ModernTL_businessAwayMessageScheduleCustom alloc] init];
    obj.start_date = [is readInt32];
    obj.end_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.start_date];
    [os writeInt32:self.end_date];
}
@end

@implementation ModernTL_businessAwayMessageScheduleOutsideWorkHours
- (int32_t)TLconstructorSignature { return (int32_t)0xc3f2f501; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_businessAwayMessageScheduleOutsideWorkHours *obj = [[ModernTL_businessAwayMessageScheduleOutsideWorkHours alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_pageCaption
- (int32_t)TLconstructorSignature { return (int32_t)0x6f747657; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageCaption *obj = [[ModernTL_pageCaption alloc] init];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.credit = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.text, true);
    TLMetaClassStore::serializeObject(os, self.credit, true);
}
@end

@implementation ModernTL_pageListItemBlocks
- (int32_t)TLconstructorSignature { return (int32_t)0x63ca67aa; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageListItemBlocks *obj = [[ModernTL_pageListItemBlocks alloc] init];
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
}
@end

@implementation ModernTL_pageListItemText
- (int32_t)TLconstructorSignature { return (int32_t)0x2f58683c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageListItemText *obj = [[ModernTL_pageListItemText alloc] init];
    obj.flags = [is readInt32];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.text, true);
}
@end

@implementation ModernTL_pageListOrderedItemBlocks
- (int32_t)TLconstructorSignature { return (int32_t)0x8ff2d5f0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageListOrderedItemBlocks *obj = [[ModernTL_pageListOrderedItemBlocks alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.num = [is readString];
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
        obj.blocks = items;
    }
    if (obj.flags & (1 << 3)) {
        obj.value = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.type = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        [os writeString:self.num == nil ? @"" : self.num];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocks.count];
        for (id item in self.blocks) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.value];
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.type == nil ? @"" : self.type];
    }
}
@end

@implementation ModernTL_pageListOrderedItemText
- (int32_t)TLconstructorSignature { return (int32_t)0x15031189; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageListOrderedItemText *obj = [[ModernTL_pageListOrderedItemText alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.num = [is readString];
    }
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 3)) {
        obj.value = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.type = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        [os writeString:self.num == nil ? @"" : self.num];
    }
    TLMetaClassStore::serializeObject(os, self.text, true);
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.value];
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.type == nil ? @"" : self.type];
    }
}
@end

@implementation ModernTL_pageRelatedArticle
- (int32_t)TLconstructorSignature { return (int32_t)0xb390dc08; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageRelatedArticle *obj = [[ModernTL_pageRelatedArticle alloc] init];
    obj.flags = [is readInt32];
    obj.url = [is readString];
    obj.webpage_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.title = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.n_description = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.photo_id = [is readInt64];
    }
    if (obj.flags & (1 << 3)) {
        obj.author = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.published_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt64:self.webpage_id];
    if (self.flags & (1 << 0)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.n_description == nil ? @"" : self.n_description];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt64:self.photo_id];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.author == nil ? @"" : self.author];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.published_date];
    }
}
@end

@implementation ModernTL_pageTableCell
- (int32_t)TLconstructorSignature { return (int32_t)0x34566b6a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageTableCell *obj = [[ModernTL_pageTableCell alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 7)) {
        obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.colspan = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.rowspan = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 7)) {
        TLMetaClassStore::serializeObject(os, self.text, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.colspan];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.rowspan];
    }
}
@end

@implementation ModernTL_pageTableRow
- (int32_t)TLconstructorSignature { return (int32_t)0xe0c0c5e5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pageTableRow *obj = [[ModernTL_pageTableRow alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.cells = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.cells.count];
        for (id item in self.cells) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_paidReactionPrivacyAnonymous
- (int32_t)TLconstructorSignature { return (int32_t)0x1f0c1ad9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_paidReactionPrivacyAnonymous *obj = [[ModernTL_paidReactionPrivacyAnonymous alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_paidReactionPrivacyDefault
- (int32_t)TLconstructorSignature { return (int32_t)0x206ad49e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_paidReactionPrivacyDefault *obj = [[ModernTL_paidReactionPrivacyDefault alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_paidReactionPrivacyPeer
- (int32_t)TLconstructorSignature { return (int32_t)0xdc6cfcf0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_paidReactionPrivacyPeer *obj = [[ModernTL_paidReactionPrivacyPeer alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_passkey
- (int32_t)TLconstructorSignature { return (int32_t)0x98613ebf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_passkey *obj = [[ModernTL_passkey alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readString];
    obj.name = [is readString];
    obj.date = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.software_emoji_id = [is readInt64];
    }
    if (obj.flags & (1 << 1)) {
        obj.last_usage_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeString:self.name == nil ? @"" : self.name];
    [os writeInt32:self.date];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.software_emoji_id];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.last_usage_date];
    }
}
@end

@implementation ModernTL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow
- (int32_t)TLconstructorSignature { return (int32_t)0x3a912d4a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow *obj = [[ModernTL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow alloc] init];
    obj.salt1 = [is readBytes];
    obj.salt2 = [is readBytes];
    obj.g = [is readInt32];
    obj.p = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeBytes:self.salt1 == nil ? [NSData data] : self.salt1];
    [os writeBytes:self.salt2 == nil ? [NSData data] : self.salt2];
    [os writeInt32:self.g];
    [os writeBytes:self.p == nil ? [NSData data] : self.p];
}
@end

@implementation ModernTL_passwordKdfAlgoUnknown
- (int32_t)TLconstructorSignature { return (int32_t)0xd45ab096; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_passwordKdfAlgoUnknown *obj = [[ModernTL_passwordKdfAlgoUnknown alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_paymentCharge
- (int32_t)TLconstructorSignature { return (int32_t)0xea02c27e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_paymentCharge *obj = [[ModernTL_paymentCharge alloc] init];
    obj.n_id = [is readString];
    obj.provider_charge_id = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeString:self.provider_charge_id == nil ? @"" : self.provider_charge_id];
}
@end

@implementation ModernTL_paymentFormMethod
- (int32_t)TLconstructorSignature { return (int32_t)0x88f8f21b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_paymentFormMethod *obj = [[ModernTL_paymentFormMethod alloc] init];
    obj.url = [is readString];
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_paymentRequestedInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x909c3f94; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_paymentRequestedInfo *obj = [[ModernTL_paymentRequestedInfo alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.name = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.phone = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.email = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.shipping_address = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.name == nil ? @"" : self.name];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.phone == nil ? @"" : self.phone];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.email == nil ? @"" : self.email];
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.shipping_address, true);
    }
}
@end

@implementation ModernTL_paymentSavedCredentialsCard
- (int32_t)TLconstructorSignature { return (int32_t)0xcdc27a1f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_paymentSavedCredentialsCard *obj = [[ModernTL_paymentSavedCredentialsCard alloc] init];
    obj.n_id = [is readString];
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_peerChannel
- (int32_t)TLconstructorSignature { return (int32_t)0xa2a5371e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerChannel *obj = [[ModernTL_peerChannel alloc] init];
    obj.channel_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
}
@end

@implementation ModernTL_peerChat
- (int32_t)TLconstructorSignature { return (int32_t)0x36c6019a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerChat *obj = [[ModernTL_peerChat alloc] init];
    obj.chat_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.chat_id];
}
@end

@implementation ModernTL_peerUser
- (int32_t)TLconstructorSignature { return (int32_t)0x59511722; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerUser *obj = [[ModernTL_peerUser alloc] init];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_peerBlocked
- (int32_t)TLconstructorSignature { return (int32_t)0xe8fd8014; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerBlocked *obj = [[ModernTL_peerBlocked alloc] init];
    obj.peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer_id, true);
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_inputPeerColorCollectible
- (int32_t)TLconstructorSignature { return (int32_t)0xb8ea86a9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPeerColorCollectible *obj = [[ModernTL_inputPeerColorCollectible alloc] init];
    obj.collectible_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.collectible_id];
}
@end

@implementation ModernTL_peerColor
- (int32_t)TLconstructorSignature { return (int32_t)0xb54b5acf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerColor *obj = [[ModernTL_peerColor alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.color = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.background_emoji_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.color];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt64:self.background_emoji_id];
    }
}
@end

@implementation ModernTL_peerColorCollectible
- (int32_t)TLconstructorSignature { return (int32_t)0xb9c0639a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerColorCollectible *obj = [[ModernTL_peerColorCollectible alloc] init];
    obj.flags = [is readInt32];
    obj.collectible_id = [is readInt64];
    obj.gift_emoji_id = [is readInt64];
    obj.background_emoji_id = [is readInt64];
    obj.accent_color = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.colors = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.dark_accent_color = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt32])];
            }
            obj.dark_colors = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.collectible_id];
    [os writeInt64:self.gift_emoji_id];
    [os writeInt64:self.background_emoji_id];
    [os writeInt32:self.accent_color];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.colors.count];
        for (id item in self.colors) {
            [os writeInt32:[item intValue]];
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.dark_accent_color];
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.dark_colors.count];
            for (id item in self.dark_colors) {
                [os writeInt32:[item intValue]];
            }
        }
    }
}
@end

@implementation ModernTL_peerLocated
- (int32_t)TLconstructorSignature { return (int32_t)0xca461b5d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerLocated *obj = [[ModernTL_peerLocated alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.expires = [is readInt32];
    obj.distance = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.expires];
    [os writeInt32:self.distance];
}
@end

@implementation ModernTL_peerSelfLocated
- (int32_t)TLconstructorSignature { return (int32_t)0xf8ec284b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerSelfLocated *obj = [[ModernTL_peerSelfLocated alloc] init];
    obj.expires = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.expires];
}
@end

@implementation ModernTL_peerNotifySettings
- (int32_t)TLconstructorSignature { return (int32_t)0x99622c0c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerNotifySettings *obj = [[ModernTL_peerNotifySettings alloc] init];
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
        obj.ios_sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 4)) {
        obj.android_sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 5)) {
        obj.other_sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 6)) {
        obj.stories_muted = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    if (obj.flags & (1 << 7)) {
        obj.stories_hide_sender = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    if (obj.flags & (1 << 8)) {
        obj.stories_ios_sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 9)) {
        obj.stories_android_sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 10)) {
        obj.stories_other_sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
        TLMetaClassStore::serializeObject(os, self.ios_sound, true);
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.android_sound, true);
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.other_sound, true);
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.stories_muted ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    if (self.flags & (1 << 7)) {
        [os writeInt32:self.stories_hide_sender ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.stories_ios_sound, true);
    }
    if (self.flags & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.stories_android_sound, true);
    }
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.stories_other_sound, true);
    }
}
@end

@implementation ModernTL_peerSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xf47741f7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerSettings *obj = [[ModernTL_peerSettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 6)) {
        obj.geo_distance = [is readInt32];
    }
    if (obj.flags & (1 << 9)) {
        obj.request_chat_title = [is readString];
    }
    if (obj.flags & (1 << 9)) {
        obj.request_chat_date = [is readInt32];
    }
    if (obj.flags & (1 << 13)) {
        obj.business_bot_id = [is readInt64];
    }
    if (obj.flags & (1 << 13)) {
        obj.business_bot_manage_url = [is readString];
    }
    if (obj.flags & (1 << 14)) {
        obj.charge_paid_message_stars = [is readInt64];
    }
    if (obj.flags & (1 << 15)) {
        obj.registration_month = [is readString];
    }
    if (obj.flags & (1 << 16)) {
        obj.phone_country = [is readString];
    }
    if (obj.flags & (1 << 17)) {
        obj.name_change_date = [is readInt32];
    }
    if (obj.flags & (1 << 18)) {
        obj.photo_change_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.geo_distance];
    }
    if (self.flags & (1 << 9)) {
        [os writeString:self.request_chat_title == nil ? @"" : self.request_chat_title];
    }
    if (self.flags & (1 << 9)) {
        [os writeInt32:self.request_chat_date];
    }
    if (self.flags & (1 << 13)) {
        [os writeInt64:self.business_bot_id];
    }
    if (self.flags & (1 << 13)) {
        [os writeString:self.business_bot_manage_url == nil ? @"" : self.business_bot_manage_url];
    }
    if (self.flags & (1 << 14)) {
        [os writeInt64:self.charge_paid_message_stars];
    }
    if (self.flags & (1 << 15)) {
        [os writeString:self.registration_month == nil ? @"" : self.registration_month];
    }
    if (self.flags & (1 << 16)) {
        [os writeString:self.phone_country == nil ? @"" : self.phone_country];
    }
    if (self.flags & (1 << 17)) {
        [os writeInt32:self.name_change_date];
    }
    if (self.flags & (1 << 18)) {
        [os writeInt32:self.photo_change_date];
    }
}
@end

@implementation ModernTL_peerStories
- (int32_t)TLconstructorSignature { return (int32_t)0x9a35e999; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_peerStories *obj = [[ModernTL_peerStories alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.max_read_id = [is readInt32];
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
        obj.stories = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.max_read_id];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.stories.count];
        for (id item in self.stories) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_pendingSuggestion
- (int32_t)TLconstructorSignature { return (int32_t)0xe7e82e12; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pendingSuggestion *obj = [[ModernTL_pendingSuggestion alloc] init];
    obj.suggestion = [is readString];
    obj.title = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_description = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.suggestion == nil ? @"" : self.suggestion];
    TLMetaClassStore::serializeObject(os, self.title, true);
    TLMetaClassStore::serializeObject(os, self.n_description, true);
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_personalChannel
- (int32_t)TLconstructorSignature { return (int32_t)0x19bc407d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_personalChannel *obj = [[ModernTL_personalChannel alloc] init];
    obj.user_id = [is readInt64];
    obj.channel_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeInt64:self.channel_id];
}
@end

@implementation ModernTL_phoneCall
- (int32_t)TLconstructorSignature { return (int32_t)0x30535af5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCall *obj = [[ModernTL_phoneCall alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.date = [is readInt32];
    obj.admin_id = [is readInt64];
    obj.participant_id = [is readInt64];
    obj.g_a_or_b = [is readBytes];
    obj.key_fingerprint = [is readInt64];
    obj.protocol = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.connections = items;
    }
    obj.start_date = [is readInt32];
    if (obj.flags & (1 << 7)) {
        obj.custom_parameters = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeInt32:self.date];
    [os writeInt64:self.admin_id];
    [os writeInt64:self.participant_id];
    [os writeBytes:self.g_a_or_b == nil ? [NSData data] : self.g_a_or_b];
    [os writeInt64:self.key_fingerprint];
    TLMetaClassStore::serializeObject(os, self.protocol, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.connections.count];
        for (id item in self.connections) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.start_date];
    if (self.flags & (1 << 7)) {
        TLMetaClassStore::serializeObject(os, self.custom_parameters, true);
    }
}
@end

@implementation ModernTL_phoneCallAccepted
- (int32_t)TLconstructorSignature { return (int32_t)0x3660c311; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallAccepted *obj = [[ModernTL_phoneCallAccepted alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.date = [is readInt32];
    obj.admin_id = [is readInt64];
    obj.participant_id = [is readInt64];
    obj.g_b = [is readBytes];
    obj.protocol = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeInt32:self.date];
    [os writeInt64:self.admin_id];
    [os writeInt64:self.participant_id];
    [os writeBytes:self.g_b == nil ? [NSData data] : self.g_b];
    TLMetaClassStore::serializeObject(os, self.protocol, true);
}
@end

@implementation ModernTL_phoneCallDiscarded
- (int32_t)TLconstructorSignature { return (int32_t)0x50ca4de1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallDiscarded *obj = [[ModernTL_phoneCallDiscarded alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.reason = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.duration = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.reason, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.duration];
    }
}
@end

@implementation ModernTL_phoneCallEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x5366c915; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallEmpty *obj = [[ModernTL_phoneCallEmpty alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_phoneCallRequested
- (int32_t)TLconstructorSignature { return (int32_t)0x14b0ed0c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallRequested *obj = [[ModernTL_phoneCallRequested alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.date = [is readInt32];
    obj.admin_id = [is readInt64];
    obj.participant_id = [is readInt64];
    obj.g_a_hash = [is readBytes];
    obj.protocol = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeInt32:self.date];
    [os writeInt64:self.admin_id];
    [os writeInt64:self.participant_id];
    [os writeBytes:self.g_a_hash == nil ? [NSData data] : self.g_a_hash];
    TLMetaClassStore::serializeObject(os, self.protocol, true);
}
@end

@implementation ModernTL_phoneCallWaiting
- (int32_t)TLconstructorSignature { return (int32_t)0xc5226f17; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallWaiting *obj = [[ModernTL_phoneCallWaiting alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.date = [is readInt32];
    obj.admin_id = [is readInt64];
    obj.participant_id = [is readInt64];
    obj.protocol = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.receive_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeInt32:self.date];
    [os writeInt64:self.admin_id];
    [os writeInt64:self.participant_id];
    TLMetaClassStore::serializeObject(os, self.protocol, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.receive_date];
    }
}
@end

@implementation ModernTL_phoneCallDiscardReasonBusy
- (int32_t)TLconstructorSignature { return (int32_t)0xfaf7e8c9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallDiscardReasonBusy *obj = [[ModernTL_phoneCallDiscardReasonBusy alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_phoneCallDiscardReasonDisconnect
- (int32_t)TLconstructorSignature { return (int32_t)0xe095c1a0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallDiscardReasonDisconnect *obj = [[ModernTL_phoneCallDiscardReasonDisconnect alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_phoneCallDiscardReasonHangup
- (int32_t)TLconstructorSignature { return (int32_t)0x57adc690; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallDiscardReasonHangup *obj = [[ModernTL_phoneCallDiscardReasonHangup alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_phoneCallDiscardReasonMigrateConferenceCall
- (int32_t)TLconstructorSignature { return (int32_t)0x9fbbf1f7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallDiscardReasonMigrateConferenceCall *obj = [[ModernTL_phoneCallDiscardReasonMigrateConferenceCall alloc] init];
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_phoneCallDiscardReasonMissed
- (int32_t)TLconstructorSignature { return (int32_t)0x85e42301; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallDiscardReasonMissed *obj = [[ModernTL_phoneCallDiscardReasonMissed alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_phoneCallProtocol
- (int32_t)TLconstructorSignature { return (int32_t)0xfc878fc8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneCallProtocol *obj = [[ModernTL_phoneCallProtocol alloc] init];
    obj.flags = [is readInt32];
    obj.min_layer = [is readInt32];
    obj.max_layer = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSString *item = [is readString];
            [items addObject:item == nil ? @"" : item];
        }
        obj.library_versions = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.min_layer];
    [os writeInt32:self.max_layer];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.library_versions.count];
        for (id item in self.library_versions) {
            [os writeString:item];
        }
    }
}
@end

@implementation ModernTL_phoneConnection
- (int32_t)TLconstructorSignature { return (int32_t)0x9cc123c7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneConnection *obj = [[ModernTL_phoneConnection alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.ip = [is readString];
    obj.ipv6 = [is readString];
    obj.port = [is readInt32];
    obj.peer_tag = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeString:self.ip == nil ? @"" : self.ip];
    [os writeString:self.ipv6 == nil ? @"" : self.ipv6];
    [os writeInt32:self.port];
    [os writeBytes:self.peer_tag == nil ? [NSData data] : self.peer_tag];
}
@end

@implementation ModernTL_phoneConnectionWebrtc
- (int32_t)TLconstructorSignature { return (int32_t)0x635fe375; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phoneConnectionWebrtc *obj = [[ModernTL_phoneConnectionWebrtc alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.ip = [is readString];
    obj.ipv6 = [is readString];
    obj.port = [is readInt32];
    obj.username = [is readString];
    obj.password = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeString:self.ip == nil ? @"" : self.ip];
    [os writeString:self.ipv6 == nil ? @"" : self.ipv6];
    [os writeInt32:self.port];
    [os writeString:self.username == nil ? @"" : self.username];
    [os writeString:self.password == nil ? @"" : self.password];
}
@end

@implementation ModernTL_photo
- (int32_t)TLconstructorSignature { return (int32_t)0xfb197a65; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photo *obj = [[ModernTL_photo alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.file_reference = [is readBytes];
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
        obj.sizes = items;
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
            obj.video_sizes = items;
        }
    }
    obj.dc_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
    [os writeInt32:self.date];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sizes.count];
        for (id item in self.sizes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.video_sizes.count];
            for (id item in self.video_sizes) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    [os writeInt32:self.dc_id];
}
@end

@implementation ModernTL_photoEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x2331b22d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photoEmpty *obj = [[ModernTL_photoEmpty alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_photoCachedSize
- (int32_t)TLconstructorSignature { return (int32_t)0x021e1ad6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photoCachedSize *obj = [[ModernTL_photoCachedSize alloc] init];
    obj.type = [is readString];
    obj.w = [is readInt32];
    obj.h = [is readInt32];
    obj.bytes = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.type == nil ? @"" : self.type];
    [os writeInt32:self.w];
    [os writeInt32:self.h];
    [os writeBytes:self.bytes == nil ? [NSData data] : self.bytes];
}
@end

@implementation ModernTL_photoPathSize
- (int32_t)TLconstructorSignature { return (int32_t)0xd8214d41; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photoPathSize *obj = [[ModernTL_photoPathSize alloc] init];
    obj.type = [is readString];
    obj.bytes = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.type == nil ? @"" : self.type];
    [os writeBytes:self.bytes == nil ? [NSData data] : self.bytes];
}
@end

@implementation ModernTL_photoSize
- (int32_t)TLconstructorSignature { return (int32_t)0x75c78e60; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photoSize *obj = [[ModernTL_photoSize alloc] init];
    obj.type = [is readString];
    obj.w = [is readInt32];
    obj.h = [is readInt32];
    obj.size = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.type == nil ? @"" : self.type];
    [os writeInt32:self.w];
    [os writeInt32:self.h];
    [os writeInt32:self.size];
}
@end

@implementation ModernTL_photoSizeEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x0e17e23c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photoSizeEmpty *obj = [[ModernTL_photoSizeEmpty alloc] init];
    obj.type = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.type == nil ? @"" : self.type];
}
@end

@implementation ModernTL_photoSizeProgressive
- (int32_t)TLconstructorSignature { return (int32_t)0xfa3efb95; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photoSizeProgressive *obj = [[ModernTL_photoSizeProgressive alloc] init];
    obj.type = [is readString];
    obj.w = [is readInt32];
    obj.h = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.sizes = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.type == nil ? @"" : self.type];
    [os writeInt32:self.w];
    [os writeInt32:self.h];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sizes.count];
        for (id item in self.sizes) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_photoStrippedSize
- (int32_t)TLconstructorSignature { return (int32_t)0xe0b0bc2e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photoStrippedSize *obj = [[ModernTL_photoStrippedSize alloc] init];
    obj.type = [is readString];
    obj.bytes = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.type == nil ? @"" : self.type];
    [os writeBytes:self.bytes == nil ? [NSData data] : self.bytes];
}
@end

@implementation ModernTL_poll
- (int32_t)TLconstructorSignature { return (int32_t)0x966e2dbf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_poll *obj = [[ModernTL_poll alloc] init];
    obj.n_id = [is readInt64];
    obj.flags = [is readInt32];
    obj.question = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.answers = items;
    }
    if (obj.flags & (1 << 4)) {
        obj.close_period = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.close_date = [is readInt32];
    }
    if (obj.flags & (1 << 12)) {
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
    obj.n_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.question, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.answers.count];
        for (id item in self.answers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.close_period];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.close_date];
    }
    if (self.flags & (1 << 12)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.countries_iso2.count];
            for (id item in self.countries_iso2) {
                [os writeString:item];
            }
        }
    }
    [os writeInt64:self.n_hash];
}
@end

@implementation ModernTL_inputPollAnswer
- (int32_t)TLconstructorSignature { return (int32_t)0x199fed96; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputPollAnswer *obj = [[ModernTL_inputPollAnswer alloc] init];
    obj.flags = [is readInt32];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.text, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.media, true);
    }
}
@end

@implementation ModernTL_pollAnswer
- (int32_t)TLconstructorSignature { return (int32_t)0x4b7d786a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pollAnswer *obj = [[ModernTL_pollAnswer alloc] init];
    obj.flags = [is readInt32];
    obj.text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.option = [is readBytes];
    if (obj.flags & (1 << 0)) {
        obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.added_by = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.text, true);
    [os writeBytes:self.option == nil ? [NSData data] : self.option];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.media, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.added_by, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.date];
    }
}
@end

@implementation ModernTL_pollAnswerVoters
- (int32_t)TLconstructorSignature { return (int32_t)0x3645230a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pollAnswerVoters *obj = [[ModernTL_pollAnswerVoters alloc] init];
    obj.flags = [is readInt32];
    obj.option = [is readBytes];
    if (obj.flags & (1 << 2)) {
        obj.voters = [is readInt32];
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
            obj.recent_voters = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeBytes:self.option == nil ? [NSData data] : self.option];
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.voters];
    }
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.recent_voters.count];
            for (id item in self.recent_voters) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_pollResults
- (int32_t)TLconstructorSignature { return (int32_t)0xba7bb15e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_pollResults *obj = [[ModernTL_pollResults alloc] init];
    obj.flags = [is readInt32];
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
            obj.results = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        obj.total_voters = [is readInt32];
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
            obj.recent_voters = items;
        }
    }
    if (obj.flags & (1 << 4)) {
        obj.solution = [is readString];
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
            obj.solution_entities = items;
        }
    }
    if (obj.flags & (1 << 5)) {
        obj.solution_media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.results.count];
            for (id item in self.results) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.total_voters];
    }
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.recent_voters.count];
            for (id item in self.recent_voters) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.solution == nil ? @"" : self.solution];
    }
    if (self.flags & (1 << 4)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.solution_entities.count];
            for (id item in self.solution_entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.solution_media, true);
    }
}
@end

@implementation ModernTL_popularContact
- (int32_t)TLconstructorSignature { return (int32_t)0x5ce14175; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_popularContact *obj = [[ModernTL_popularContact alloc] init];
    obj.client_id = [is readInt64];
    obj.importers = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.client_id];
    [os writeInt32:self.importers];
}
@end

@implementation ModernTL_postAddress
- (int32_t)TLconstructorSignature { return (int32_t)0x1e8caaeb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_postAddress *obj = [[ModernTL_postAddress alloc] init];
    obj.street_line1 = [is readString];
    obj.street_line2 = [is readString];
    obj.city = [is readString];
    obj.state = [is readString];
    obj.country_iso2 = [is readString];
    obj.post_code = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.street_line1 == nil ? @"" : self.street_line1];
    [os writeString:self.street_line2 == nil ? @"" : self.street_line2];
    [os writeString:self.city == nil ? @"" : self.city];
    [os writeString:self.state == nil ? @"" : self.state];
    [os writeString:self.country_iso2 == nil ? @"" : self.country_iso2];
    [os writeString:self.post_code == nil ? @"" : self.post_code];
}
@end

@implementation ModernTL_postInteractionCountersMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xe7058e7f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_postInteractionCountersMessage *obj = [[ModernTL_postInteractionCountersMessage alloc] init];
    obj.msg_id = [is readInt32];
    obj.views = [is readInt32];
    obj.forwards = [is readInt32];
    obj.reactions = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.msg_id];
    [os writeInt32:self.views];
    [os writeInt32:self.forwards];
    [os writeInt32:self.reactions];
}
@end

@implementation ModernTL_postInteractionCountersStory
- (int32_t)TLconstructorSignature { return (int32_t)0x8a480e27; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_postInteractionCountersStory *obj = [[ModernTL_postInteractionCountersStory alloc] init];
    obj.story_id = [is readInt32];
    obj.views = [is readInt32];
    obj.forwards = [is readInt32];
    obj.reactions = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.story_id];
    [os writeInt32:self.views];
    [os writeInt32:self.forwards];
    [os writeInt32:self.reactions];
}
@end

@implementation ModernTL_premiumGiftCodeOption
- (int32_t)TLconstructorSignature { return (int32_t)0x257e962b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_premiumGiftCodeOption *obj = [[ModernTL_premiumGiftCodeOption alloc] init];
    obj.flags = [is readInt32];
    obj.users = [is readInt32];
    obj.months = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.store_product = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.store_quantity = [is readInt32];
    }
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.users];
    [os writeInt32:self.months];
    if (self.flags & (1 << 0)) {
        [os writeString:self.store_product == nil ? @"" : self.store_product];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.store_quantity];
    }
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
}
@end

@implementation ModernTL_premiumSubscriptionOption
- (int32_t)TLconstructorSignature { return (int32_t)0x5f2d1df2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_premiumSubscriptionOption *obj = [[ModernTL_premiumSubscriptionOption alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.transaction = [is readString];
    }
    obj.months = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    obj.bot_url = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.store_product = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 3)) {
        [os writeString:self.transaction == nil ? @"" : self.transaction];
    }
    [os writeInt32:self.months];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    [os writeString:self.bot_url == nil ? @"" : self.bot_url];
    if (self.flags & (1 << 0)) {
        [os writeString:self.store_product == nil ? @"" : self.store_product];
    }
}
@end

@implementation ModernTL_prepaidGiveaway
- (int32_t)TLconstructorSignature { return (int32_t)0xb2539d54; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_prepaidGiveaway *obj = [[ModernTL_prepaidGiveaway alloc] init];
    obj.n_id = [is readInt64];
    obj.months = [is readInt32];
    obj.quantity = [is readInt32];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.months];
    [os writeInt32:self.quantity];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_prepaidStarsGiveaway
- (int32_t)TLconstructorSignature { return (int32_t)0x9a9d77e0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_prepaidStarsGiveaway *obj = [[ModernTL_prepaidStarsGiveaway alloc] init];
    obj.n_id = [is readInt64];
    obj.stars = [is readInt64];
    obj.quantity = [is readInt32];
    obj.boosts = [is readInt32];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt64:self.stars];
    [os writeInt32:self.quantity];
    [os writeInt32:self.boosts];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_privacyKeyAbout
- (int32_t)TLconstructorSignature { return (int32_t)0xa486b761; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyAbout *obj = [[ModernTL_privacyKeyAbout alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyAddedByPhone
- (int32_t)TLconstructorSignature { return (int32_t)0x42ffd42b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyAddedByPhone *obj = [[ModernTL_privacyKeyAddedByPhone alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyBirthday
- (int32_t)TLconstructorSignature { return (int32_t)0x2000a518; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyBirthday *obj = [[ModernTL_privacyKeyBirthday alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyChatInvite
- (int32_t)TLconstructorSignature { return (int32_t)0x500e6dfa; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyChatInvite *obj = [[ModernTL_privacyKeyChatInvite alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyForwards
- (int32_t)TLconstructorSignature { return (int32_t)0x69ec56a3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyForwards *obj = [[ModernTL_privacyKeyForwards alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyNoPaidMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x17d348d2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyNoPaidMessages *obj = [[ModernTL_privacyKeyNoPaidMessages alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyPhoneCall
- (int32_t)TLconstructorSignature { return (int32_t)0x3d662b7b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyPhoneCall *obj = [[ModernTL_privacyKeyPhoneCall alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyPhoneNumber
- (int32_t)TLconstructorSignature { return (int32_t)0xd19ae46d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyPhoneNumber *obj = [[ModernTL_privacyKeyPhoneNumber alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyPhoneP2P
- (int32_t)TLconstructorSignature { return (int32_t)0x39491cc8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyPhoneP2P *obj = [[ModernTL_privacyKeyPhoneP2P alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyProfilePhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x96151fed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyProfilePhoto *obj = [[ModernTL_privacyKeyProfilePhoto alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeySavedMusic
- (int32_t)TLconstructorSignature { return (int32_t)0xff7a571b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeySavedMusic *obj = [[ModernTL_privacyKeySavedMusic alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyStarGiftsAutoSave
- (int32_t)TLconstructorSignature { return (int32_t)0x2ca4fdf8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyStarGiftsAutoSave *obj = [[ModernTL_privacyKeyStarGiftsAutoSave alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyStatusTimestamp
- (int32_t)TLconstructorSignature { return (int32_t)0xbc2eab30; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyStatusTimestamp *obj = [[ModernTL_privacyKeyStatusTimestamp alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyKeyVoiceMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x0697f414; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyKeyVoiceMessages *obj = [[ModernTL_privacyKeyVoiceMessages alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueAllowAll
- (int32_t)TLconstructorSignature { return (int32_t)0x65427b82; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueAllowAll *obj = [[ModernTL_privacyValueAllowAll alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueAllowBots
- (int32_t)TLconstructorSignature { return (int32_t)0x21461b5d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueAllowBots *obj = [[ModernTL_privacyValueAllowBots alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueAllowChatParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0x6b134e8e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueAllowChatParticipants *obj = [[ModernTL_privacyValueAllowChatParticipants alloc] init];
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

@implementation ModernTL_privacyValueAllowCloseFriends
- (int32_t)TLconstructorSignature { return (int32_t)0xf7e8d89b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueAllowCloseFriends *obj = [[ModernTL_privacyValueAllowCloseFriends alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueAllowContacts
- (int32_t)TLconstructorSignature { return (int32_t)0xfffe1bac; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueAllowContacts *obj = [[ModernTL_privacyValueAllowContacts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueAllowPremium
- (int32_t)TLconstructorSignature { return (int32_t)0xece9814b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueAllowPremium *obj = [[ModernTL_privacyValueAllowPremium alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueAllowUsers
- (int32_t)TLconstructorSignature { return (int32_t)0xb8905fb2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueAllowUsers *obj = [[ModernTL_privacyValueAllowUsers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
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
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_privacyValueDisallowAll
- (int32_t)TLconstructorSignature { return (int32_t)0x8b73e763; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueDisallowAll *obj = [[ModernTL_privacyValueDisallowAll alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueDisallowBots
- (int32_t)TLconstructorSignature { return (int32_t)0xf6a5f82f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueDisallowBots *obj = [[ModernTL_privacyValueDisallowBots alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueDisallowChatParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0x41c87565; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueDisallowChatParticipants *obj = [[ModernTL_privacyValueDisallowChatParticipants alloc] init];
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

@implementation ModernTL_privacyValueDisallowContacts
- (int32_t)TLconstructorSignature { return (int32_t)0xf888fa1a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueDisallowContacts *obj = [[ModernTL_privacyValueDisallowContacts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_privacyValueDisallowUsers
- (int32_t)TLconstructorSignature { return (int32_t)0xe4621141; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_privacyValueDisallowUsers *obj = [[ModernTL_privacyValueDisallowUsers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
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
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_profileTabFiles
- (int32_t)TLconstructorSignature { return (int32_t)0xab339c00; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabFiles *obj = [[ModernTL_profileTabFiles alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_profileTabGifs
- (int32_t)TLconstructorSignature { return (int32_t)0xa2c0f695; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabGifs *obj = [[ModernTL_profileTabGifs alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_profileTabGifts
- (int32_t)TLconstructorSignature { return (int32_t)0x4d4bd46a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabGifts *obj = [[ModernTL_profileTabGifts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_profileTabLinks
- (int32_t)TLconstructorSignature { return (int32_t)0xd3656499; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabLinks *obj = [[ModernTL_profileTabLinks alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_profileTabMedia
- (int32_t)TLconstructorSignature { return (int32_t)0x72c64955; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabMedia *obj = [[ModernTL_profileTabMedia alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_profileTabMusic
- (int32_t)TLconstructorSignature { return (int32_t)0x9f27d26e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabMusic *obj = [[ModernTL_profileTabMusic alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_profileTabPosts
- (int32_t)TLconstructorSignature { return (int32_t)0xb98cd696; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabPosts *obj = [[ModernTL_profileTabPosts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_profileTabVoice
- (int32_t)TLconstructorSignature { return (int32_t)0xe477092e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_profileTabVoice *obj = [[ModernTL_profileTabVoice alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_publicForwardMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x01f2bf4a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_publicForwardMessage *obj = [[ModernTL_publicForwardMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_publicForwardStory
- (int32_t)TLconstructorSignature { return (int32_t)0xedf3add0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_publicForwardStory *obj = [[ModernTL_publicForwardStory alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.story = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    TLMetaClassStore::serializeObject(os, self.story, true);
}
@end

@implementation ModernTL_quickReply
- (int32_t)TLconstructorSignature { return (int32_t)0x0697102b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_quickReply *obj = [[ModernTL_quickReply alloc] init];
    obj.shortcut_id = [is readInt32];
    obj.shortcut = [is readString];
    obj.top_message = [is readInt32];
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.shortcut_id];
    [os writeString:self.shortcut == nil ? @"" : self.shortcut];
    [os writeInt32:self.top_message];
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_reactionCustomEmoji
- (int32_t)TLconstructorSignature { return (int32_t)0x8935fc73; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionCustomEmoji *obj = [[ModernTL_reactionCustomEmoji alloc] init];
    obj.document_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.document_id];
}
@end

@implementation ModernTL_reactionEmoji
- (int32_t)TLconstructorSignature { return (int32_t)0x1b2286b8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionEmoji *obj = [[ModernTL_reactionEmoji alloc] init];
    obj.emoticon = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.emoticon == nil ? @"" : self.emoticon];
}
@end

@implementation ModernTL_reactionEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x79f5d419; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionEmpty *obj = [[ModernTL_reactionEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_reactionPaid
- (int32_t)TLconstructorSignature { return (int32_t)0x523da4eb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionPaid *obj = [[ModernTL_reactionPaid alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_reactionCount
- (int32_t)TLconstructorSignature { return (int32_t)0xa3d1cb80; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionCount *obj = [[ModernTL_reactionCount alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.chosen_order = [is readInt32];
    }
    obj.reaction = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.chosen_order];
    }
    TLMetaClassStore::serializeObject(os, self.reaction, true);
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_reactionNotificationsFromAll
- (int32_t)TLconstructorSignature { return (int32_t)0x4b9e22a0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionNotificationsFromAll *obj = [[ModernTL_reactionNotificationsFromAll alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_reactionNotificationsFromContacts
- (int32_t)TLconstructorSignature { return (int32_t)0xbac3a61a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionNotificationsFromContacts *obj = [[ModernTL_reactionNotificationsFromContacts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_reactionsNotifySettings
- (int32_t)TLconstructorSignature { return (int32_t)0x71e4ea58; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_reactionsNotifySettings *obj = [[ModernTL_reactionsNotifySettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.messages_notify_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.stories_notify_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.poll_votes_notify_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.sound = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.show_previews = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.messages_notify_from, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.stories_notify_from, true);
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.poll_votes_notify_from, true);
    }
    TLMetaClassStore::serializeObject(os, self.sound, true);
    [os writeInt32:self.show_previews ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_readParticipantDate
- (int32_t)TLconstructorSignature { return (int32_t)0x4a4ff172; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_readParticipantDate *obj = [[ModernTL_readParticipantDate alloc] init];
    obj.user_id = [is readInt64];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_receivedNotifyMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xa384b779; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_receivedNotifyMessage *obj = [[ModernTL_receivedNotifyMessage alloc] init];
    obj.n_id = [is readInt32];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_recentMeUrlChat
- (int32_t)TLconstructorSignature { return (int32_t)0xb2da71d2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_recentMeUrlChat *obj = [[ModernTL_recentMeUrlChat alloc] init];
    obj.url = [is readString];
    obj.chat_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt64:self.chat_id];
}
@end

@implementation ModernTL_recentMeUrlChatInvite
- (int32_t)TLconstructorSignature { return (int32_t)0xeb49081d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_recentMeUrlChatInvite *obj = [[ModernTL_recentMeUrlChatInvite alloc] init];
    obj.url = [is readString];
    obj.chat_invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    TLMetaClassStore::serializeObject(os, self.chat_invite, true);
}
@end

@implementation ModernTL_recentMeUrlStickerSet
- (int32_t)TLconstructorSignature { return (int32_t)0xbc0a57dc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_recentMeUrlStickerSet *obj = [[ModernTL_recentMeUrlStickerSet alloc] init];
    obj.url = [is readString];
    obj.set = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    TLMetaClassStore::serializeObject(os, self.set, true);
}
@end

@implementation ModernTL_recentMeUrlUnknown
- (int32_t)TLconstructorSignature { return (int32_t)0x46e1d13d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_recentMeUrlUnknown *obj = [[ModernTL_recentMeUrlUnknown alloc] init];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_recentMeUrlUser
- (int32_t)TLconstructorSignature { return (int32_t)0xb92c09e2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_recentMeUrlUser *obj = [[ModernTL_recentMeUrlUser alloc] init];
    obj.url = [is readString];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_recentStory
- (int32_t)TLconstructorSignature { return (int32_t)0x711d692d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_recentStory *obj = [[ModernTL_recentStory alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.max_id = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.max_id];
    }
}
@end

@implementation ModernTL_replyInlineMarkup
- (int32_t)TLconstructorSignature { return (int32_t)0x48a30254; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_replyInlineMarkup *obj = [[ModernTL_replyInlineMarkup alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.rows = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.rows.count];
        for (id item in self.rows) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_replyKeyboardForceReply
- (int32_t)TLconstructorSignature { return (int32_t)0x86b40b08; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_replyKeyboardForceReply *obj = [[ModernTL_replyKeyboardForceReply alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.placeholder = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 3)) {
        [os writeString:self.placeholder == nil ? @"" : self.placeholder];
    }
}
@end

@implementation ModernTL_replyKeyboardHide
- (int32_t)TLconstructorSignature { return (int32_t)0xa03e5b85; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_replyKeyboardHide *obj = [[ModernTL_replyKeyboardHide alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_replyKeyboardMarkup
- (int32_t)TLconstructorSignature { return (int32_t)0x85dd99d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_replyKeyboardMarkup *obj = [[ModernTL_replyKeyboardMarkup alloc] init];
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
        obj.rows = items;
    }
    if (obj.flags & (1 << 3)) {
        obj.placeholder = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.rows.count];
        for (id item in self.rows) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.placeholder == nil ? @"" : self.placeholder];
    }
}
@end

@implementation ModernTL_inputReportReasonChildAbuse
- (int32_t)TLconstructorSignature { return (int32_t)0xadf44ee3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputReportReasonChildAbuse *obj = [[ModernTL_inputReportReasonChildAbuse alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputReportReasonCopyright
- (int32_t)TLconstructorSignature { return (int32_t)0x9b89f93a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputReportReasonCopyright *obj = [[ModernTL_inputReportReasonCopyright alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

