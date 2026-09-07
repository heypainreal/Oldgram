// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
#import "ModernTL.h"
#import <objc/runtime.h>
#import "NSInputStream+TL.h"
#import "NSOutputStream+TL.h"
#import "TLMetaClassStore.h"

@implementation ModernTL_help_peerColors
- (int32_t)TLconstructorSignature { return (int32_t)0x00f8ed08; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_peerColors *obj = [[ModernTL_help_peerColors alloc] init];
    obj.n_hash = [is readInt32];
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
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.colors.count];
        for (id item in self.colors) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_help_peerColorsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x2ba1f5ce; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_peerColorsNotModified *obj = [[ModernTL_help_peerColorsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_help_premiumPromo
- (int32_t)TLconstructorSignature { return (int32_t)0x5334759c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_premiumPromo *obj = [[ModernTL_help_premiumPromo alloc] init];
    obj.status_text = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.status_entities = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSString *item = [is readString];
            [items addObject:item == nil ? @"" : item];
        }
        obj.video_sections = items;
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
        obj.videos = items;
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
        obj.period_options = items;
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
    [os writeString:self.status_text == nil ? @"" : self.status_text];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.status_entities.count];
        for (id item in self.status_entities) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.video_sections.count];
        for (id item in self.video_sections) {
            [os writeString:item];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.videos.count];
        for (id item in self.videos) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.period_options.count];
        for (id item in self.period_options) {
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

@implementation ModernTL_help_promoData
- (int32_t)TLconstructorSignature { return (int32_t)0x08a4d87a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_promoData *obj = [[ModernTL_help_promoData alloc] init];
    obj.flags = [is readInt32];
    obj.expires = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.psa_type = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.psa_message = [is readString];
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSString *item = [is readString];
            [items addObject:item == nil ? @"" : item];
        }
        obj.pending_suggestions = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSString *item = [is readString];
            [items addObject:item == nil ? @"" : item];
        }
        obj.dismissed_suggestions = items;
    }
    if (obj.flags & (1 << 4)) {
        obj.custom_pending_suggestion = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    [os writeInt32:self.expires];
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.peer, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.psa_type == nil ? @"" : self.psa_type];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.psa_message == nil ? @"" : self.psa_message];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.pending_suggestions.count];
        for (id item in self.pending_suggestions) {
            [os writeString:item];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dismissed_suggestions.count];
        for (id item in self.dismissed_suggestions) {
            [os writeString:item];
        }
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.custom_pending_suggestion, true);
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_help_promoDataEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x98f6ac75; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_promoDataEmpty *obj = [[ModernTL_help_promoDataEmpty alloc] init];
    obj.expires = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.expires];
}
@end

@implementation ModernTL_help_recentMeUrls
- (int32_t)TLconstructorSignature { return (int32_t)0x0e0310d7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_recentMeUrls *obj = [[ModernTL_help_recentMeUrls alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.urls = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.urls.count];
        for (id item in self.urls) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_help_support
- (int32_t)TLconstructorSignature { return (int32_t)0x17c6b5f6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_support *obj = [[ModernTL_help_support alloc] init];
    obj.phone_number = [is readString];
    obj.user = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.phone_number == nil ? @"" : self.phone_number];
    TLMetaClassStore::serializeObject(os, self.user, true);
}
@end

@implementation ModernTL_help_supportName
- (int32_t)TLconstructorSignature { return (int32_t)0x8c05f1c9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_supportName *obj = [[ModernTL_help_supportName alloc] init];
    obj.name = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.name == nil ? @"" : self.name];
}
@end

@implementation ModernTL_help_termsOfService
- (int32_t)TLconstructorSignature { return (int32_t)0x780a0310; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_termsOfService *obj = [[ModernTL_help_termsOfService alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.text = [is readString];
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
    if (obj.flags & (1 << 1)) {
        obj.min_age_confirm = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.n_id, true);
    [os writeString:self.text == nil ? @"" : self.text];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.entities.count];
        for (id item in self.entities) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.min_age_confirm];
    }
}
@end

@implementation ModernTL_help_termsOfServiceUpdate
- (int32_t)TLconstructorSignature { return (int32_t)0x28ecf961; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_termsOfServiceUpdate *obj = [[ModernTL_help_termsOfServiceUpdate alloc] init];
    obj.expires = [is readInt32];
    obj.terms_of_service = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.expires];
    TLMetaClassStore::serializeObject(os, self.terms_of_service, true);
}
@end

@implementation ModernTL_help_termsOfServiceUpdateEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xe3309f7f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_termsOfServiceUpdateEmpty *obj = [[ModernTL_help_termsOfServiceUpdateEmpty alloc] init];
    obj.expires = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.expires];
}
@end

@implementation ModernTL_help_timezonesList
- (int32_t)TLconstructorSignature { return (int32_t)0x7b74ed71; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_timezonesList *obj = [[ModernTL_help_timezonesList alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.timezones = items;
    }
    obj.n_hash = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.timezones.count];
        for (id item in self.timezones) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.n_hash];
}
@end

@implementation ModernTL_help_timezonesListNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x970708cc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_timezonesListNotModified *obj = [[ModernTL_help_timezonesListNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_help_userInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x01eb3758; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_userInfo *obj = [[ModernTL_help_userInfo alloc] init];
    obj.message = [is readString];
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
    obj.author = [is readString];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.message == nil ? @"" : self.message];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.entities.count];
        for (id item in self.entities) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeString:self.author == nil ? @"" : self.author];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_help_userInfoEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xf3ae2eed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_userInfoEmpty *obj = [[ModernTL_help_userInfoEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_affectedFoundMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xef8d3e6c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_affectedFoundMessages *obj = [[ModernTL_messages_affectedFoundMessages alloc] init];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    obj.offset = [is readInt32];
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
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
    [os writeInt32:self.offset];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_messages_affectedHistory
- (int32_t)TLconstructorSignature { return (int32_t)0xb45c69d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_affectedHistory *obj = [[ModernTL_messages_affectedHistory alloc] init];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    obj.offset = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
    [os writeInt32:self.offset];
}
@end

@implementation ModernTL_messages_affectedMessages
- (int32_t)TLconstructorSignature { return (int32_t)0x84d19185; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_affectedMessages *obj = [[ModernTL_messages_affectedMessages alloc] init];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
}
@end

@implementation ModernTL_messages_allStickers
- (int32_t)TLconstructorSignature { return (int32_t)0xcdbbcebb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_allStickers *obj = [[ModernTL_messages_allStickers alloc] init];
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
        obj.sets = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sets.count];
        for (id item in self.sets) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_allStickersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xe86602c3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_allStickersNotModified *obj = [[ModernTL_messages_allStickersNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_archivedStickers
- (int32_t)TLconstructorSignature { return (int32_t)0x4fcba9c8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_archivedStickers *obj = [[ModernTL_messages_archivedStickers alloc] init];
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
        obj.sets = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sets.count];
        for (id item in self.sets) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_availableEffects
- (int32_t)TLconstructorSignature { return (int32_t)0xbddb616e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_availableEffects *obj = [[ModernTL_messages_availableEffects alloc] init];
    obj.n_hash = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.effects = items;
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
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.effects.count];
        for (id item in self.effects) {
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
}
@end

@implementation ModernTL_messages_availableEffectsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xd1ed9a5b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_availableEffectsNotModified *obj = [[ModernTL_messages_availableEffectsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_availableReactions
- (int32_t)TLconstructorSignature { return (int32_t)0x768e3aad; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_availableReactions *obj = [[ModernTL_messages_availableReactions alloc] init];
    obj.n_hash = [is readInt32];
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
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.reactions.count];
        for (id item in self.reactions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_availableReactionsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x9f071957; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_availableReactionsNotModified *obj = [[ModernTL_messages_availableReactionsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_botApp
- (int32_t)TLconstructorSignature { return (int32_t)0xeb50adf5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_botApp *obj = [[ModernTL_messages_botApp alloc] init];
    obj.flags = [is readInt32];
    obj.app = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.app, true);
}
@end

@implementation ModernTL_messages_botCallbackAnswer
- (int32_t)TLconstructorSignature { return (int32_t)0x36585ea4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_botCallbackAnswer *obj = [[ModernTL_messages_botCallbackAnswer alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.message = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.url = [is readString];
    }
    obj.cache_time = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.message == nil ? @"" : self.message];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
    [os writeInt32:self.cache_time];
}
@end

@implementation ModernTL_messages_botPreparedInlineMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x8ecf0511; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_botPreparedInlineMessage *obj = [[ModernTL_messages_botPreparedInlineMessage alloc] init];
    obj.n_id = [is readString];
    obj.expire_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.n_id == nil ? @"" : self.n_id];
    [os writeInt32:self.expire_date];
}
@end

@implementation ModernTL_messages_botResults
- (int32_t)TLconstructorSignature { return (int32_t)0xe021f2f6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_botResults *obj = [[ModernTL_messages_botResults alloc] init];
    obj.flags = [is readInt32];
    obj.query_id = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.next_offset = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.switch_pm = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.switch_webview = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
        obj.results = items;
    }
    obj.cache_time = [is readInt32];
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
    [os writeInt32:self.flags];
    [os writeInt64:self.query_id];
    if (self.flags & (1 << 1)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.switch_pm, true);
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.switch_webview, true);
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.results.count];
        for (id item in self.results) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.cache_time];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_chatAdminsWithInvites
- (int32_t)TLconstructorSignature { return (int32_t)0xb69b72d7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_chatAdminsWithInvites *obj = [[ModernTL_messages_chatAdminsWithInvites alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.admins = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.admins.count];
        for (id item in self.admins) {
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

@implementation ModernTL_messages_chatFull
- (int32_t)TLconstructorSignature { return (int32_t)0xe5d7d19c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_chatFull *obj = [[ModernTL_messages_chatFull alloc] init];
    obj.full_chat = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    TLMetaClassStore::serializeObject(os, self.full_chat, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_chatInviteImporters
- (int32_t)TLconstructorSignature { return (int32_t)0x81b6b00a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_chatInviteImporters *obj = [[ModernTL_messages_chatInviteImporters alloc] init];
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
        obj.importers = items;
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
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.importers.count];
        for (id item in self.importers) {
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

@implementation ModernTL_messages_chatInviteJoinResultOk
- (int32_t)TLconstructorSignature { return (int32_t)0x445663a7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_chatInviteJoinResultOk *obj = [[ModernTL_messages_chatInviteJoinResultOk alloc] init];
    obj.updates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.updates, true);
}
@end

@implementation ModernTL_messages_chatInviteJoinResultWebView
- (int32_t)TLconstructorSignature { return (int32_t)0x61ca29d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_chatInviteJoinResultWebView *obj = [[ModernTL_messages_chatInviteJoinResultWebView alloc] init];
    obj.bot_id = [is readInt64];
    obj.query_id = [is readInt64];
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
    [os writeInt64:self.bot_id];
    [os writeInt64:self.query_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_chats
- (int32_t)TLconstructorSignature { return (int32_t)0x64ff9fd5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_chats *obj = [[ModernTL_messages_chats alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
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
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_chatsSlice
- (int32_t)TLconstructorSignature { return (int32_t)0x9cd81144; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_chatsSlice *obj = [[ModernTL_messages_chatsSlice alloc] init];
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
        obj.chats = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_checkedHistoryImportPeer
- (int32_t)TLconstructorSignature { return (int32_t)0xa24de717; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_checkedHistoryImportPeer *obj = [[ModernTL_messages_checkedHistoryImportPeer alloc] init];
    obj.confirm_text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.confirm_text == nil ? @"" : self.confirm_text];
}
@end

@implementation ModernTL_messages_composedMessageWithAI
- (int32_t)TLconstructorSignature { return (int32_t)0x90d7adfa; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_composedMessageWithAI *obj = [[ModernTL_messages_composedMessageWithAI alloc] init];
    obj.flags = [is readInt32];
    obj.result_text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.diff_text = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.result_text, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.diff_text, true);
    }
}
@end

@implementation ModernTL_messages_composedRichMessageWithAI
- (int32_t)TLconstructorSignature { return (int32_t)0x4c4537c8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_composedRichMessageWithAI *obj = [[ModernTL_messages_composedRichMessageWithAI alloc] init];
    obj.result = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.result, true);
}
@end

@implementation ModernTL_messages_dhConfig
- (int32_t)TLconstructorSignature { return (int32_t)0x2c221edd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_dhConfig *obj = [[ModernTL_messages_dhConfig alloc] init];
    obj.g = [is readInt32];
    obj.p = [is readBytes];
    obj.version = [is readInt32];
    obj.random = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.g];
    [os writeBytes:self.p == nil ? [NSData data] : self.p];
    [os writeInt32:self.version];
    [os writeBytes:self.random == nil ? [NSData data] : self.random];
}
@end

@implementation ModernTL_messages_dhConfigNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xc0e24635; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_dhConfigNotModified *obj = [[ModernTL_messages_dhConfigNotModified alloc] init];
    obj.random = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeBytes:self.random == nil ? [NSData data] : self.random];
}
@end

@implementation ModernTL_messages_dialogFilters
- (int32_t)TLconstructorSignature { return (int32_t)0x2ad93719; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_dialogFilters *obj = [[ModernTL_messages_dialogFilters alloc] init];
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
        obj.filters = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.filters.count];
        for (id item in self.filters) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_dialogs
- (int32_t)TLconstructorSignature { return (int32_t)0x15ba6c40; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_dialogs *obj = [[ModernTL_messages_dialogs alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.dialogs = items;
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
        obj.messages = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dialogs.count];
        for (id item in self.dialogs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_dialogsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xf0e3e596; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_dialogsNotModified *obj = [[ModernTL_messages_dialogsNotModified alloc] init];
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_messages_dialogsSlice
- (int32_t)TLconstructorSignature { return (int32_t)0x71e094f3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_dialogsSlice *obj = [[ModernTL_messages_dialogsSlice alloc] init];
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
        obj.dialogs = items;
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
        obj.messages = items;
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
        obj.chats = items;
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
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dialogs.count];
        for (id item in self.dialogs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_discussionMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xa6341782; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_discussionMessage *obj = [[ModernTL_messages_discussionMessage alloc] init];
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
        obj.messages = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.max_id = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.read_inbox_max_id = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.read_outbox_max_id = [is readInt32];
    }
    obj.unread_count = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.max_id];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.read_inbox_max_id];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.read_outbox_max_id];
    }
    [os writeInt32:self.unread_count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_emojiGameDiceInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x44e56023; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_emojiGameDiceInfo *obj = [[ModernTL_messages_emojiGameDiceInfo alloc] init];
    obj.flags = [is readInt32];
    obj.game_hash = [is readString];
    obj.prev_stake = [is readInt64];
    obj.current_streak = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.params = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.plays_left = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.game_hash == nil ? @"" : self.game_hash];
    [os writeInt64:self.prev_stake];
    [os writeInt32:self.current_streak];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.params.count];
        for (id item in self.params) {
            [os writeInt32:[item intValue]];
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.plays_left];
    }
}
@end

@implementation ModernTL_messages_emojiGameUnavailable
- (int32_t)TLconstructorSignature { return (int32_t)0x59e65335; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_emojiGameUnavailable *obj = [[ModernTL_messages_emojiGameUnavailable alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_emojiGameOutcome
- (int32_t)TLconstructorSignature { return (int32_t)0xda2ad647; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_emojiGameOutcome *obj = [[ModernTL_messages_emojiGameOutcome alloc] init];
    obj.seed = [is readBytes];
    obj.stake_ton_amount = [is readInt64];
    obj.ton_amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeBytes:self.seed == nil ? [NSData data] : self.seed];
    [os writeInt64:self.stake_ton_amount];
    [os writeInt64:self.ton_amount];
}
@end

@implementation ModernTL_messages_emojiGroups
- (int32_t)TLconstructorSignature { return (int32_t)0x881fb94b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_emojiGroups *obj = [[ModernTL_messages_emojiGroups alloc] init];
    obj.n_hash = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.groups = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.groups.count];
        for (id item in self.groups) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_emojiGroupsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x6fb4ad87; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_emojiGroupsNotModified *obj = [[ModernTL_messages_emojiGroupsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_exportedChatInvite
- (int32_t)TLconstructorSignature { return (int32_t)0x1871be50; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_exportedChatInvite *obj = [[ModernTL_messages_exportedChatInvite alloc] init];
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    TLMetaClassStore::serializeObject(os, self.invite, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_exportedChatInviteReplaced
- (int32_t)TLconstructorSignature { return (int32_t)0x222600ef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_exportedChatInviteReplaced *obj = [[ModernTL_messages_exportedChatInviteReplaced alloc] init];
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    TLMetaClassStore::serializeObject(os, self.invite, true);
    TLMetaClassStore::serializeObject(os, self.n_new_invite, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_exportedChatInvites
- (int32_t)TLconstructorSignature { return (int32_t)0xbdc62dcc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_exportedChatInvites *obj = [[ModernTL_messages_exportedChatInvites alloc] init];
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
        obj.invites = items;
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
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.invites.count];
        for (id item in self.invites) {
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

@implementation ModernTL_messages_favedStickers
- (int32_t)TLconstructorSignature { return (int32_t)0x2cb51097; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_favedStickers *obj = [[ModernTL_messages_favedStickers alloc] init];
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
        obj.packs = items;
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
        obj.stickers = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.packs.count];
        for (id item in self.packs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.stickers.count];
        for (id item in self.stickers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_favedStickersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x9e8fa6d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_favedStickersNotModified *obj = [[ModernTL_messages_favedStickersNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_featuredStickers
- (int32_t)TLconstructorSignature { return (int32_t)0xbe382906; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_featuredStickers *obj = [[ModernTL_messages_featuredStickers alloc] init];
    obj.flags = [is readInt32];
    obj.n_hash = [is readInt64];
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
        obj.sets = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.unread = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_hash];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sets.count];
        for (id item in self.sets) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.unread.count];
        for (id item in self.unread) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_messages_featuredStickersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xc6dc0c66; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_featuredStickersNotModified *obj = [[ModernTL_messages_featuredStickersNotModified alloc] init];
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_messages_forumTopics
- (int32_t)TLconstructorSignature { return (int32_t)0x367617d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_forumTopics *obj = [[ModernTL_messages_forumTopics alloc] init];
    obj.flags = [is readInt32];
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
        obj.topics = items;
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
        obj.messages = items;
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
        obj.chats = items;
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
    obj.pts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.topics.count];
        for (id item in self.topics) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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
    [os writeInt32:self.pts];
}
@end

@implementation ModernTL_messages_foundStickerSets
- (int32_t)TLconstructorSignature { return (int32_t)0x8af09dd2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_foundStickerSets *obj = [[ModernTL_messages_foundStickerSets alloc] init];
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
        obj.sets = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sets.count];
        for (id item in self.sets) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_foundStickerSetsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x0d54b65d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_foundStickerSetsNotModified *obj = [[ModernTL_messages_foundStickerSetsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_foundStickers
- (int32_t)TLconstructorSignature { return (int32_t)0x82c9e290; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_foundStickers *obj = [[ModernTL_messages_foundStickers alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readInt32];
    }
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
        obj.stickers = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.next_offset];
    }
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.stickers.count];
        for (id item in self.stickers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_foundStickersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x6010c534; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_foundStickersNotModified *obj = [[ModernTL_messages_foundStickersNotModified alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.next_offset];
    }
}
@end

@implementation ModernTL_messages_highScores
- (int32_t)TLconstructorSignature { return (int32_t)0x9a3bfd99; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_highScores *obj = [[ModernTL_messages_highScores alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.scores = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.scores.count];
        for (id item in self.scores) {
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

@implementation ModernTL_messages_historyImport
- (int32_t)TLconstructorSignature { return (int32_t)0x1662af0b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_historyImport *obj = [[ModernTL_messages_historyImport alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_messages_historyImportParsed
- (int32_t)TLconstructorSignature { return (int32_t)0x5e0fb7b9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_historyImportParsed *obj = [[ModernTL_messages_historyImportParsed alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.title = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
}
@end

@implementation ModernTL_messages_inactiveChats
- (int32_t)TLconstructorSignature { return (int32_t)0xa927fec5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_inactiveChats *obj = [[ModernTL_messages_inactiveChats alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.dates = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dates.count];
        for (id item in self.dates) {
            [os writeInt32:[item intValue]];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_invitedUsers
- (int32_t)TLconstructorSignature { return (int32_t)0x7f5defa6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_invitedUsers *obj = [[ModernTL_messages_invitedUsers alloc] init];
    obj.updates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.missing_invitees = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.updates, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.missing_invitees.count];
        for (id item in self.missing_invitees) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_messageEditData
- (int32_t)TLconstructorSignature { return (int32_t)0x26b5dde6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_messageEditData *obj = [[ModernTL_messages_messageEditData alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_messages_messageReactionsList
- (int32_t)TLconstructorSignature { return (int32_t)0x31bd492d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_messageReactionsList *obj = [[ModernTL_messages_messageReactionsList alloc] init];
    obj.flags = [is readInt32];
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
        obj.reactions = items;
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
        obj.chats = items;
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
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.reactions.count];
        for (id item in self.reactions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
}
@end

@implementation ModernTL_messages_messageViews
- (int32_t)TLconstructorSignature { return (int32_t)0xb6c4f543; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_messageViews *obj = [[ModernTL_messages_messageViews alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.views = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.views.count];
        for (id item in self.views) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_channelMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xc776ba4e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_channelMessages *obj = [[ModernTL_messages_channelMessages alloc] init];
    obj.flags = [is readInt32];
    obj.pts = [is readInt32];
    obj.count = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.offset_id_offset = [is readInt32];
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
        obj.messages = items;
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
        obj.topics = items;
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    [os writeInt32:self.pts];
    [os writeInt32:self.count];
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.offset_id_offset];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.topics.count];
        for (id item in self.topics) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_messages
- (int32_t)TLconstructorSignature { return (int32_t)0x1d73e7ea; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_messages *obj = [[ModernTL_messages_messages alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.messages = items;
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
        obj.topics = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.topics.count];
        for (id item in self.topics) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_messagesNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x74535f21; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_messagesNotModified *obj = [[ModernTL_messages_messagesNotModified alloc] init];
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_messages_messagesSlice
- (int32_t)TLconstructorSignature { return (int32_t)0x5f206716; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_messagesSlice *obj = [[ModernTL_messages_messagesSlice alloc] init];
    obj.flags = [is readInt32];
    obj.count = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.next_rate = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.offset_id_offset = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.search_flood = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
        obj.messages = items;
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
        obj.topics = items;
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.next_rate];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.offset_id_offset];
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.search_flood, true);
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.topics.count];
        for (id item in self.topics) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_myStickers
- (int32_t)TLconstructorSignature { return (int32_t)0xfaff629d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_myStickers *obj = [[ModernTL_messages_myStickers alloc] init];
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
        obj.sets = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sets.count];
        for (id item in self.sets) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_peerDialogs
- (int32_t)TLconstructorSignature { return (int32_t)0x3371c354; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_peerDialogs *obj = [[ModernTL_messages_peerDialogs alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.dialogs = items;
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
        obj.messages = items;
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
        obj.chats = items;
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
    obj.state = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dialogs.count];
        for (id item in self.dialogs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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
    TLMetaClassStore::serializeObject(os, self.state, true);
}
@end

@implementation ModernTL_messages_peerSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x6880b94d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_peerSettings *obj = [[ModernTL_messages_peerSettings alloc] init];
    obj.settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    TLMetaClassStore::serializeObject(os, self.settings, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_preparedInlineMessage
- (int32_t)TLconstructorSignature { return (int32_t)0xff57708d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_preparedInlineMessage *obj = [[ModernTL_messages_preparedInlineMessage alloc] init];
    obj.query_id = [is readInt64];
    obj.result = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    obj.cache_time = [is readInt32];
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
    [os writeInt64:self.query_id];
    TLMetaClassStore::serializeObject(os, self.result, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peer_types.count];
        for (id item in self.peer_types) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.cache_time];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_quickReplies
- (int32_t)TLconstructorSignature { return (int32_t)0xc68d6695; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_quickReplies *obj = [[ModernTL_messages_quickReplies alloc] init];
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
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.messages = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.quick_replies.count];
        for (id item in self.quick_replies) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_quickRepliesNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x5f91eb5b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_quickRepliesNotModified *obj = [[ModernTL_messages_quickRepliesNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_reactions
- (int32_t)TLconstructorSignature { return (int32_t)0xeafdf716; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_reactions *obj = [[ModernTL_messages_reactions alloc] init];
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
        obj.reactions = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.reactions.count];
        for (id item in self.reactions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_reactionsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xb06fdbdf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_reactionsNotModified *obj = [[ModernTL_messages_reactionsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_recentStickers
- (int32_t)TLconstructorSignature { return (int32_t)0x88d37c56; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_recentStickers *obj = [[ModernTL_messages_recentStickers alloc] init];
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
        obj.packs = items;
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
        obj.stickers = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.dates = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.packs.count];
        for (id item in self.packs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.stickers.count];
        for (id item in self.stickers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dates.count];
        for (id item in self.dates) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_messages_recentStickersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x0b17f890; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_recentStickersNotModified *obj = [[ModernTL_messages_recentStickersNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_savedDialogs
- (int32_t)TLconstructorSignature { return (int32_t)0xf83ae221; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_savedDialogs *obj = [[ModernTL_messages_savedDialogs alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.dialogs = items;
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
        obj.messages = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dialogs.count];
        for (id item in self.dialogs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_savedDialogsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xc01f6fe8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_savedDialogsNotModified *obj = [[ModernTL_messages_savedDialogsNotModified alloc] init];
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_messages_savedDialogsSlice
- (int32_t)TLconstructorSignature { return (int32_t)0x44ba9dd9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_savedDialogsSlice *obj = [[ModernTL_messages_savedDialogsSlice alloc] init];
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
        obj.dialogs = items;
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
        obj.messages = items;
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
        obj.chats = items;
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
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.dialogs.count];
        for (id item in self.dialogs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_savedGifs
- (int32_t)TLconstructorSignature { return (int32_t)0x84a02a0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_savedGifs *obj = [[ModernTL_messages_savedGifs alloc] init];
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
        obj.gifs = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.gifs.count];
        for (id item in self.gifs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_savedGifsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xe8025ca2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_savedGifsNotModified *obj = [[ModernTL_messages_savedGifsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_savedReactionTags
- (int32_t)TLconstructorSignature { return (int32_t)0x3259950a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_savedReactionTags *obj = [[ModernTL_messages_savedReactionTags alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.tags = items;
    }
    obj.n_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.tags.count];
        for (id item in self.tags) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt64:self.n_hash];
}
@end

@implementation ModernTL_messages_savedReactionTagsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x889b59ef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_savedReactionTagsNotModified *obj = [[ModernTL_messages_savedReactionTagsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_searchCounter
- (int32_t)TLconstructorSignature { return (int32_t)0xe844ebff; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_searchCounter *obj = [[ModernTL_messages_searchCounter alloc] init];
    obj.flags = [is readInt32];
    obj.filter = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.filter, true);
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_messages_searchResultsCalendar
- (int32_t)TLconstructorSignature { return (int32_t)0x147ee23c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_searchResultsCalendar *obj = [[ModernTL_messages_searchResultsCalendar alloc] init];
    obj.flags = [is readInt32];
    obj.count = [is readInt32];
    obj.min_date = [is readInt32];
    obj.min_msg_id = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.offset_id_offset = [is readInt32];
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
        obj.periods = items;
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
        obj.messages = items;
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    [os writeInt32:self.min_date];
    [os writeInt32:self.min_msg_id];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.offset_id_offset];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.periods.count];
        for (id item in self.periods) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_searchResultsPositions
- (int32_t)TLconstructorSignature { return (int32_t)0x53b22baf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_searchResultsPositions *obj = [[ModernTL_messages_searchResultsPositions alloc] init];
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
        obj.positions = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.positions.count];
        for (id item in self.positions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_sentEncryptedFile
- (int32_t)TLconstructorSignature { return (int32_t)0x9493ff32; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_sentEncryptedFile *obj = [[ModernTL_messages_sentEncryptedFile alloc] init];
    obj.date = [is readInt32];
    obj.file = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.date];
    TLMetaClassStore::serializeObject(os, self.file, true);
}
@end

@implementation ModernTL_messages_sentEncryptedMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x560f8935; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_sentEncryptedMessage *obj = [[ModernTL_messages_sentEncryptedMessage alloc] init];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_messages_sponsoredMessages
- (int32_t)TLconstructorSignature { return (int32_t)0xffda656d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_sponsoredMessages *obj = [[ModernTL_messages_sponsoredMessages alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.posts_between = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.start_delay = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.between_delay = [is readInt32];
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
        obj.messages = items;
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.posts_between];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.start_delay];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.between_delay];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.messages.count];
        for (id item in self.messages) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_sponsoredMessagesEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x1839490f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_sponsoredMessagesEmpty *obj = [[ModernTL_messages_sponsoredMessagesEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_stickerSet
- (int32_t)TLconstructorSignature { return (int32_t)0x6e153f16; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_stickerSet *obj = [[ModernTL_messages_stickerSet alloc] init];
    obj.set = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.packs = items;
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
        obj.keywords = items;
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
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.set, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.packs.count];
        for (id item in self.packs) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.keywords.count];
        for (id item in self.keywords) {
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
}
@end

@implementation ModernTL_messages_stickerSetNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xd3f924eb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_stickerSetNotModified *obj = [[ModernTL_messages_stickerSetNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_stickerSetInstallResultArchive
- (int32_t)TLconstructorSignature { return (int32_t)0x35e410a8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_stickerSetInstallResultArchive *obj = [[ModernTL_messages_stickerSetInstallResultArchive alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.sets = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sets.count];
        for (id item in self.sets) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_stickerSetInstallResultSuccess
- (int32_t)TLconstructorSignature { return (int32_t)0x38641628; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_stickerSetInstallResultSuccess *obj = [[ModernTL_messages_stickerSetInstallResultSuccess alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_stickers
- (int32_t)TLconstructorSignature { return (int32_t)0x30a6ec7e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_stickers *obj = [[ModernTL_messages_stickers alloc] init];
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
        obj.stickers = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.stickers.count];
        for (id item in self.stickers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_stickersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xf1749a22; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_stickersNotModified *obj = [[ModernTL_messages_stickersNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messages_transcribedAudio
- (int32_t)TLconstructorSignature { return (int32_t)0xcfb9d957; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_transcribedAudio *obj = [[ModernTL_messages_transcribedAudio alloc] init];
    obj.flags = [is readInt32];
    obj.transcription_id = [is readInt64];
    obj.text = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.trial_remains_num = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.trial_remains_until_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.transcription_id];
    [os writeString:self.text == nil ? @"" : self.text];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.trial_remains_num];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.trial_remains_until_date];
    }
}
@end

@implementation ModernTL_messages_translatedRichMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x4203998f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_translatedRichMessage *obj = [[ModernTL_messages_translatedRichMessage alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.result = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.result.count];
        for (id item in self.result) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_translateResult
- (int32_t)TLconstructorSignature { return (int32_t)0x33db32f8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_translateResult *obj = [[ModernTL_messages_translateResult alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.result = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.result.count];
        for (id item in self.result) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messages_votesList
- (int32_t)TLconstructorSignature { return (int32_t)0x4899484e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_votesList *obj = [[ModernTL_messages_votesList alloc] init];
    obj.flags = [is readInt32];
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
        obj.votes = items;
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
        obj.chats = items;
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
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.votes.count];
        for (id item in self.votes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
}
@end

@implementation ModernTL_messages_webPage
- (int32_t)TLconstructorSignature { return (int32_t)0xfd5e12bd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_webPage *obj = [[ModernTL_messages_webPage alloc] init];
    obj.webpage = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    TLMetaClassStore::serializeObject(os, self.webpage, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_messages_webPagePreview
- (int32_t)TLconstructorSignature { return (int32_t)0x8c9a88ac; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messages_webPagePreview *obj = [[ModernTL_messages_webPagePreview alloc] init];
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
        obj.chats = items;
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
    TLMetaClassStore::serializeObject(os, self.media, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_payments_bankCardData
- (int32_t)TLconstructorSignature { return (int32_t)0x3e24e573; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_bankCardData *obj = [[ModernTL_payments_bankCardData alloc] init];
    obj.title = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.open_urls = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.title == nil ? @"" : self.title];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.open_urls.count];
        for (id item in self.open_urls) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_checkCanSendGiftResultFail
- (int32_t)TLconstructorSignature { return (int32_t)0xd5e58274; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_checkCanSendGiftResultFail *obj = [[ModernTL_payments_checkCanSendGiftResultFail alloc] init];
    obj.reason = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.reason, true);
}
@end

@implementation ModernTL_payments_checkCanSendGiftResultOk
- (int32_t)TLconstructorSignature { return (int32_t)0x374fa7ad; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_checkCanSendGiftResultOk *obj = [[ModernTL_payments_checkCanSendGiftResultOk alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_payments_checkedGiftCode
- (int32_t)TLconstructorSignature { return (int32_t)0xeb983f8f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_checkedGiftCode *obj = [[ModernTL_payments_checkedGiftCode alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 4)) {
        obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.giveaway_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.to_id = [is readInt64];
    }
    obj.date = [is readInt32];
    obj.days = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.used_date = [is readInt32];
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.from_id, true);
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.giveaway_msg_id];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.to_id];
    }
    [os writeInt32:self.date];
    [os writeInt32:self.days];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.used_date];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_payments_connectedStarRefBots
- (int32_t)TLconstructorSignature { return (int32_t)0x98d5ea1d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_connectedStarRefBots *obj = [[ModernTL_payments_connectedStarRefBots alloc] init];
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
        obj.connected_bots = items;
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
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.connected_bots.count];
        for (id item in self.connected_bots) {
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

@implementation ModernTL_payments_exportedInvoice
- (int32_t)TLconstructorSignature { return (int32_t)0xaed0cbd9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_exportedInvoice *obj = [[ModernTL_payments_exportedInvoice alloc] init];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_payments_giveawayInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x4367daa0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_giveawayInfo *obj = [[ModernTL_payments_giveawayInfo alloc] init];
    obj.flags = [is readInt32];
    obj.start_date = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.joined_too_early_date = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.admin_disallowed_chat_id = [is readInt64];
    }
    if (obj.flags & (1 << 4)) {
        obj.disallowed_country = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.start_date];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.joined_too_early_date];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt64:self.admin_disallowed_chat_id];
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.disallowed_country == nil ? @"" : self.disallowed_country];
    }
}
@end

@implementation ModernTL_payments_giveawayInfoResults
- (int32_t)TLconstructorSignature { return (int32_t)0xe175e66f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_giveawayInfoResults *obj = [[ModernTL_payments_giveawayInfoResults alloc] init];
    obj.flags = [is readInt32];
    obj.start_date = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.gift_code_slug = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.stars_prize = [is readInt64];
    }
    obj.finish_date = [is readInt32];
    obj.winners_count = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.activated_count = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.start_date];
    if (self.flags & (1 << 3)) {
        [os writeString:self.gift_code_slug == nil ? @"" : self.gift_code_slug];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt64:self.stars_prize];
    }
    [os writeInt32:self.finish_date];
    [os writeInt32:self.winners_count];
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.activated_count];
    }
}
@end

@implementation ModernTL_payments_paymentForm
- (int32_t)TLconstructorSignature { return (int32_t)0xa0058751; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_paymentForm *obj = [[ModernTL_payments_paymentForm alloc] init];
    obj.flags = [is readInt32];
    obj.form_id = [is readInt64];
    obj.bot_id = [is readInt64];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 5)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.invoice = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.provider_id = [is readInt64];
    obj.url = [is readString];
    if (obj.flags & (1 << 4)) {
        obj.native_provider = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.native_params = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
            obj.additional_methods = items;
        }
    }
    if (obj.flags & (1 << 0)) {
        obj.saved_info = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
            obj.saved_credentials = items;
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
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.form_id];
    [os writeInt64:self.bot_id];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    TLMetaClassStore::serializeObject(os, self.invoice, true);
    [os writeInt64:self.provider_id];
    [os writeString:self.url == nil ? @"" : self.url];
    if (self.flags & (1 << 4)) {
        [os writeString:self.native_provider == nil ? @"" : self.native_provider];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.native_params, true);
    }
    if (self.flags & (1 << 6)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.additional_methods.count];
            for (id item in self.additional_methods) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.saved_info, true);
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.saved_credentials.count];
            for (id item in self.saved_credentials) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
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

@implementation ModernTL_payments_paymentFormStarGift
- (int32_t)TLconstructorSignature { return (int32_t)0xb425cfe1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_paymentFormStarGift *obj = [[ModernTL_payments_paymentFormStarGift alloc] init];
    obj.form_id = [is readInt64];
    obj.invoice = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.form_id];
    TLMetaClassStore::serializeObject(os, self.invoice, true);
}
@end

@implementation ModernTL_payments_paymentFormStars
- (int32_t)TLconstructorSignature { return (int32_t)0x7bf6b15c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_paymentFormStars *obj = [[ModernTL_payments_paymentFormStars alloc] init];
    obj.flags = [is readInt32];
    obj.form_id = [is readInt64];
    obj.bot_id = [is readInt64];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 5)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.invoice = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    [os writeInt32:self.flags];
    [os writeInt64:self.form_id];
    [os writeInt64:self.bot_id];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    TLMetaClassStore::serializeObject(os, self.invoice, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_paymentReceipt
- (int32_t)TLconstructorSignature { return (int32_t)0x70c4fe03; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_paymentReceipt *obj = [[ModernTL_payments_paymentReceipt alloc] init];
    obj.flags = [is readInt32];
    obj.date = [is readInt32];
    obj.bot_id = [is readInt64];
    obj.provider_id = [is readInt64];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 2)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.invoice = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.info = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.shipping = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.tip_amount = [is readInt64];
    }
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    obj.credentials_title = [is readString];
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
    [os writeInt32:self.flags];
    [os writeInt32:self.date];
    [os writeInt64:self.bot_id];
    [os writeInt64:self.provider_id];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    TLMetaClassStore::serializeObject(os, self.invoice, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.info, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.shipping, true);
    }
    if (self.flags & (1 << 3)) {
        [os writeInt64:self.tip_amount];
    }
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
    [os writeString:self.credentials_title == nil ? @"" : self.credentials_title];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_paymentReceiptStars
- (int32_t)TLconstructorSignature { return (int32_t)0xdabbf83a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_paymentReceiptStars *obj = [[ModernTL_payments_paymentReceiptStars alloc] init];
    obj.flags = [is readInt32];
    obj.date = [is readInt32];
    obj.bot_id = [is readInt64];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 2)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.invoice = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    obj.transaction_id = [is readString];
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
    [os writeInt32:self.flags];
    [os writeInt32:self.date];
    [os writeInt64:self.bot_id];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    TLMetaClassStore::serializeObject(os, self.invoice, true);
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
    [os writeString:self.transaction_id == nil ? @"" : self.transaction_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_paymentResult
- (int32_t)TLconstructorSignature { return (int32_t)0x4e5f810d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_paymentResult *obj = [[ModernTL_payments_paymentResult alloc] init];
    obj.updates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.updates, true);
}
@end

@implementation ModernTL_payments_paymentVerificationNeeded
- (int32_t)TLconstructorSignature { return (int32_t)0xd8411139; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_paymentVerificationNeeded *obj = [[ModernTL_payments_paymentVerificationNeeded alloc] init];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_payments_resaleStarGifts
- (int32_t)TLconstructorSignature { return (int32_t)0x947a12df; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_resaleStarGifts *obj = [[ModernTL_payments_resaleStarGifts alloc] init];
    obj.flags = [is readInt32];
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
        obj.gifts = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
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
            obj.attributes = items;
        }
    }
    if (obj.flags & (1 << 1)) {
        obj.attributes_hash = [is readInt64];
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
        obj.chats = items;
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
            obj.counters = items;
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
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.gifts.count];
        for (id item in self.gifts) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.attributes.count];
            for (id item in self.attributes) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 1)) {
        [os writeInt64:self.attributes_hash];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.counters.count];
            for (id item in self.counters) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
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

@implementation ModernTL_payments_savedInfo
- (int32_t)TLconstructorSignature { return (int32_t)0xfb8fe43c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_savedInfo *obj = [[ModernTL_payments_savedInfo alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.saved_info = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.saved_info, true);
    }
}
@end

@implementation ModernTL_payments_savedStarGifts
- (int32_t)TLconstructorSignature { return (int32_t)0x95f389b1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_savedStarGifts *obj = [[ModernTL_payments_savedStarGifts alloc] init];
    obj.flags = [is readInt32];
    obj.count = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.chat_notifications_enabled = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
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
        obj.gifts = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.chat_notifications_enabled ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.gifts.count];
        for (id item in self.gifts) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_payments_starGiftActiveAuctions
- (int32_t)TLconstructorSignature { return (int32_t)0xaef6abbc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftActiveAuctions *obj = [[ModernTL_payments_starGiftActiveAuctions alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.auctions = items;
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
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.auctions.count];
        for (id item in self.auctions) {
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_starGiftActiveAuctionsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xdb33dad0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftActiveAuctionsNotModified *obj = [[ModernTL_payments_starGiftActiveAuctionsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_payments_starGiftAuctionAcquiredGifts
- (int32_t)TLconstructorSignature { return (int32_t)0x7d5bd1f0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftAuctionAcquiredGifts *obj = [[ModernTL_payments_starGiftAuctionAcquiredGifts alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.gifts = items;
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
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.gifts.count];
        for (id item in self.gifts) {
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_starGiftAuctionState
- (int32_t)TLconstructorSignature { return (int32_t)0x6b39f4ec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftAuctionState *obj = [[ModernTL_payments_starGiftAuctionState alloc] init];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.state = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.user_state = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.timeout = [is readInt32];
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
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.gift, true);
    TLMetaClassStore::serializeObject(os, self.state, true);
    TLMetaClassStore::serializeObject(os, self.user_state, true);
    [os writeInt32:self.timeout];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_starGiftCollections
- (int32_t)TLconstructorSignature { return (int32_t)0x8a2932f3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftCollections *obj = [[ModernTL_payments_starGiftCollections alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.collections = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.collections.count];
        for (id item in self.collections) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_starGiftCollectionsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xa0ba4f17; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftCollectionsNotModified *obj = [[ModernTL_payments_starGiftCollectionsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_payments_starGiftUpgradeAttributes
- (int32_t)TLconstructorSignature { return (int32_t)0x46c6e36f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftUpgradeAttributes *obj = [[ModernTL_payments_starGiftUpgradeAttributes alloc] init];
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.attributes.count];
        for (id item in self.attributes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_starGiftUpgradePreview
- (int32_t)TLconstructorSignature { return (int32_t)0x3de1dfed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftUpgradePreview *obj = [[ModernTL_payments_starGiftUpgradePreview alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.sample_attributes = items;
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
        obj.prices = items;
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
        obj.next_prices = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.sample_attributes.count];
        for (id item in self.sample_attributes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.prices.count];
        for (id item in self.prices) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.next_prices.count];
        for (id item in self.next_prices) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_payments_starGiftWithdrawalUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x84aa3a9c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftWithdrawalUrl *obj = [[ModernTL_payments_starGiftWithdrawalUrl alloc] init];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_payments_starGifts
- (int32_t)TLconstructorSignature { return (int32_t)0x2ed82995; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGifts *obj = [[ModernTL_payments_starGifts alloc] init];
    obj.n_hash = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.gifts = items;
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
        obj.chats = items;
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
    [os writeInt32:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.gifts.count];
        for (id item in self.gifts) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_payments_starGiftsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xa388a368; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starGiftsNotModified *obj = [[ModernTL_payments_starGiftsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_payments_starsRevenueAdsAccountUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x394e7f21; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starsRevenueAdsAccountUrl *obj = [[ModernTL_payments_starsRevenueAdsAccountUrl alloc] init];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_payments_starsRevenueStats
- (int32_t)TLconstructorSignature { return (int32_t)0x6c207376; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starsRevenueStats *obj = [[ModernTL_payments_starsRevenueStats alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.top_hours_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.revenue_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.status = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.usd_rate = [is readDouble];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.top_hours_graph, true);
    }
    TLMetaClassStore::serializeObject(os, self.revenue_graph, true);
    TLMetaClassStore::serializeObject(os, self.status, true);
    [os writeDouble:self.usd_rate];
}
@end

@implementation ModernTL_payments_starsRevenueWithdrawalUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x1dab80b7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starsRevenueWithdrawalUrl *obj = [[ModernTL_payments_starsRevenueWithdrawalUrl alloc] init];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_payments_starsStatus
- (int32_t)TLconstructorSignature { return (int32_t)0x6c9ce8ed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_starsStatus *obj = [[ModernTL_payments_starsStatus alloc] init];
    obj.flags = [is readInt32];
    obj.balance = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
            obj.subscriptions = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        obj.subscriptions_next_offset = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.subscriptions_missing_balance = [is readInt64];
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
            obj.history = items;
        }
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.balance, true);
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.subscriptions.count];
            for (id item in self.subscriptions) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.subscriptions_next_offset == nil ? @"" : self.subscriptions_next_offset];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt64:self.subscriptions_missing_balance];
    }
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.history.count];
            for (id item in self.history) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_payments_suggestedStarRefBots
- (int32_t)TLconstructorSignature { return (int32_t)0xb4d5d859; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_suggestedStarRefBots *obj = [[ModernTL_payments_suggestedStarRefBots alloc] init];
    obj.flags = [is readInt32];
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
        obj.suggested_bots = items;
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
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.suggested_bots.count];
        for (id item in self.suggested_bots) {
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
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
}
@end

@implementation ModernTL_payments_uniqueStarGift
- (int32_t)TLconstructorSignature { return (int32_t)0x416c56e8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_uniqueStarGift *obj = [[ModernTL_payments_uniqueStarGift alloc] init];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    TLMetaClassStore::serializeObject(os, self.gift, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_payments_uniqueStarGiftValueInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x512fe446; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_uniqueStarGiftValueInfo *obj = [[ModernTL_payments_uniqueStarGiftValueInfo alloc] init];
    obj.flags = [is readInt32];
    obj.currency = [is readString];
    obj.value = [is readInt64];
    obj.initial_sale_date = [is readInt32];
    obj.initial_sale_stars = [is readInt64];
    obj.initial_sale_price = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.last_sale_date = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.last_sale_price = [is readInt64];
    }
    if (obj.flags & (1 << 2)) {
        obj.floor_price = [is readInt64];
    }
    if (obj.flags & (1 << 3)) {
        obj.average_price = [is readInt64];
    }
    if (obj.flags & (1 << 4)) {
        obj.listed_count = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.fragment_listed_count = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.fragment_listed_url = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.value];
    [os writeInt32:self.initial_sale_date];
    [os writeInt64:self.initial_sale_stars];
    [os writeInt64:self.initial_sale_price];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.last_sale_date];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.last_sale_price];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt64:self.floor_price];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt64:self.average_price];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.listed_count];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.fragment_listed_count];
    }
    if (self.flags & (1 << 5)) {
        [os writeString:self.fragment_listed_url == nil ? @"" : self.fragment_listed_url];
    }
}
@end

@implementation ModernTL_payments_validatedRequestedInfo
- (int32_t)TLconstructorSignature { return (int32_t)0xd1451883; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_payments_validatedRequestedInfo *obj = [[ModernTL_payments_validatedRequestedInfo alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.n_id = [is readString];
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
            obj.shipping_options = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.n_id == nil ? @"" : self.n_id];
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.shipping_options.count];
            for (id item in self.shipping_options) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_phone_exportedGroupCallInvite
- (int32_t)TLconstructorSignature { return (int32_t)0x204bd158; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_exportedGroupCallInvite *obj = [[ModernTL_phone_exportedGroupCallInvite alloc] init];
    obj.link = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.link == nil ? @"" : self.link];
}
@end

@implementation ModernTL_phone_groupCall
- (int32_t)TLconstructorSignature { return (int32_t)0x9e727aad; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_groupCall *obj = [[ModernTL_phone_groupCall alloc] init];
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
    obj.participants_next_offset = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    TLMetaClassStore::serializeObject(os, self.call, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.participants.count];
        for (id item in self.participants) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeString:self.participants_next_offset == nil ? @"" : self.participants_next_offset];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_phone_groupCallStars
- (int32_t)TLconstructorSignature { return (int32_t)0x9d1dbd26; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_groupCallStars *obj = [[ModernTL_phone_groupCallStars alloc] init];
    obj.total_stars = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.top_donors = items;
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
        obj.chats = items;
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
    [os writeInt64:self.total_stars];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.top_donors.count];
        for (id item in self.top_donors) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_phone_groupCallStreamChannels
- (int32_t)TLconstructorSignature { return (int32_t)0xd0e482b2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_groupCallStreamChannels *obj = [[ModernTL_phone_groupCallStreamChannels alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.channels = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.channels.count];
        for (id item in self.channels) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_phone_groupCallStreamRtmpUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x2dbf3432; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_groupCallStreamRtmpUrl *obj = [[ModernTL_phone_groupCallStreamRtmpUrl alloc] init];
    obj.url = [is readString];
    obj.key = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeString:self.key == nil ? @"" : self.key];
}
@end

@implementation ModernTL_phone_groupParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0xf47751b6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_groupParticipants *obj = [[ModernTL_phone_groupParticipants alloc] init];
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
        obj.participants = items;
    }
    obj.next_offset = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    obj.version = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.participants.count];
        for (id item in self.participants) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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
    [os writeInt32:self.version];
}
@end

@implementation ModernTL_channelAdminLogEventsFilter
- (int32_t)TLconstructorSignature { return (int32_t)0xea107ae4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventsFilter *obj = [[ModernTL_channelAdminLogEventsFilter alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_channelCategory
- (int32_t)TLconstructorSignature { return (int32_t)0x0c484f32; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelCategory *obj = [[ModernTL_channelCategory alloc] init];
    obj.n_id = [is readInt32];
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_id];
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_channelLocation
- (int32_t)TLconstructorSignature { return (int32_t)0x209b82db; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelLocation *obj = [[ModernTL_channelLocation alloc] init];
    obj.geo_point = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.address = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo_point, true);
    [os writeString:self.address == nil ? @"" : self.address];
}
@end

@implementation ModernTL_channelLocationEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xbfb5ad8b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelLocationEmpty *obj = [[ModernTL_channelLocationEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channelMessagesFilter
- (int32_t)TLconstructorSignature { return (int32_t)0xcd77d957; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelMessagesFilter *obj = [[ModernTL_channelMessagesFilter alloc] init];
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
        obj.ranges = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.ranges.count];
        for (id item in self.ranges) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_channelMessagesFilterEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x94d42ee7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelMessagesFilterEmpty *obj = [[ModernTL_channelMessagesFilterEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channelParticipant
- (int32_t)TLconstructorSignature { return (int32_t)0x1bd54456; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipant *obj = [[ModernTL_channelParticipant alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = [is readInt64];
    obj.date = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.subscription_until_date = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.rank = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.user_id];
    [os writeInt32:self.date];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.subscription_until_date];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.rank == nil ? @"" : self.rank];
    }
}
@end

@implementation ModernTL_channelParticipantAdmin
- (int32_t)TLconstructorSignature { return (int32_t)0x34c3bb53; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantAdmin *obj = [[ModernTL_channelParticipantAdmin alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.inviter_id = [is readInt64];
    }
    obj.promoted_by = [is readInt64];
    obj.date = [is readInt32];
    obj.admin_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 2)) {
        obj.rank = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.user_id];
    if (self.flags & (1 << 1)) {
        [os writeInt64:self.inviter_id];
    }
    [os writeInt64:self.promoted_by];
    [os writeInt32:self.date];
    TLMetaClassStore::serializeObject(os, self.admin_rights, true);
    if (self.flags & (1 << 2)) {
        [os writeString:self.rank == nil ? @"" : self.rank];
    }
}
@end

@implementation ModernTL_channelParticipantBanned
- (int32_t)TLconstructorSignature { return (int32_t)0xd5f0ad91; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantBanned *obj = [[ModernTL_channelParticipantBanned alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.kicked_by = [is readInt64];
    obj.date = [is readInt32];
    obj.banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 2)) {
        obj.rank = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:self.kicked_by];
    [os writeInt32:self.date];
    TLMetaClassStore::serializeObject(os, self.banned_rights, true);
    if (self.flags & (1 << 2)) {
        [os writeString:self.rank == nil ? @"" : self.rank];
    }
}
@end

@implementation ModernTL_channelParticipantCreator
- (int32_t)TLconstructorSignature { return (int32_t)0x2fe601d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantCreator *obj = [[ModernTL_channelParticipantCreator alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = [is readInt64];
    obj.admin_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.rank = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.user_id];
    TLMetaClassStore::serializeObject(os, self.admin_rights, true);
    if (self.flags & (1 << 0)) {
        [os writeString:self.rank == nil ? @"" : self.rank];
    }
}
@end

@implementation ModernTL_channelParticipantLeft
- (int32_t)TLconstructorSignature { return (int32_t)0x1b03f006; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantLeft *obj = [[ModernTL_channelParticipantLeft alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
}
@end

@implementation ModernTL_channelParticipantSelf
- (int32_t)TLconstructorSignature { return (int32_t)0xa9478a1a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantSelf *obj = [[ModernTL_channelParticipantSelf alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = [is readInt64];
    obj.inviter_id = [is readInt64];
    obj.date = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.subscription_until_date = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.rank = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.user_id];
    [os writeInt64:self.inviter_id];
    [os writeInt32:self.date];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.subscription_until_date];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.rank == nil ? @"" : self.rank];
    }
}
@end

@implementation ModernTL_channelParticipantsAdmins
- (int32_t)TLconstructorSignature { return (int32_t)0xb4608969; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsAdmins *obj = [[ModernTL_channelParticipantsAdmins alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channelParticipantsBanned
- (int32_t)TLconstructorSignature { return (int32_t)0x1427a5e1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsBanned *obj = [[ModernTL_channelParticipantsBanned alloc] init];
    obj.q = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.q == nil ? @"" : self.q];
}
@end

@implementation ModernTL_channelParticipantsBots
- (int32_t)TLconstructorSignature { return (int32_t)0xb0d1865b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsBots *obj = [[ModernTL_channelParticipantsBots alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channelParticipantsContacts
- (int32_t)TLconstructorSignature { return (int32_t)0xbb6ae88d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsContacts *obj = [[ModernTL_channelParticipantsContacts alloc] init];
    obj.q = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.q == nil ? @"" : self.q];
}
@end

@implementation ModernTL_channelParticipantsKicked
- (int32_t)TLconstructorSignature { return (int32_t)0xa3b54985; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsKicked *obj = [[ModernTL_channelParticipantsKicked alloc] init];
    obj.q = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.q == nil ? @"" : self.q];
}
@end

@implementation ModernTL_channelParticipantsMentions
- (int32_t)TLconstructorSignature { return (int32_t)0xe04b5ceb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsMentions *obj = [[ModernTL_channelParticipantsMentions alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.q = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.top_msg_id = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.q == nil ? @"" : self.q];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.top_msg_id];
    }
}
@end

@implementation ModernTL_channelParticipantsRecent
- (int32_t)TLconstructorSignature { return (int32_t)0xde3f3c79; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsRecent *obj = [[ModernTL_channelParticipantsRecent alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channelParticipantsSearch
- (int32_t)TLconstructorSignature { return (int32_t)0x0656ac4b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelParticipantsSearch *obj = [[ModernTL_channelParticipantsSearch alloc] init];
    obj.q = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.q == nil ? @"" : self.q];
}
@end

@implementation ModernTL_channel
- (int32_t)TLconstructorSignature { return (int32_t)0xd49f34c6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channel *obj = [[ModernTL_channel alloc] init];
    obj.flags = [is readInt32];
    obj.flags2 = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 13)) {
        obj.access_hash = [is readInt64];
    }
    obj.title = [is readString];
    if (obj.flags & (1 << 6)) {
        obj.username = [is readString];
    }
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    if (obj.flags & (1 << 9)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.restriction_reason = items;
        }
    }
    if (obj.flags & (1 << 14)) {
        obj.admin_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 15)) {
        obj.banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 18)) {
        obj.default_banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 17)) {
        obj.participants_count = [is readInt32];
    }
    if (obj.flags2 & (1 << 0)) {
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
    }
    if (obj.flags2 & (1 << 4)) {
        obj.stories_max_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 7)) {
        obj.color = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 8)) {
        obj.profile_color = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 9)) {
        obj.emoji_status = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 10)) {
        obj.level = [is readInt32];
    }
    if (obj.flags2 & (1 << 11)) {
        obj.subscription_until_date = [is readInt32];
    }
    if (obj.flags2 & (1 << 13)) {
        obj.bot_verification_icon = [is readInt64];
    }
    if (obj.flags2 & (1 << 14)) {
        obj.send_paid_messages_stars = [is readInt64];
    }
    if (obj.flags2 & (1 << 18)) {
        obj.linked_monoforum_id = [is readInt64];
    }
    if (obj.flags2 & (1 << 20)) {
        obj.linked_community_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.flags2];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 13)) {
        [os writeInt64:self.access_hash];
    }
    [os writeString:self.title == nil ? @"" : self.title];
    if (self.flags & (1 << 6)) {
        [os writeString:self.username == nil ? @"" : self.username];
    }
    TLMetaClassStore::serializeObject(os, self.photo, true);
    [os writeInt32:self.date];
    if (self.flags & (1 << 9)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.restriction_reason.count];
            for (id item in self.restriction_reason) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 14)) {
        TLMetaClassStore::serializeObject(os, self.admin_rights, true);
    }
    if (self.flags & (1 << 15)) {
        TLMetaClassStore::serializeObject(os, self.banned_rights, true);
    }
    if (self.flags & (1 << 18)) {
        TLMetaClassStore::serializeObject(os, self.default_banned_rights, true);
    }
    if (self.flags & (1 << 17)) {
        [os writeInt32:self.participants_count];
    }
    if (self.flags2 & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.usernames.count];
            for (id item in self.usernames) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags2 & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.stories_max_id, true);
    }
    if (self.flags2 & (1 << 7)) {
        TLMetaClassStore::serializeObject(os, self.color, true);
    }
    if (self.flags2 & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.profile_color, true);
    }
    if (self.flags2 & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.emoji_status, true);
    }
    if (self.flags2 & (1 << 10)) {
        [os writeInt32:self.level];
    }
    if (self.flags2 & (1 << 11)) {
        [os writeInt32:self.subscription_until_date];
    }
    if (self.flags2 & (1 << 13)) {
        [os writeInt64:self.bot_verification_icon];
    }
    if (self.flags2 & (1 << 14)) {
        [os writeInt64:self.send_paid_messages_stars];
    }
    if (self.flags2 & (1 << 18)) {
        [os writeInt64:self.linked_monoforum_id];
    }
    if (self.flags2 & (1 << 20)) {
        [os writeInt64:self.linked_community_id];
    }
}
@end

@implementation ModernTL_channelForbidden
- (int32_t)TLconstructorSignature { return (int32_t)0x17d493d5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelForbidden *obj = [[ModernTL_channelForbidden alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.access_hash = [is readInt64];
    obj.title = [is readString];
    if (obj.flags & (1 << 16)) {
        obj.until_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeString:self.title == nil ? @"" : self.title];
    if (self.flags & (1 << 16)) {
        [os writeInt32:self.until_date];
    }
}
@end

@implementation ModernTL_chat
- (int32_t)TLconstructorSignature { return (int32_t)0x41cbf256; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chat *obj = [[ModernTL_chat alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.title = [is readString];
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.participants_count = [is readInt32];
    obj.date = [is readInt32];
    obj.version = [is readInt32];
    if (obj.flags & (1 << 6)) {
        obj.migrated_to = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 14)) {
        obj.admin_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 18)) {
        obj.default_banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeString:self.title == nil ? @"" : self.title];
    TLMetaClassStore::serializeObject(os, self.photo, true);
    [os writeInt32:self.participants_count];
    [os writeInt32:self.date];
    [os writeInt32:self.version];
    if (self.flags & (1 << 6)) {
        TLMetaClassStore::serializeObject(os, self.migrated_to, true);
    }
    if (self.flags & (1 << 14)) {
        TLMetaClassStore::serializeObject(os, self.admin_rights, true);
    }
    if (self.flags & (1 << 18)) {
        TLMetaClassStore::serializeObject(os, self.default_banned_rights, true);
    }
}
@end

@implementation ModernTL_chatEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x29562865; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatEmpty *obj = [[ModernTL_chatEmpty alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_chatForbidden
- (int32_t)TLconstructorSignature { return (int32_t)0x6592a1a7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatForbidden *obj = [[ModernTL_chatForbidden alloc] init];
    obj.n_id = [is readInt64];
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_community
- (int32_t)TLconstructorSignature { return (int32_t)0x65efe954; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_community *obj = [[ModernTL_community alloc] init];
    obj.flags = [is readInt32];
    obj.flags2 = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 13)) {
        obj.access_hash = [is readInt64];
    }
    obj.title = [is readString];
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    if (obj.flags & (1 << 14)) {
        obj.admin_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 18)) {
        obj.default_banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.flags2];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 13)) {
        [os writeInt64:self.access_hash];
    }
    [os writeString:self.title == nil ? @"" : self.title];
    TLMetaClassStore::serializeObject(os, self.photo, true);
    [os writeInt32:self.date];
    if (self.flags & (1 << 14)) {
        TLMetaClassStore::serializeObject(os, self.admin_rights, true);
    }
    if (self.flags & (1 << 18)) {
        TLMetaClassStore::serializeObject(os, self.default_banned_rights, true);
    }
}
@end

@implementation ModernTL_communityForbidden
- (int32_t)TLconstructorSignature { return (int32_t)0xfd3cdab8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_communityForbidden *obj = [[ModernTL_communityForbidden alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 13)) {
        obj.access_hash = [is readInt64];
    }
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 13)) {
        [os writeInt64:self.access_hash];
    }
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_chatAdminRights
- (int32_t)TLconstructorSignature { return (int32_t)0x5fb224d5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatAdminRights *obj = [[ModernTL_chatAdminRights alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_chatAdminWithInvites
- (int32_t)TLconstructorSignature { return (int32_t)0xf2ecef23; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatAdminWithInvites *obj = [[ModernTL_chatAdminWithInvites alloc] init];
    obj.admin_id = [is readInt64];
    obj.invites_count = [is readInt32];
    obj.revoked_invites_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.admin_id];
    [os writeInt32:self.invites_count];
    [os writeInt32:self.revoked_invites_count];
}
@end

@implementation ModernTL_chatBannedRights
- (int32_t)TLconstructorSignature { return (int32_t)0x9f120418; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatBannedRights *obj = [[ModernTL_chatBannedRights alloc] init];
    obj.flags = [is readInt32];
    obj.until_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.until_date];
}
@end

@implementation ModernTL_channelFull
- (int32_t)TLconstructorSignature { return (int32_t)0xa04e8d3a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelFull *obj = [[ModernTL_channelFull alloc] init];
    obj.flags = [is readInt32];
    obj.flags2 = [is readInt32];
    obj.n_id = [is readInt64];
    obj.about = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.participants_count = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.admins_count = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.kicked_count = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.banned_count = [is readInt32];
    }
    if (obj.flags & (1 << 13)) {
        obj.online_count = [is readInt32];
    }
    obj.read_inbox_max_id = [is readInt32];
    obj.read_outbox_max_id = [is readInt32];
    obj.unread_count = [is readInt32];
    obj.chat_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.notify_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 23)) {
        obj.exported_invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
        obj.bot_info = items;
    }
    if (obj.flags & (1 << 4)) {
        obj.migrated_from_chat_id = [is readInt64];
    }
    if (obj.flags & (1 << 4)) {
        obj.migrated_from_max_id = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.pinned_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 8)) {
        obj.stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 9)) {
        obj.available_min_id = [is readInt32];
    }
    if (obj.flags & (1 << 11)) {
        obj.folder_id = [is readInt32];
    }
    if (obj.flags & (1 << 14)) {
        obj.linked_chat_id = [is readInt64];
    }
    if (obj.flags & (1 << 15)) {
        obj.location = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 17)) {
        obj.slowmode_seconds = [is readInt32];
    }
    if (obj.flags & (1 << 18)) {
        obj.slowmode_next_send_date = [is readInt32];
    }
    if (obj.flags & (1 << 12)) {
        obj.stats_dc = [is readInt32];
    }
    obj.pts = [is readInt32];
    if (obj.flags & (1 << 21)) {
        obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 24)) {
        obj.ttl_period = [is readInt32];
    }
    if (obj.flags & (1 << 25)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                NSString *item = [is readString];
                [items addObject:item == nil ? @"" : item];
            }
            obj.pending_suggestions = items;
        }
    }
    if (obj.flags & (1 << 26)) {
        obj.groupcall_default_join_as = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 27)) {
        obj.theme_emoticon = [is readString];
    }
    if (obj.flags & (1 << 28)) {
        obj.requests_pending = [is readInt32];
    }
    if (obj.flags & (1 << 28)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt64])];
            }
            obj.recent_requesters = items;
        }
    }
    if (obj.flags & (1 << 29)) {
        obj.default_send_as = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 30)) {
        obj.available_reactions = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 13)) {
        obj.reactions_limit = [is readInt32];
    }
    if (obj.flags2 & (1 << 4)) {
        obj.stories = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 7)) {
        obj.wallpaper = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 8)) {
        obj.boosts_applied = [is readInt32];
    }
    if (obj.flags2 & (1 << 9)) {
        obj.boosts_unrestrict = [is readInt32];
    }
    if (obj.flags2 & (1 << 10)) {
        obj.emojiset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 17)) {
        obj.bot_verification = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 18)) {
        obj.stargifts_count = [is readInt32];
    }
    if (obj.flags2 & (1 << 21)) {
        obj.send_paid_messages_stars = [is readInt64];
    }
    if (obj.flags2 & (1 << 22)) {
        obj.main_tab = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 23)) {
        obj.guard_bot_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.flags2];
    [os writeInt64:self.n_id];
    [os writeString:self.about == nil ? @"" : self.about];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.participants_count];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.admins_count];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.kicked_count];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.banned_count];
    }
    if (self.flags & (1 << 13)) {
        [os writeInt32:self.online_count];
    }
    [os writeInt32:self.read_inbox_max_id];
    [os writeInt32:self.read_outbox_max_id];
    [os writeInt32:self.unread_count];
    TLMetaClassStore::serializeObject(os, self.chat_photo, true);
    TLMetaClassStore::serializeObject(os, self.notify_settings, true);
    if (self.flags & (1 << 23)) {
        TLMetaClassStore::serializeObject(os, self.exported_invite, true);
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.bot_info.count];
        for (id item in self.bot_info) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeInt64:self.migrated_from_chat_id];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.migrated_from_max_id];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.pinned_msg_id];
    }
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.stickerset, true);
    }
    if (self.flags & (1 << 9)) {
        [os writeInt32:self.available_min_id];
    }
    if (self.flags & (1 << 11)) {
        [os writeInt32:self.folder_id];
    }
    if (self.flags & (1 << 14)) {
        [os writeInt64:self.linked_chat_id];
    }
    if (self.flags & (1 << 15)) {
        TLMetaClassStore::serializeObject(os, self.location, true);
    }
    if (self.flags & (1 << 17)) {
        [os writeInt32:self.slowmode_seconds];
    }
    if (self.flags & (1 << 18)) {
        [os writeInt32:self.slowmode_next_send_date];
    }
    if (self.flags & (1 << 12)) {
        [os writeInt32:self.stats_dc];
    }
    [os writeInt32:self.pts];
    if (self.flags & (1 << 21)) {
        TLMetaClassStore::serializeObject(os, self.call, true);
    }
    if (self.flags & (1 << 24)) {
        [os writeInt32:self.ttl_period];
    }
    if (self.flags & (1 << 25)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.pending_suggestions.count];
            for (id item in self.pending_suggestions) {
                [os writeString:item];
            }
        }
    }
    if (self.flags & (1 << 26)) {
        TLMetaClassStore::serializeObject(os, self.groupcall_default_join_as, true);
    }
    if (self.flags & (1 << 27)) {
        [os writeString:self.theme_emoticon == nil ? @"" : self.theme_emoticon];
    }
    if (self.flags & (1 << 28)) {
        [os writeInt32:self.requests_pending];
    }
    if (self.flags & (1 << 28)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.recent_requesters.count];
            for (id item in self.recent_requesters) {
                [os writeInt64:[item longLongValue]];
            }
        }
    }
    if (self.flags & (1 << 29)) {
        TLMetaClassStore::serializeObject(os, self.default_send_as, true);
    }
    if (self.flags & (1 << 30)) {
        TLMetaClassStore::serializeObject(os, self.available_reactions, true);
    }
    if (self.flags2 & (1 << 13)) {
        [os writeInt32:self.reactions_limit];
    }
    if (self.flags2 & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.stories, true);
    }
    if (self.flags2 & (1 << 7)) {
        TLMetaClassStore::serializeObject(os, self.wallpaper, true);
    }
    if (self.flags2 & (1 << 8)) {
        [os writeInt32:self.boosts_applied];
    }
    if (self.flags2 & (1 << 9)) {
        [os writeInt32:self.boosts_unrestrict];
    }
    if (self.flags2 & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.emojiset, true);
    }
    if (self.flags2 & (1 << 17)) {
        TLMetaClassStore::serializeObject(os, self.bot_verification, true);
    }
    if (self.flags2 & (1 << 18)) {
        [os writeInt32:self.stargifts_count];
    }
    if (self.flags2 & (1 << 21)) {
        [os writeInt64:self.send_paid_messages_stars];
    }
    if (self.flags2 & (1 << 22)) {
        TLMetaClassStore::serializeObject(os, self.main_tab, true);
    }
    if (self.flags2 & (1 << 23)) {
        [os writeInt64:self.guard_bot_id];
    }
}
@end

@implementation ModernTL_chatFull
- (int32_t)TLconstructorSignature { return (int32_t)0x2633421b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatFull *obj = [[ModernTL_chatFull alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.about = [is readString];
    obj.participants = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 2)) {
        obj.chat_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.notify_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 13)) {
        obj.exported_invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
            obj.bot_info = items;
        }
    }
    if (obj.flags & (1 << 6)) {
        obj.pinned_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 11)) {
        obj.folder_id = [is readInt32];
    }
    if (obj.flags & (1 << 12)) {
        obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 14)) {
        obj.ttl_period = [is readInt32];
    }
    if (obj.flags & (1 << 15)) {
        obj.groupcall_default_join_as = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 16)) {
        obj.theme_emoticon = [is readString];
    }
    if (obj.flags & (1 << 17)) {
        obj.requests_pending = [is readInt32];
    }
    if (obj.flags & (1 << 17)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt64])];
            }
            obj.recent_requesters = items;
        }
    }
    if (obj.flags & (1 << 18)) {
        obj.available_reactions = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 20)) {
        obj.reactions_limit = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeString:self.about == nil ? @"" : self.about];
    TLMetaClassStore::serializeObject(os, self.participants, true);
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.chat_photo, true);
    }
    TLMetaClassStore::serializeObject(os, self.notify_settings, true);
    if (self.flags & (1 << 13)) {
        TLMetaClassStore::serializeObject(os, self.exported_invite, true);
    }
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.bot_info.count];
            for (id item in self.bot_info) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.pinned_msg_id];
    }
    if (self.flags & (1 << 11)) {
        [os writeInt32:self.folder_id];
    }
    if (self.flags & (1 << 12)) {
        TLMetaClassStore::serializeObject(os, self.call, true);
    }
    if (self.flags & (1 << 14)) {
        [os writeInt32:self.ttl_period];
    }
    if (self.flags & (1 << 15)) {
        TLMetaClassStore::serializeObject(os, self.groupcall_default_join_as, true);
    }
    if (self.flags & (1 << 16)) {
        [os writeString:self.theme_emoticon == nil ? @"" : self.theme_emoticon];
    }
    if (self.flags & (1 << 17)) {
        [os writeInt32:self.requests_pending];
    }
    if (self.flags & (1 << 17)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.recent_requesters.count];
            for (id item in self.recent_requesters) {
                [os writeInt64:[item longLongValue]];
            }
        }
    }
    if (self.flags & (1 << 18)) {
        TLMetaClassStore::serializeObject(os, self.available_reactions, true);
    }
    if (self.flags & (1 << 20)) {
        [os writeInt32:self.reactions_limit];
    }
}
@end

@implementation ModernTL_communityFull
- (int32_t)TLconstructorSignature { return (int32_t)0xcbb7a507; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_communityFull *obj = [[ModernTL_communityFull alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.about = [is readString];
    obj.chat_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.linked_peers = items;
    }
    if (obj.flags & (1 << 1)) {
        obj.admins_count = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.kicked_count = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.peer_link_requests_pending = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeString:self.about == nil ? @"" : self.about];
    TLMetaClassStore::serializeObject(os, self.chat_photo, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.linked_peers.count];
        for (id item in self.linked_peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.admins_count];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.kicked_count];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.peer_link_requests_pending];
    }
}
@end

@implementation ModernTL_phone_joinAsPeers
- (int32_t)TLconstructorSignature { return (int32_t)0xafe5623f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_joinAsPeers *obj = [[ModernTL_phone_joinAsPeers alloc] init];
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
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_phone_phoneCall
- (int32_t)TLconstructorSignature { return (int32_t)0xec82e140; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_phone_phoneCall *obj = [[ModernTL_phone_phoneCall alloc] init];
    obj.phone_call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    TLMetaClassStore::serializeObject(os, self.phone_call, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_photos_photo
- (int32_t)TLconstructorSignature { return (int32_t)0x20212ca8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photos_photo *obj = [[ModernTL_photos_photo alloc] init];
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    TLMetaClassStore::serializeObject(os, self.photo, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_photos_photos
- (int32_t)TLconstructorSignature { return (int32_t)0x8dca6aa5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photos_photos *obj = [[ModernTL_photos_photos alloc] init];
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
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.photos.count];
        for (id item in self.photos) {
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

@implementation ModernTL_photos_photosSlice
- (int32_t)TLconstructorSignature { return (int32_t)0x15051f54; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_photos_photosSlice *obj = [[ModernTL_photos_photosSlice alloc] init];
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
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.photos.count];
        for (id item in self.photos) {
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

@implementation ModernTL_premium_boostsList
- (int32_t)TLconstructorSignature { return (int32_t)0x86f8613c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_premium_boostsList *obj = [[ModernTL_premium_boostsList alloc] init];
    obj.flags = [is readInt32];
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
        obj.boosts = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
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
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.boosts.count];
        for (id item in self.boosts) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
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

@implementation ModernTL_premium_boostsStatus
- (int32_t)TLconstructorSignature { return (int32_t)0x4959427a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_premium_boostsStatus *obj = [[ModernTL_premium_boostsStatus alloc] init];
    obj.flags = [is readInt32];
    obj.level = [is readInt32];
    obj.current_level_boosts = [is readInt32];
    obj.boosts = [is readInt32];
    if (obj.flags & (1 << 4)) {
        obj.gift_boosts = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.next_level_boosts = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.premium_audience = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.boost_url = [is readString];
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
            obj.prepaid_giveaways = items;
        }
    }
    if (obj.flags & (1 << 2)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt32])];
            }
            obj.my_boost_slots = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.level];
    [os writeInt32:self.current_level_boosts];
    [os writeInt32:self.boosts];
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.gift_boosts];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.next_level_boosts];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.premium_audience, true);
    }
    [os writeString:self.boost_url == nil ? @"" : self.boost_url];
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.prepaid_giveaways.count];
            for (id item in self.prepaid_giveaways) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 2)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.my_boost_slots.count];
            for (id item in self.my_boost_slots) {
                [os writeInt32:[item intValue]];
            }
        }
    }
}
@end

@implementation ModernTL_premium_myBoosts
- (int32_t)TLconstructorSignature { return (int32_t)0x9ae228e2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_premium_myBoosts *obj = [[ModernTL_premium_myBoosts alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.my_boosts = items;
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
        obj.chats = items;
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.my_boosts.count];
        for (id item in self.my_boosts) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_smsjobs_eligibleToJoin
- (int32_t)TLconstructorSignature { return (int32_t)0xdc8b44cf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_smsjobs_eligibleToJoin *obj = [[ModernTL_smsjobs_eligibleToJoin alloc] init];
    obj.terms_url = [is readString];
    obj.monthly_sent_sms = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.terms_url == nil ? @"" : self.terms_url];
    [os writeInt32:self.monthly_sent_sms];
}
@end

@implementation ModernTL_smsjobs_status
- (int32_t)TLconstructorSignature { return (int32_t)0x2aee9191; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_smsjobs_status *obj = [[ModernTL_smsjobs_status alloc] init];
    obj.flags = [is readInt32];
    obj.recent_sent = [is readInt32];
    obj.recent_since = [is readInt32];
    obj.recent_remains = [is readInt32];
    obj.total_sent = [is readInt32];
    obj.total_since = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.last_gift_slug = [is readString];
    }
    obj.terms_url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.recent_sent];
    [os writeInt32:self.recent_since];
    [os writeInt32:self.recent_remains];
    [os writeInt32:self.total_sent];
    [os writeInt32:self.total_since];
    if (self.flags & (1 << 1)) {
        [os writeString:self.last_gift_slug == nil ? @"" : self.last_gift_slug];
    }
    [os writeString:self.terms_url == nil ? @"" : self.terms_url];
}
@end

@implementation ModernTL_stats_broadcastStats
- (int32_t)TLconstructorSignature { return (int32_t)0x396ca5fc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_stats_broadcastStats *obj = [[ModernTL_stats_broadcastStats alloc] init];
    obj.period = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.followers = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.views_per_post = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.shares_per_post = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.reactions_per_post = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.views_per_story = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.shares_per_story = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.reactions_per_story = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.enabled_notifications = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.growth_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.followers_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.mute_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.top_hours_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.interactions_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.iv_interactions_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.views_by_source_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_followers_by_source_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.languages_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.reactions_by_emotion_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.story_interactions_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.story_reactions_by_emotion_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.recent_posts_interactions = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.period, true);
    TLMetaClassStore::serializeObject(os, self.followers, true);
    TLMetaClassStore::serializeObject(os, self.views_per_post, true);
    TLMetaClassStore::serializeObject(os, self.shares_per_post, true);
    TLMetaClassStore::serializeObject(os, self.reactions_per_post, true);
    TLMetaClassStore::serializeObject(os, self.views_per_story, true);
    TLMetaClassStore::serializeObject(os, self.shares_per_story, true);
    TLMetaClassStore::serializeObject(os, self.reactions_per_story, true);
    TLMetaClassStore::serializeObject(os, self.enabled_notifications, true);
    TLMetaClassStore::serializeObject(os, self.growth_graph, true);
    TLMetaClassStore::serializeObject(os, self.followers_graph, true);
    TLMetaClassStore::serializeObject(os, self.mute_graph, true);
    TLMetaClassStore::serializeObject(os, self.top_hours_graph, true);
    TLMetaClassStore::serializeObject(os, self.interactions_graph, true);
    TLMetaClassStore::serializeObject(os, self.iv_interactions_graph, true);
    TLMetaClassStore::serializeObject(os, self.views_by_source_graph, true);
    TLMetaClassStore::serializeObject(os, self.n_new_followers_by_source_graph, true);
    TLMetaClassStore::serializeObject(os, self.languages_graph, true);
    TLMetaClassStore::serializeObject(os, self.reactions_by_emotion_graph, true);
    TLMetaClassStore::serializeObject(os, self.story_interactions_graph, true);
    TLMetaClassStore::serializeObject(os, self.story_reactions_by_emotion_graph, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.recent_posts_interactions.count];
        for (id item in self.recent_posts_interactions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_stats_megagroupStats
- (int32_t)TLconstructorSignature { return (int32_t)0xef7ff916; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_stats_megagroupStats *obj = [[ModernTL_stats_megagroupStats alloc] init];
    obj.period = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.members = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.messages = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.viewers = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.posters = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.growth_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.members_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_members_by_source_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.languages_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.messages_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.actions_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.top_hours_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.weekdays_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.top_posters = items;
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
        obj.top_admins = items;
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
        obj.top_inviters = items;
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
    TLMetaClassStore::serializeObject(os, self.period, true);
    TLMetaClassStore::serializeObject(os, self.members, true);
    TLMetaClassStore::serializeObject(os, self.messages, true);
    TLMetaClassStore::serializeObject(os, self.viewers, true);
    TLMetaClassStore::serializeObject(os, self.posters, true);
    TLMetaClassStore::serializeObject(os, self.growth_graph, true);
    TLMetaClassStore::serializeObject(os, self.members_graph, true);
    TLMetaClassStore::serializeObject(os, self.n_new_members_by_source_graph, true);
    TLMetaClassStore::serializeObject(os, self.languages_graph, true);
    TLMetaClassStore::serializeObject(os, self.messages_graph, true);
    TLMetaClassStore::serializeObject(os, self.actions_graph, true);
    TLMetaClassStore::serializeObject(os, self.top_hours_graph, true);
    TLMetaClassStore::serializeObject(os, self.weekdays_graph, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.top_posters.count];
        for (id item in self.top_posters) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.top_admins.count];
        for (id item in self.top_admins) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.top_inviters.count];
        for (id item in self.top_inviters) {
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

@implementation ModernTL_stats_messageStats
- (int32_t)TLconstructorSignature { return (int32_t)0x7fe91c14; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_stats_messageStats *obj = [[ModernTL_stats_messageStats alloc] init];
    obj.views_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.reactions_by_emotion_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.views_graph, true);
    TLMetaClassStore::serializeObject(os, self.reactions_by_emotion_graph, true);
}
@end

@implementation ModernTL_stats_pollStats
- (int32_t)TLconstructorSignature { return (int32_t)0x2999beed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_stats_pollStats *obj = [[ModernTL_stats_pollStats alloc] init];
    obj.votes_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.votes_graph, true);
}
@end

@implementation ModernTL_stats_publicForwards
- (int32_t)TLconstructorSignature { return (int32_t)0x93037e20; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_stats_publicForwards *obj = [[ModernTL_stats_publicForwards alloc] init];
    obj.flags = [is readInt32];
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
        obj.forwards = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
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
        obj.chats = items;
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
    [os writeInt32:self.flags];
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.forwards.count];
        for (id item in self.forwards) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
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

@implementation ModernTL_stats_storyStats
- (int32_t)TLconstructorSignature { return (int32_t)0x50cd067c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_stats_storyStats *obj = [[ModernTL_stats_storyStats alloc] init];
    obj.views_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.reactions_by_emotion_graph = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.views_graph, true);
    TLMetaClassStore::serializeObject(os, self.reactions_by_emotion_graph, true);
}
@end

@implementation ModernTL_stickers_suggestedShortName
- (int32_t)TLconstructorSignature { return (int32_t)0x85fea03f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_stickers_suggestedShortName *obj = [[ModernTL_stickers_suggestedShortName alloc] init];
    obj.short_name = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.short_name == nil ? @"" : self.short_name];
}
@end

@implementation ModernTL_storage_fileGif
- (int32_t)TLconstructorSignature { return (int32_t)0xcae1aadf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_storage_fileGif *obj = [[ModernTL_storage_fileGif alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

