// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
#import "ModernTL.h"
#import <objc/runtime.h>
#import "NSInputStream+TL.h"
#import "NSOutputStream+TL.h"
#import "TLMetaClassStore.h"

@implementation ModernTL_invoice
- (int32_t)TLconstructorSignature { return (int32_t)0x049ee584; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_invoice *obj = [[ModernTL_invoice alloc] init];
    obj.flags = [is readInt32];
    obj.currency = [is readString];
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
    if (obj.flags & (1 << 8)) {
        obj.max_tip_amount = [is readInt64];
    }
    if (obj.flags & (1 << 8)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                [items addObject:@([is readInt64])];
            }
            obj.suggested_tip_amounts = items;
        }
    }
    if (obj.flags & (1 << 10)) {
        obj.terms_url = [is readString];
    }
    if (obj.flags & (1 << 11)) {
        obj.subscription_period = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.currency == nil ? @"" : self.currency];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.prices.count];
        for (id item in self.prices) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 8)) {
        [os writeInt64:self.max_tip_amount];
    }
    if (self.flags & (1 << 8)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.suggested_tip_amounts.count];
            for (id item in self.suggested_tip_amounts) {
                [os writeInt64:[item longLongValue]];
            }
        }
    }
    if (self.flags & (1 << 10)) {
        [os writeString:self.terms_url == nil ? @"" : self.terms_url];
    }
    if (self.flags & (1 << 11)) {
        [os writeInt32:self.subscription_period];
    }
}
@end

@implementation ModernTL_jsonObjectValue
- (int32_t)TLconstructorSignature { return (int32_t)0xc0de1bd9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_jsonObjectValue *obj = [[ModernTL_jsonObjectValue alloc] init];
    obj.key = [is readString];
    obj.value = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.key == nil ? @"" : self.key];
    TLMetaClassStore::serializeObject(os, self.value, true);
}
@end

@implementation ModernTL_jsonArray
- (int32_t)TLconstructorSignature { return (int32_t)0xf7444763; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_jsonArray *obj = [[ModernTL_jsonArray alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.value = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.value.count];
        for (id item in self.value) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_jsonBool
- (int32_t)TLconstructorSignature { return (int32_t)0xc7345e6a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_jsonBool *obj = [[ModernTL_jsonBool alloc] init];
    obj.value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_jsonNull
- (int32_t)TLconstructorSignature { return (int32_t)0x3f6d7b68; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_jsonNull *obj = [[ModernTL_jsonNull alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_jsonNumber
- (int32_t)TLconstructorSignature { return (int32_t)0x2be0dfa4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_jsonNumber *obj = [[ModernTL_jsonNumber alloc] init];
    obj.value = [is readDouble];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeDouble:self.value];
}
@end

@implementation ModernTL_jsonObject
- (int32_t)TLconstructorSignature { return (int32_t)0x99c1d49d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_jsonObject *obj = [[ModernTL_jsonObject alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.value = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.value.count];
        for (id item in self.value) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_jsonString
- (int32_t)TLconstructorSignature { return (int32_t)0xb71e767a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_jsonString *obj = [[ModernTL_jsonString alloc] init];
    obj.value = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.value == nil ? @"" : self.value];
}
@end

@implementation ModernTL_joinChatBotResultApproved
- (int32_t)TLconstructorSignature { return (int32_t)0xae152a69; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_joinChatBotResultApproved *obj = [[ModernTL_joinChatBotResultApproved alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_joinChatBotResultDeclined
- (int32_t)TLconstructorSignature { return (int32_t)0x0efa0194; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_joinChatBotResultDeclined *obj = [[ModernTL_joinChatBotResultDeclined alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_joinChatBotResultQueued
- (int32_t)TLconstructorSignature { return (int32_t)0x98a3a840; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_joinChatBotResultQueued *obj = [[ModernTL_joinChatBotResultQueued alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_joinChatBotResultWebView
- (int32_t)TLconstructorSignature { return (int32_t)0xd6e3b813; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_joinChatBotResultWebView *obj = [[ModernTL_joinChatBotResultWebView alloc] init];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_inputKeyboardButtonRequestPeer
- (int32_t)TLconstructorSignature { return (int32_t)0x02b78156; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputKeyboardButtonRequestPeer *obj = [[ModernTL_inputKeyboardButtonRequestPeer alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.button_id = [is readInt32];
    obj.peer_type = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.max_quantity = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeInt32:self.button_id];
    TLMetaClassStore::serializeObject(os, self.peer_type, true);
    [os writeInt32:self.max_quantity];
}
@end

@implementation ModernTL_inputKeyboardButtonUrlAuth
- (int32_t)TLconstructorSignature { return (int32_t)0x68013e72; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputKeyboardButtonUrlAuth *obj = [[ModernTL_inputKeyboardButtonUrlAuth alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.fwd_text = [is readString];
    }
    obj.url = [is readString];
    obj.bot = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    if (self.flags & (1 << 1)) {
        [os writeString:self.fwd_text == nil ? @"" : self.fwd_text];
    }
    [os writeString:self.url == nil ? @"" : self.url];
    TLMetaClassStore::serializeObject(os, self.bot, true);
}
@end

@implementation ModernTL_inputKeyboardButtonUserProfile
- (int32_t)TLconstructorSignature { return (int32_t)0x7d5e07c7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputKeyboardButtonUserProfile *obj = [[ModernTL_inputKeyboardButtonUserProfile alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.user_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    TLMetaClassStore::serializeObject(os, self.user_id, true);
}
@end

@implementation ModernTL_keyboardButton
- (int32_t)TLconstructorSignature { return (int32_t)0x7d170cff; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButton *obj = [[ModernTL_keyboardButton alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_keyboardButtonBuy
- (int32_t)TLconstructorSignature { return (int32_t)0x3fa53905; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonBuy *obj = [[ModernTL_keyboardButtonBuy alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_keyboardButtonCallback
- (int32_t)TLconstructorSignature { return (int32_t)0xe62bc960; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonCallback *obj = [[ModernTL_keyboardButtonCallback alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.data = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeBytes:self.data == nil ? [NSData data] : self.data];
}
@end

@implementation ModernTL_keyboardButtonCopy
- (int32_t)TLconstructorSignature { return (int32_t)0xbcc4af10; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonCopy *obj = [[ModernTL_keyboardButtonCopy alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.n_copy_text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeString:self.n_copy_text == nil ? @"" : self.n_copy_text];
}
@end

@implementation ModernTL_keyboardButtonGame
- (int32_t)TLconstructorSignature { return (int32_t)0x89c590f9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonGame *obj = [[ModernTL_keyboardButtonGame alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_keyboardButtonRequestGeoLocation
- (int32_t)TLconstructorSignature { return (int32_t)0xaa40f94d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonRequestGeoLocation *obj = [[ModernTL_keyboardButtonRequestGeoLocation alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_keyboardButtonRequestPeer
- (int32_t)TLconstructorSignature { return (int32_t)0x5b0f15f5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonRequestPeer *obj = [[ModernTL_keyboardButtonRequestPeer alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.button_id = [is readInt32];
    obj.peer_type = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.max_quantity = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeInt32:self.button_id];
    TLMetaClassStore::serializeObject(os, self.peer_type, true);
    [os writeInt32:self.max_quantity];
}
@end

@implementation ModernTL_keyboardButtonRequestPhone
- (int32_t)TLconstructorSignature { return (int32_t)0x417efd8f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonRequestPhone *obj = [[ModernTL_keyboardButtonRequestPhone alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_keyboardButtonRequestPoll
- (int32_t)TLconstructorSignature { return (int32_t)0x7a11d782; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonRequestPoll *obj = [[ModernTL_keyboardButtonRequestPoll alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 0)) {
        obj.quiz = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.quiz ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_keyboardButtonSimpleWebView
- (int32_t)TLconstructorSignature { return (int32_t)0xe15c4370; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonSimpleWebView *obj = [[ModernTL_keyboardButtonSimpleWebView alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_keyboardButtonSwitchInline
- (int32_t)TLconstructorSignature { return (int32_t)0x991399fc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonSwitchInline *obj = [[ModernTL_keyboardButtonSwitchInline alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.query = [is readString];
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
            obj.peer_types = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeString:self.query == nil ? @"" : self.query];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.peer_types.count];
            for (id item in self.peer_types) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_keyboardButtonUrl
- (int32_t)TLconstructorSignature { return (int32_t)0xd80c25ec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonUrl *obj = [[ModernTL_keyboardButtonUrl alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_keyboardButtonUrlAuth
- (int32_t)TLconstructorSignature { return (int32_t)0xf51006f9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonUrlAuth *obj = [[ModernTL_keyboardButtonUrlAuth alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.fwd_text = [is readString];
    }
    obj.url = [is readString];
    obj.button_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    if (self.flags & (1 << 0)) {
        [os writeString:self.fwd_text == nil ? @"" : self.fwd_text];
    }
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt32:self.button_id];
}
@end

@implementation ModernTL_keyboardButtonUserProfile
- (int32_t)TLconstructorSignature { return (int32_t)0xc0fd5d09; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonUserProfile *obj = [[ModernTL_keyboardButtonUserProfile alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_keyboardButtonWebView
- (int32_t)TLconstructorSignature { return (int32_t)0xe846b1a0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonWebView *obj = [[ModernTL_keyboardButtonWebView alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 10)) {
        obj.style = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.text = [is readString];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.style, true);
    }
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_keyboardButtonRow
- (int32_t)TLconstructorSignature { return (int32_t)0x77608b83; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonRow *obj = [[ModernTL_keyboardButtonRow alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.buttons = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.buttons.count];
        for (id item in self.buttons) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_keyboardButtonStyle
- (int32_t)TLconstructorSignature { return (int32_t)0x4fdd3430; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_keyboardButtonStyle *obj = [[ModernTL_keyboardButtonStyle alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.icon = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 3)) {
        [os writeInt64:self.icon];
    }
}
@end

@implementation ModernTL_labeledPrice
- (int32_t)TLconstructorSignature { return (int32_t)0xcb296bf8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_labeledPrice *obj = [[ModernTL_labeledPrice alloc] init];
    obj.label = [is readString];
    obj.amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.label == nil ? @"" : self.label];
    [os writeInt64:self.amount];
}
@end

@implementation ModernTL_langPackDifference
- (int32_t)TLconstructorSignature { return (int32_t)0xf385c1f6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_langPackDifference *obj = [[ModernTL_langPackDifference alloc] init];
    obj.lang_code = [is readString];
    obj.from_version = [is readInt32];
    obj.version = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.strings = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.lang_code == nil ? @"" : self.lang_code];
    [os writeInt32:self.from_version];
    [os writeInt32:self.version];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.strings.count];
        for (id item in self.strings) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_langPackLanguage
- (int32_t)TLconstructorSignature { return (int32_t)0xeeca5ce3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_langPackLanguage *obj = [[ModernTL_langPackLanguage alloc] init];
    obj.flags = [is readInt32];
    obj.name = [is readString];
    obj.native_name = [is readString];
    obj.lang_code = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.base_lang_code = [is readString];
    }
    obj.plural_code = [is readString];
    obj.strings_count = [is readInt32];
    obj.translated_count = [is readInt32];
    obj.translations_url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.name == nil ? @"" : self.name];
    [os writeString:self.native_name == nil ? @"" : self.native_name];
    [os writeString:self.lang_code == nil ? @"" : self.lang_code];
    if (self.flags & (1 << 1)) {
        [os writeString:self.base_lang_code == nil ? @"" : self.base_lang_code];
    }
    [os writeString:self.plural_code == nil ? @"" : self.plural_code];
    [os writeInt32:self.strings_count];
    [os writeInt32:self.translated_count];
    [os writeString:self.translations_url == nil ? @"" : self.translations_url];
}
@end

@implementation ModernTL_langPackString
- (int32_t)TLconstructorSignature { return (int32_t)0xcad181f6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_langPackString *obj = [[ModernTL_langPackString alloc] init];
    obj.key = [is readString];
    obj.value = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.key == nil ? @"" : self.key];
    [os writeString:self.value == nil ? @"" : self.value];
}
@end

@implementation ModernTL_langPackStringDeleted
- (int32_t)TLconstructorSignature { return (int32_t)0x2979eeb2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_langPackStringDeleted *obj = [[ModernTL_langPackStringDeleted alloc] init];
    obj.key = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.key == nil ? @"" : self.key];
}
@end

@implementation ModernTL_langPackStringPluralized
- (int32_t)TLconstructorSignature { return (int32_t)0x6c47ac9f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_langPackStringPluralized *obj = [[ModernTL_langPackStringPluralized alloc] init];
    obj.flags = [is readInt32];
    obj.key = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.zero_value = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.one_value = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.two_value = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.few_value = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.many_value = [is readString];
    }
    obj.other_value = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.key == nil ? @"" : self.key];
    if (self.flags & (1 << 0)) {
        [os writeString:self.zero_value == nil ? @"" : self.zero_value];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.one_value == nil ? @"" : self.one_value];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.two_value == nil ? @"" : self.two_value];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.few_value == nil ? @"" : self.few_value];
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.many_value == nil ? @"" : self.many_value];
    }
    [os writeString:self.other_value == nil ? @"" : self.other_value];
}
@end

@implementation ModernTL_maskCoords
- (int32_t)TLconstructorSignature { return (int32_t)0xaed6dbb2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_maskCoords *obj = [[ModernTL_maskCoords alloc] init];
    obj.n = [is readInt32];
    obj.x = [is readDouble];
    obj.y = [is readDouble];
    obj.zoom = [is readDouble];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n];
    [os writeDouble:self.x];
    [os writeDouble:self.y];
    [os writeDouble:self.zoom];
}
@end

@implementation ModernTL_inputMediaAreaChannelPost
- (int32_t)TLconstructorSignature { return (int32_t)0x2271f2bf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaAreaChannelPost *obj = [[ModernTL_inputMediaAreaChannelPost alloc] init];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.channel = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    TLMetaClassStore::serializeObject(os, self.channel, true);
    [os writeInt32:self.msg_id];
}
@end

@implementation ModernTL_inputMediaAreaVenue
- (int32_t)TLconstructorSignature { return (int32_t)0xb282217f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMediaAreaVenue *obj = [[ModernTL_inputMediaAreaVenue alloc] init];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.query_id = [is readInt64];
    obj.result_id = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    [os writeInt64:self.query_id];
    [os writeString:self.result_id == nil ? @"" : self.result_id];
}
@end

@implementation ModernTL_mediaAreaChannelPost
- (int32_t)TLconstructorSignature { return (int32_t)0x770416af; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaChannelPost *obj = [[ModernTL_mediaAreaChannelPost alloc] init];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.channel_id = [is readInt64];
    obj.msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    [os writeInt64:self.channel_id];
    [os writeInt32:self.msg_id];
}
@end

@implementation ModernTL_mediaAreaGeoPoint
- (int32_t)TLconstructorSignature { return (int32_t)0xcad5452d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaGeoPoint *obj = [[ModernTL_mediaAreaGeoPoint alloc] init];
    obj.flags = [is readInt32];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.address = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    TLMetaClassStore::serializeObject(os, self.geo, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.address, true);
    }
}
@end

@implementation ModernTL_mediaAreaStarGift
- (int32_t)TLconstructorSignature { return (int32_t)0x5787686d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaStarGift *obj = [[ModernTL_mediaAreaStarGift alloc] init];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.slug = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    [os writeString:self.slug == nil ? @"" : self.slug];
}
@end

@implementation ModernTL_mediaAreaSuggestedReaction
- (int32_t)TLconstructorSignature { return (int32_t)0x14455871; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaSuggestedReaction *obj = [[ModernTL_mediaAreaSuggestedReaction alloc] init];
    obj.flags = [is readInt32];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.reaction = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    TLMetaClassStore::serializeObject(os, self.reaction, true);
}
@end

@implementation ModernTL_mediaAreaUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x37381085; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaUrl *obj = [[ModernTL_mediaAreaUrl alloc] init];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_mediaAreaVenue
- (int32_t)TLconstructorSignature { return (int32_t)0xbe82db9c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaVenue *obj = [[ModernTL_mediaAreaVenue alloc] init];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.title = [is readString];
    obj.address = [is readString];
    obj.provider = [is readString];
    obj.venue_id = [is readString];
    obj.venue_type = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    TLMetaClassStore::serializeObject(os, self.geo, true);
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.address == nil ? @"" : self.address];
    [os writeString:self.provider == nil ? @"" : self.provider];
    [os writeString:self.venue_id == nil ? @"" : self.venue_id];
    [os writeString:self.venue_type == nil ? @"" : self.venue_type];
}
@end

@implementation ModernTL_mediaAreaWeather
- (int32_t)TLconstructorSignature { return (int32_t)0x49a6549c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaWeather *obj = [[ModernTL_mediaAreaWeather alloc] init];
    obj.coordinates = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.emoji = [is readString];
    obj.temperature_c = [is readDouble];
    obj.color = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.coordinates, true);
    [os writeString:self.emoji == nil ? @"" : self.emoji];
    [os writeDouble:self.temperature_c];
    [os writeInt32:self.color];
}
@end

@implementation ModernTL_mediaAreaCoordinates
- (int32_t)TLconstructorSignature { return (int32_t)0xcfc9e002; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_mediaAreaCoordinates *obj = [[ModernTL_mediaAreaCoordinates alloc] init];
    obj.flags = [is readInt32];
    obj.x = [is readDouble];
    obj.y = [is readDouble];
    obj.w = [is readDouble];
    obj.h = [is readDouble];
    obj.rotation = [is readDouble];
    if (obj.flags & (1 << 0)) {
        obj.radius = [is readDouble];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeDouble:self.x];
    [os writeDouble:self.y];
    [os writeDouble:self.w];
    [os writeDouble:self.h];
    [os writeDouble:self.rotation];
    if (self.flags & (1 << 0)) {
        [os writeDouble:self.radius];
    }
}
@end

@implementation ModernTL_message
- (int32_t)TLconstructorSignature { return (int32_t)0x7600b9d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_message *obj = [[ModernTL_message alloc] init];
    obj.flags = [is readInt32];
    obj.flags2 = [is readInt32];
    obj.n_id = [is readInt32];
    if (obj.flags & (1 << 8)) {
        obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 29)) {
        obj.from_boosts_applied = [is readInt32];
    }
    if (obj.flags2 & (1 << 12)) {
        obj.from_rank = [is readString];
    }
    obj.peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 28)) {
        obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.fwd_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 11)) {
        obj.via_bot_id = [is readInt64];
    }
    if (obj.flags2 & (1 << 0)) {
        obj.via_business_bot_id = [is readInt64];
    }
    if (obj.flags2 & (1 << 19)) {
        obj.guestchat_via_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.reply_to = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.date = [is readInt32];
    obj.message = [is readString];
    if (obj.flags & (1 << 9)) {
        obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 6)) {
        obj.reply_markup = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
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
    if (obj.flags & (1 << 10)) {
        obj.views = [is readInt32];
    }
    if (obj.flags & (1 << 10)) {
        obj.forwards = [is readInt32];
    }
    if (obj.flags & (1 << 23)) {
        obj.replies = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 15)) {
        obj.edit_date = [is readInt32];
    }
    if (obj.flags & (1 << 16)) {
        obj.post_author = [is readString];
    }
    if (obj.flags & (1 << 17)) {
        obj.grouped_id = [is readInt64];
    }
    if (obj.flags & (1 << 20)) {
        obj.reactions = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 22)) {
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
    if (obj.flags & (1 << 25)) {
        obj.ttl_period = [is readInt32];
    }
    if (obj.flags & (1 << 30)) {
        obj.quick_reply_shortcut_id = [is readInt32];
    }
    if (obj.flags2 & (1 << 2)) {
        obj.effect = [is readInt64];
    }
    if (obj.flags2 & (1 << 3)) {
        obj.factcheck = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 5)) {
        obj.report_delivery_until_date = [is readInt32];
    }
    if (obj.flags2 & (1 << 6)) {
        obj.paid_message_stars = [is readInt64];
    }
    if (obj.flags2 & (1 << 7)) {
        obj.suggested_post = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 10)) {
        obj.schedule_repeat_period = [is readInt32];
    }
    if (obj.flags2 & (1 << 11)) {
        obj.summary_from_language = [is readString];
    }
    if (obj.flags2 & (1 << 13)) {
        obj.rich_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.flags2];
    [os writeInt32:self.n_id];
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.from_id, true);
    }
    if (self.flags & (1 << 29)) {
        [os writeInt32:self.from_boosts_applied];
    }
    if (self.flags2 & (1 << 12)) {
        [os writeString:self.from_rank == nil ? @"" : self.from_rank];
    }
    TLMetaClassStore::serializeObject(os, self.peer_id, true);
    if (self.flags & (1 << 28)) {
        TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.fwd_from, true);
    }
    if (self.flags & (1 << 11)) {
        [os writeInt64:self.via_bot_id];
    }
    if (self.flags2 & (1 << 0)) {
        [os writeInt64:self.via_business_bot_id];
    }
    if (self.flags2 & (1 << 19)) {
        TLMetaClassStore::serializeObject(os, self.guestchat_via_from, true);
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.reply_to, true);
    }
    [os writeInt32:self.date];
    [os writeString:self.message == nil ? @"" : self.message];
    if (self.flags & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.media, true);
    }
    if (self.flags & (1 << 6)) {
        TLMetaClassStore::serializeObject(os, self.reply_markup, true);
    }
    if (self.flags & (1 << 7)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 10)) {
        [os writeInt32:self.views];
    }
    if (self.flags & (1 << 10)) {
        [os writeInt32:self.forwards];
    }
    if (self.flags & (1 << 23)) {
        TLMetaClassStore::serializeObject(os, self.replies, true);
    }
    if (self.flags & (1 << 15)) {
        [os writeInt32:self.edit_date];
    }
    if (self.flags & (1 << 16)) {
        [os writeString:self.post_author == nil ? @"" : self.post_author];
    }
    if (self.flags & (1 << 17)) {
        [os writeInt64:self.grouped_id];
    }
    if (self.flags & (1 << 20)) {
        TLMetaClassStore::serializeObject(os, self.reactions, true);
    }
    if (self.flags & (1 << 22)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.restriction_reason.count];
            for (id item in self.restriction_reason) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 25)) {
        [os writeInt32:self.ttl_period];
    }
    if (self.flags & (1 << 30)) {
        [os writeInt32:self.quick_reply_shortcut_id];
    }
    if (self.flags2 & (1 << 2)) {
        [os writeInt64:self.effect];
    }
    if (self.flags2 & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.factcheck, true);
    }
    if (self.flags2 & (1 << 5)) {
        [os writeInt32:self.report_delivery_until_date];
    }
    if (self.flags2 & (1 << 6)) {
        [os writeInt64:self.paid_message_stars];
    }
    if (self.flags2 & (1 << 7)) {
        TLMetaClassStore::serializeObject(os, self.suggested_post, true);
    }
    if (self.flags2 & (1 << 10)) {
        [os writeInt32:self.schedule_repeat_period];
    }
    if (self.flags2 & (1 << 11)) {
        [os writeString:self.summary_from_language == nil ? @"" : self.summary_from_language];
    }
    if (self.flags2 & (1 << 13)) {
        TLMetaClassStore::serializeObject(os, self.rich_message, true);
    }
}
@end

@implementation ModernTL_messageEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x90a6ca84; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEmpty *obj = [[ModernTL_messageEmpty alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.n_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.peer_id, true);
    }
}
@end

@implementation ModernTL_messageService
- (int32_t)TLconstructorSignature { return (int32_t)0x7a800e0a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageService *obj = [[ModernTL_messageService alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt32];
    if (obj.flags & (1 << 8)) {
        obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 28)) {
        obj.saved_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.reply_to = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.date = [is readInt32];
    obj.action = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 20)) {
        obj.reactions = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 25)) {
        obj.ttl_period = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.n_id];
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.from_id, true);
    }
    TLMetaClassStore::serializeObject(os, self.peer_id, true);
    if (self.flags & (1 << 28)) {
        TLMetaClassStore::serializeObject(os, self.saved_peer_id, true);
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.reply_to, true);
    }
    [os writeInt32:self.date];
    TLMetaClassStore::serializeObject(os, self.action, true);
    if (self.flags & (1 << 20)) {
        TLMetaClassStore::serializeObject(os, self.reactions, true);
    }
    if (self.flags & (1 << 25)) {
        [os writeInt32:self.ttl_period];
    }
}
@end

@implementation ModernTL_messageActionBoostApply
- (int32_t)TLconstructorSignature { return (int32_t)0xcc02aa6d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionBoostApply *obj = [[ModernTL_messageActionBoostApply alloc] init];
    obj.boosts = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.boosts];
}
@end

@implementation ModernTL_messageActionBotAllowed
- (int32_t)TLconstructorSignature { return (int32_t)0xc516d679; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionBotAllowed *obj = [[ModernTL_messageActionBotAllowed alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.domain = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.app = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.domain == nil ? @"" : self.domain];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.app, true);
    }
}
@end

@implementation ModernTL_messageActionChangeCommunity
- (int32_t)TLconstructorSignature { return (int32_t)0x5d20bae8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChangeCommunity *obj = [[ModernTL_messageActionChangeCommunity alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.community_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.community_id];
    }
}
@end

@implementation ModernTL_messageActionChangeCreator
- (int32_t)TLconstructorSignature { return (int32_t)0xe188503b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChangeCreator *obj = [[ModernTL_messageActionChangeCreator alloc] init];
    obj.n_new_creator_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_new_creator_id];
}
@end

@implementation ModernTL_messageActionChannelCreate
- (int32_t)TLconstructorSignature { return (int32_t)0x95d2ac92; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChannelCreate *obj = [[ModernTL_messageActionChannelCreate alloc] init];
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_messageActionChannelMigrateFrom
- (int32_t)TLconstructorSignature { return (int32_t)0xea3948e9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChannelMigrateFrom *obj = [[ModernTL_messageActionChannelMigrateFrom alloc] init];
    obj.title = [is readString];
    obj.chat_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeInt64:self.chat_id];
}
@end

@implementation ModernTL_messageActionChatAddUser
- (int32_t)TLconstructorSignature { return (int32_t)0x15cefd00; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatAddUser *obj = [[ModernTL_messageActionChatAddUser alloc] init];
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

@implementation ModernTL_messageActionChatCreate
- (int32_t)TLconstructorSignature { return (int32_t)0xbd47cbad; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatCreate *obj = [[ModernTL_messageActionChatCreate alloc] init];
    obj.title = [is readString];
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
    [os writeString:self.title == nil ? @"" : self.title];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_messageActionChatDeletePhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x95e3fbef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatDeletePhoto *obj = [[ModernTL_messageActionChatDeletePhoto alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageActionChatDeleteUser
- (int32_t)TLconstructorSignature { return (int32_t)0xa43f30cc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatDeleteUser *obj = [[ModernTL_messageActionChatDeleteUser alloc] init];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_messageActionChatEditPhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x7fcb13a8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatEditPhoto *obj = [[ModernTL_messageActionChatEditPhoto alloc] init];
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.photo, true);
}
@end

@implementation ModernTL_messageActionChatEditTitle
- (int32_t)TLconstructorSignature { return (int32_t)0xb5a1ce5a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatEditTitle *obj = [[ModernTL_messageActionChatEditTitle alloc] init];
    obj.title = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.title == nil ? @"" : self.title];
}
@end

@implementation ModernTL_messageActionChatJoinedByLink
- (int32_t)TLconstructorSignature { return (int32_t)0x031224c3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatJoinedByLink *obj = [[ModernTL_messageActionChatJoinedByLink alloc] init];
    obj.inviter_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.inviter_id];
}
@end

@implementation ModernTL_messageActionChatJoinedByRequest
- (int32_t)TLconstructorSignature { return (int32_t)0xebbca3cb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatJoinedByRequest *obj = [[ModernTL_messageActionChatJoinedByRequest alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageActionChatMigrateTo
- (int32_t)TLconstructorSignature { return (int32_t)0xe1037f92; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionChatMigrateTo *obj = [[ModernTL_messageActionChatMigrateTo alloc] init];
    obj.channel_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.channel_id];
}
@end

@implementation ModernTL_messageActionConferenceCall
- (int32_t)TLconstructorSignature { return (int32_t)0x2ffe2f7a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionConferenceCall *obj = [[ModernTL_messageActionConferenceCall alloc] init];
    obj.flags = [is readInt32];
    obj.call_id = [is readInt64];
    if (obj.flags & (1 << 2)) {
        obj.duration = [is readInt32];
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
            obj.other_participants = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.call_id];
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.duration];
    }
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.other_participants.count];
            for (id item in self.other_participants) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_messageActionContactSignUp
- (int32_t)TLconstructorSignature { return (int32_t)0xf3f25f76; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionContactSignUp *obj = [[ModernTL_messageActionContactSignUp alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageActionCustomAction
- (int32_t)TLconstructorSignature { return (int32_t)0xfae69f56; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionCustomAction *obj = [[ModernTL_messageActionCustomAction alloc] init];
    obj.message = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.message == nil ? @"" : self.message];
}
@end

@implementation ModernTL_messageActionEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xb6aef7b0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionEmpty *obj = [[ModernTL_messageActionEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageActionGameScore
- (int32_t)TLconstructorSignature { return (int32_t)0x92a72876; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGameScore *obj = [[ModernTL_messageActionGameScore alloc] init];
    obj.game_id = [is readInt64];
    obj.score = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.game_id];
    [os writeInt32:self.score];
}
@end

@implementation ModernTL_messageActionGeoProximityReached
- (int32_t)TLconstructorSignature { return (int32_t)0x98e0d697; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGeoProximityReached *obj = [[ModernTL_messageActionGeoProximityReached alloc] init];
    obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.to_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.distance = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.from_id, true);
    TLMetaClassStore::serializeObject(os, self.to_id, true);
    [os writeInt32:self.distance];
}
@end

@implementation ModernTL_messageActionGiftCode
- (int32_t)TLconstructorSignature { return (int32_t)0x31c48347; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGiftCode *obj = [[ModernTL_messageActionGiftCode alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.boost_peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.days = [is readInt32];
    obj.slug = [is readString];
    if (obj.flags & (1 << 2)) {
        obj.currency = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.amount = [is readInt64];
    }
    if (obj.flags & (1 << 3)) {
        obj.crypto_currency = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.crypto_amount = [is readInt64];
    }
    if (obj.flags & (1 << 4)) {
        obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.boost_peer, true);
    }
    [os writeInt32:self.days];
    [os writeString:self.slug == nil ? @"" : self.slug];
    if (self.flags & (1 << 2)) {
        [os writeString:self.currency == nil ? @"" : self.currency];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt64:self.amount];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.crypto_currency == nil ? @"" : self.crypto_currency];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt64:self.crypto_amount];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.message, true);
    }
}
@end

@implementation ModernTL_messageActionGiftPremium
- (int32_t)TLconstructorSignature { return (int32_t)0x48e91302; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGiftPremium *obj = [[ModernTL_messageActionGiftPremium alloc] init];
    obj.flags = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    obj.days = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.crypto_currency = [is readString];
    }
    if (obj.flags & (1 << 0)) {
        obj.crypto_amount = [is readInt64];
    }
    if (obj.flags & (1 << 1)) {
        obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    [os writeInt32:self.days];
    if (self.flags & (1 << 0)) {
        [os writeString:self.crypto_currency == nil ? @"" : self.crypto_currency];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.crypto_amount];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.message, true);
    }
}
@end

@implementation ModernTL_messageActionGiftStars
- (int32_t)TLconstructorSignature { return (int32_t)0x45d5b021; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGiftStars *obj = [[ModernTL_messageActionGiftStars alloc] init];
    obj.flags = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    obj.stars = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.crypto_currency = [is readString];
    }
    if (obj.flags & (1 << 0)) {
        obj.crypto_amount = [is readInt64];
    }
    if (obj.flags & (1 << 1)) {
        obj.transaction_id = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    [os writeInt64:self.stars];
    if (self.flags & (1 << 0)) {
        [os writeString:self.crypto_currency == nil ? @"" : self.crypto_currency];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.crypto_amount];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.transaction_id == nil ? @"" : self.transaction_id];
    }
}
@end

@implementation ModernTL_messageActionGiftTon
- (int32_t)TLconstructorSignature { return (int32_t)0xa8a3c699; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGiftTon *obj = [[ModernTL_messageActionGiftTon alloc] init];
    obj.flags = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    obj.crypto_currency = [is readString];
    obj.crypto_amount = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.transaction_id = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    [os writeString:self.crypto_currency == nil ? @"" : self.crypto_currency];
    [os writeInt64:self.crypto_amount];
    if (self.flags & (1 << 0)) {
        [os writeString:self.transaction_id == nil ? @"" : self.transaction_id];
    }
}
@end

@implementation ModernTL_messageActionGiveawayLaunch
- (int32_t)TLconstructorSignature { return (int32_t)0xa80f51e4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGiveawayLaunch *obj = [[ModernTL_messageActionGiveawayLaunch alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.stars = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.stars];
    }
}
@end

@implementation ModernTL_messageActionGiveawayResults
- (int32_t)TLconstructorSignature { return (int32_t)0x87e2f155; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGiveawayResults *obj = [[ModernTL_messageActionGiveawayResults alloc] init];
    obj.flags = [is readInt32];
    obj.winners_count = [is readInt32];
    obj.unclaimed_count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.winners_count];
    [os writeInt32:self.unclaimed_count];
}
@end

@implementation ModernTL_messageActionGroupCall
- (int32_t)TLconstructorSignature { return (int32_t)0x7a0d7f42; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGroupCall *obj = [[ModernTL_messageActionGroupCall alloc] init];
    obj.flags = [is readInt32];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.duration = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.call, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.duration];
    }
}
@end

@implementation ModernTL_messageActionGroupCallScheduled
- (int32_t)TLconstructorSignature { return (int32_t)0xb3a07661; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionGroupCallScheduled *obj = [[ModernTL_messageActionGroupCallScheduled alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.schedule_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
    [os writeInt32:self.schedule_date];
}
@end

@implementation ModernTL_messageActionHistoryClear
- (int32_t)TLconstructorSignature { return (int32_t)0x9fbab604; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionHistoryClear *obj = [[ModernTL_messageActionHistoryClear alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageActionInviteToGroupCall
- (int32_t)TLconstructorSignature { return (int32_t)0x502f92f7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionInviteToGroupCall *obj = [[ModernTL_messageActionInviteToGroupCall alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
    TLMetaClassStore::serializeObject(os, self.call, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_messageActionManagedBotCreated
- (int32_t)TLconstructorSignature { return (int32_t)0x16605e3e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionManagedBotCreated *obj = [[ModernTL_messageActionManagedBotCreated alloc] init];
    obj.bot_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.bot_id];
}
@end

@implementation ModernTL_messageActionNewCreatorPending
- (int32_t)TLconstructorSignature { return (int32_t)0xb07ed085; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionNewCreatorPending *obj = [[ModernTL_messageActionNewCreatorPending alloc] init];
    obj.n_new_creator_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_new_creator_id];
}
@end

@implementation ModernTL_messageActionNoForwardsRequest
- (int32_t)TLconstructorSignature { return (int32_t)0x3e2793ba; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionNoForwardsRequest *obj = [[ModernTL_messageActionNoForwardsRequest alloc] init];
    obj.flags = [is readInt32];
    obj.prev_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.prev_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_messageActionNoForwardsToggle
- (int32_t)TLconstructorSignature { return (int32_t)0xbf7d6572; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionNoForwardsToggle *obj = [[ModernTL_messageActionNoForwardsToggle alloc] init];
    obj.prev_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.prev_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_messageActionPaidMessagesPrice
- (int32_t)TLconstructorSignature { return (int32_t)0x84b88578; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPaidMessagesPrice *obj = [[ModernTL_messageActionPaidMessagesPrice alloc] init];
    obj.flags = [is readInt32];
    obj.stars = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.stars];
}
@end

@implementation ModernTL_messageActionPaidMessagesRefunded
- (int32_t)TLconstructorSignature { return (int32_t)0xac1f1fcd; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPaidMessagesRefunded *obj = [[ModernTL_messageActionPaidMessagesRefunded alloc] init];
    obj.count = [is readInt32];
    obj.stars = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    [os writeInt64:self.stars];
}
@end

@implementation ModernTL_messageActionPaymentRefunded
- (int32_t)TLconstructorSignature { return (int32_t)0x41b3e202; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPaymentRefunded *obj = [[ModernTL_messageActionPaymentRefunded alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.payload = [is readBytes];
    }
    obj.charge = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.payload == nil ? [NSData data] : self.payload];
    }
    TLMetaClassStore::serializeObject(os, self.charge, true);
}
@end

@implementation ModernTL_messageActionPaymentSent
- (int32_t)TLconstructorSignature { return (int32_t)0xc624b16e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPaymentSent *obj = [[ModernTL_messageActionPaymentSent alloc] init];
    obj.flags = [is readInt32];
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.invoice_slug = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.subscription_until_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
    if (self.flags & (1 << 0)) {
        [os writeString:self.invoice_slug == nil ? @"" : self.invoice_slug];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.subscription_until_date];
    }
}
@end

@implementation ModernTL_messageActionPaymentSentMe
- (int32_t)TLconstructorSignature { return (int32_t)0xffa00ccc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPaymentSentMe *obj = [[ModernTL_messageActionPaymentSentMe alloc] init];
    obj.flags = [is readInt32];
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    obj.payload = [is readBytes];
    if (obj.flags & (1 << 0)) {
        obj.info = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.shipping_option_id = [is readString];
    }
    obj.charge = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 4)) {
        obj.subscription_until_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
    [os writeBytes:self.payload == nil ? [NSData data] : self.payload];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.info, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.shipping_option_id == nil ? @"" : self.shipping_option_id];
    }
    TLMetaClassStore::serializeObject(os, self.charge, true);
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.subscription_until_date];
    }
}
@end

@implementation ModernTL_messageActionPhoneCall
- (int32_t)TLconstructorSignature { return (int32_t)0x80e11a7f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPhoneCall *obj = [[ModernTL_messageActionPhoneCall alloc] init];
    obj.flags = [is readInt32];
    obj.call_id = [is readInt64];
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
    [os writeInt64:self.call_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.reason, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.duration];
    }
}
@end

@implementation ModernTL_messageActionPinMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x94bd38ed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPinMessage *obj = [[ModernTL_messageActionPinMessage alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageActionPollAppendAnswer
- (int32_t)TLconstructorSignature { return (int32_t)0x9da1cd6c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPollAppendAnswer *obj = [[ModernTL_messageActionPollAppendAnswer alloc] init];
    obj.answer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.answer, true);
}
@end

@implementation ModernTL_messageActionPollDeleteAnswer
- (int32_t)TLconstructorSignature { return (int32_t)0x399674dc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPollDeleteAnswer *obj = [[ModernTL_messageActionPollDeleteAnswer alloc] init];
    obj.answer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.answer, true);
}
@end

@implementation ModernTL_messageActionPrizeStars
- (int32_t)TLconstructorSignature { return (int32_t)0xb00c47a2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionPrizeStars *obj = [[ModernTL_messageActionPrizeStars alloc] init];
    obj.flags = [is readInt32];
    obj.stars = [is readInt64];
    obj.transaction_id = [is readString];
    obj.boost_peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.giveaway_msg_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.stars];
    [os writeString:self.transaction_id == nil ? @"" : self.transaction_id];
    TLMetaClassStore::serializeObject(os, self.boost_peer, true);
    [os writeInt32:self.giveaway_msg_id];
}
@end

@implementation ModernTL_messageActionRequestedPeer
- (int32_t)TLconstructorSignature { return (int32_t)0x31518e9b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionRequestedPeer *obj = [[ModernTL_messageActionRequestedPeer alloc] init];
    obj.button_id = [is readInt32];
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
    [os writeInt32:self.button_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messageActionRequestedPeerSentMe
- (int32_t)TLconstructorSignature { return (int32_t)0x93b31848; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionRequestedPeerSentMe *obj = [[ModernTL_messageActionRequestedPeerSentMe alloc] init];
    obj.button_id = [is readInt32];
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
    [os writeInt32:self.button_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messageActionScreenshotTaken
- (int32_t)TLconstructorSignature { return (int32_t)0x4792929b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionScreenshotTaken *obj = [[ModernTL_messageActionScreenshotTaken alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageActionSecureValuesSent
- (int32_t)TLconstructorSignature { return (int32_t)0xd95c6154; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSecureValuesSent *obj = [[ModernTL_messageActionSecureValuesSent alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.types = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.types.count];
        for (id item in self.types) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messageActionSecureValuesSentMe
- (int32_t)TLconstructorSignature { return (int32_t)0x1b287353; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSecureValuesSentMe *obj = [[ModernTL_messageActionSecureValuesSentMe alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.values = items;
    }
    obj.credentials = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.values.count];
        for (id item in self.values) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    TLMetaClassStore::serializeObject(os, self.credentials, true);
}
@end

@implementation ModernTL_messageActionSetChatTheme
- (int32_t)TLconstructorSignature { return (int32_t)0xb91bbd3a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSetChatTheme *obj = [[ModernTL_messageActionSetChatTheme alloc] init];
    obj.theme = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.theme, true);
}
@end

@implementation ModernTL_messageActionSetChatWallPaper
- (int32_t)TLconstructorSignature { return (int32_t)0x5060a3f4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSetChatWallPaper *obj = [[ModernTL_messageActionSetChatWallPaper alloc] init];
    obj.flags = [is readInt32];
    obj.wallpaper = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.wallpaper, true);
}
@end

@implementation ModernTL_messageActionSetMessagesTTL
- (int32_t)TLconstructorSignature { return (int32_t)0x3c134d7b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSetMessagesTTL *obj = [[ModernTL_messageActionSetMessagesTTL alloc] init];
    obj.flags = [is readInt32];
    obj.period = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.auto_setting_from = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.period];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.auto_setting_from];
    }
}
@end

@implementation ModernTL_messageActionStarGift
- (int32_t)TLconstructorSignature { return (int32_t)0xea2c31d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionStarGift *obj = [[ModernTL_messageActionStarGift alloc] init];
    obj.flags = [is readInt32];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 1)) {
        obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 4)) {
        obj.convert_stars = [is readInt64];
    }
    if (obj.flags & (1 << 5)) {
        obj.upgrade_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 8)) {
        obj.upgrade_stars = [is readInt64];
    }
    if (obj.flags & (1 << 11)) {
        obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 12)) {
        obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 12)) {
        obj.saved_id = [is readInt64];
    }
    if (obj.flags & (1 << 14)) {
        obj.prepaid_upgrade_hash = [is readString];
    }
    if (obj.flags & (1 << 15)) {
        obj.gift_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 18)) {
        obj.to_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 19)) {
        obj.gift_num = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.gift, true);
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.message, true);
    }
    if (self.flags & (1 << 4)) {
        [os writeInt64:self.convert_stars];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.upgrade_msg_id];
    }
    if (self.flags & (1 << 8)) {
        [os writeInt64:self.upgrade_stars];
    }
    if (self.flags & (1 << 11)) {
        TLMetaClassStore::serializeObject(os, self.from_id, true);
    }
    if (self.flags & (1 << 12)) {
        TLMetaClassStore::serializeObject(os, self.peer, true);
    }
    if (self.flags & (1 << 12)) {
        [os writeInt64:self.saved_id];
    }
    if (self.flags & (1 << 14)) {
        [os writeString:self.prepaid_upgrade_hash == nil ? @"" : self.prepaid_upgrade_hash];
    }
    if (self.flags & (1 << 15)) {
        [os writeInt32:self.gift_msg_id];
    }
    if (self.flags & (1 << 18)) {
        TLMetaClassStore::serializeObject(os, self.to_id, true);
    }
    if (self.flags & (1 << 19)) {
        [os writeInt32:self.gift_num];
    }
}
@end

@implementation ModernTL_messageActionStarGiftPurchaseOffer
- (int32_t)TLconstructorSignature { return (int32_t)0x774278d4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionStarGiftPurchaseOffer *obj = [[ModernTL_messageActionStarGiftPurchaseOffer alloc] init];
    obj.flags = [is readInt32];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.price = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.expires_at = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.gift, true);
    TLMetaClassStore::serializeObject(os, self.price, true);
    [os writeInt32:self.expires_at];
}
@end

@implementation ModernTL_messageActionStarGiftPurchaseOfferDeclined
- (int32_t)TLconstructorSignature { return (int32_t)0x73ada76b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionStarGiftPurchaseOfferDeclined *obj = [[ModernTL_messageActionStarGiftPurchaseOfferDeclined alloc] init];
    obj.flags = [is readInt32];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.price = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.gift, true);
    TLMetaClassStore::serializeObject(os, self.price, true);
}
@end

@implementation ModernTL_messageActionStarGiftUnique
- (int32_t)TLconstructorSignature { return (int32_t)0xe6c31522; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionStarGiftUnique *obj = [[ModernTL_messageActionStarGiftUnique alloc] init];
    obj.flags = [is readInt32];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 3)) {
        obj.can_export_at = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.transfer_stars = [is readInt64];
    }
    if (obj.flags & (1 << 6)) {
        obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
        obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
        obj.saved_id = [is readInt64];
    }
    if (obj.flags & (1 << 8)) {
        obj.resale_amount = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 9)) {
        obj.can_transfer_at = [is readInt32];
    }
    if (obj.flags & (1 << 10)) {
        obj.can_resell_at = [is readInt32];
    }
    if (obj.flags & (1 << 12)) {
        obj.drop_original_details_stars = [is readInt64];
    }
    if (obj.flags & (1 << 15)) {
        obj.can_craft_at = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.gift, true);
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.can_export_at];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt64:self.transfer_stars];
    }
    if (self.flags & (1 << 6)) {
        TLMetaClassStore::serializeObject(os, self.from_id, true);
    }
    if (self.flags & (1 << 7)) {
        TLMetaClassStore::serializeObject(os, self.peer, true);
    }
    if (self.flags & (1 << 7)) {
        [os writeInt64:self.saved_id];
    }
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.resale_amount, true);
    }
    if (self.flags & (1 << 9)) {
        [os writeInt32:self.can_transfer_at];
    }
    if (self.flags & (1 << 10)) {
        [os writeInt32:self.can_resell_at];
    }
    if (self.flags & (1 << 12)) {
        [os writeInt64:self.drop_original_details_stars];
    }
    if (self.flags & (1 << 15)) {
        [os writeInt32:self.can_craft_at];
    }
}
@end

@implementation ModernTL_messageActionSuggestBirthday
- (int32_t)TLconstructorSignature { return (int32_t)0x2c8f2a25; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSuggestBirthday *obj = [[ModernTL_messageActionSuggestBirthday alloc] init];
    obj.birthday = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.birthday, true);
}
@end

@implementation ModernTL_messageActionSuggestProfilePhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x57de635e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSuggestProfilePhoto *obj = [[ModernTL_messageActionSuggestProfilePhoto alloc] init];
    obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.photo, true);
}
@end

@implementation ModernTL_messageActionSuggestedPostApproval
- (int32_t)TLconstructorSignature { return (int32_t)0xee7a1596; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSuggestedPostApproval *obj = [[ModernTL_messageActionSuggestedPostApproval alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.reject_comment = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.schedule_date = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.price = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        [os writeString:self.reject_comment == nil ? @"" : self.reject_comment];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.schedule_date];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.price, true);
    }
}
@end

@implementation ModernTL_messageActionSuggestedPostRefund
- (int32_t)TLconstructorSignature { return (int32_t)0x69f916f8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSuggestedPostRefund *obj = [[ModernTL_messageActionSuggestedPostRefund alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_messageActionSuggestedPostSuccess
- (int32_t)TLconstructorSignature { return (int32_t)0x95ddcf69; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionSuggestedPostSuccess *obj = [[ModernTL_messageActionSuggestedPostSuccess alloc] init];
    obj.price = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.price, true);
}
@end

@implementation ModernTL_messageActionTodoAppendTasks
- (int32_t)TLconstructorSignature { return (int32_t)0xc7edbc83; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionTodoAppendTasks *obj = [[ModernTL_messageActionTodoAppendTasks alloc] init];
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
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.list.count];
        for (id item in self.list) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messageActionTodoCompletions
- (int32_t)TLconstructorSignature { return (int32_t)0xcc7c5c89; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionTodoCompletions *obj = [[ModernTL_messageActionTodoCompletions alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.completed = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.incompleted = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.completed.count];
        for (id item in self.completed) {
            [os writeInt32:[item intValue]];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.incompleted.count];
        for (id item in self.incompleted) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_messageActionTopicCreate
- (int32_t)TLconstructorSignature { return (int32_t)0x0d999256; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionTopicCreate *obj = [[ModernTL_messageActionTopicCreate alloc] init];
    obj.flags = [is readInt32];
    obj.title = [is readString];
    obj.icon_color = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.icon_emoji_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeInt32:self.icon_color];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.icon_emoji_id];
    }
}
@end

@implementation ModernTL_messageActionTopicEdit
- (int32_t)TLconstructorSignature { return (int32_t)0xc0944820; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionTopicEdit *obj = [[ModernTL_messageActionTopicEdit alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.title = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.icon_emoji_id = [is readInt64];
    }
    if (obj.flags & (1 << 2)) {
        obj.closed = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    if (obj.flags & (1 << 3)) {
        obj.hidden = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt64:self.icon_emoji_id];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.closed ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.hidden ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    }
}
@end

@implementation ModernTL_messageActionWebViewDataSent
- (int32_t)TLconstructorSignature { return (int32_t)0xb4c38cb5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionWebViewDataSent *obj = [[ModernTL_messageActionWebViewDataSent alloc] init];
    obj.text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.text == nil ? @"" : self.text];
}
@end

@implementation ModernTL_messageActionWebViewDataSentMe
- (int32_t)TLconstructorSignature { return (int32_t)0x47dd8079; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageActionWebViewDataSentMe *obj = [[ModernTL_messageActionWebViewDataSentMe alloc] init];
    obj.text = [is readString];
    obj.data = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeString:self.data == nil ? @"" : self.data];
}
@end

@implementation ModernTL_inputMessageEntityMentionName
- (int32_t)TLconstructorSignature { return (int32_t)0x208e68c9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessageEntityMentionName *obj = [[ModernTL_inputMessageEntityMentionName alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    obj.user_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
    TLMetaClassStore::serializeObject(os, self.user_id, true);
}
@end

@implementation ModernTL_messageEntityBankCard
- (int32_t)TLconstructorSignature { return (int32_t)0x761e6af4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityBankCard *obj = [[ModernTL_messageEntityBankCard alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityBlockquote
- (int32_t)TLconstructorSignature { return (int32_t)0xf1ccaaac; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityBlockquote *obj = [[ModernTL_messageEntityBlockquote alloc] init];
    obj.flags = [is readInt32];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityBold
- (int32_t)TLconstructorSignature { return (int32_t)0xbd610bc9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityBold *obj = [[ModernTL_messageEntityBold alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityBotCommand
- (int32_t)TLconstructorSignature { return (int32_t)0x6cef8ac7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityBotCommand *obj = [[ModernTL_messageEntityBotCommand alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityCashtag
- (int32_t)TLconstructorSignature { return (int32_t)0x4c4e743f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityCashtag *obj = [[ModernTL_messageEntityCashtag alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityCode
- (int32_t)TLconstructorSignature { return (int32_t)0x28a20571; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityCode *obj = [[ModernTL_messageEntityCode alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityCustomEmoji
- (int32_t)TLconstructorSignature { return (int32_t)0xc8cf05f8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityCustomEmoji *obj = [[ModernTL_messageEntityCustomEmoji alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    obj.document_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
    [os writeInt64:self.document_id];
}
@end

@implementation ModernTL_messageEntityDiffDelete
- (int32_t)TLconstructorSignature { return (int32_t)0x0652c1c5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityDiffDelete *obj = [[ModernTL_messageEntityDiffDelete alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityDiffInsert
- (int32_t)TLconstructorSignature { return (int32_t)0x71777116; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityDiffInsert *obj = [[ModernTL_messageEntityDiffInsert alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityDiffReplace
- (int32_t)TLconstructorSignature { return (int32_t)0xc6c1e5a7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityDiffReplace *obj = [[ModernTL_messageEntityDiffReplace alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    obj.old_text = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
    [os writeString:self.old_text == nil ? @"" : self.old_text];
}
@end

@implementation ModernTL_messageEntityEmail
- (int32_t)TLconstructorSignature { return (int32_t)0x64e475c2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityEmail *obj = [[ModernTL_messageEntityEmail alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityFormattedDate
- (int32_t)TLconstructorSignature { return (int32_t)0x904ac7c7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityFormattedDate *obj = [[ModernTL_messageEntityFormattedDate alloc] init];
    obj.flags = [is readInt32];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_messageEntityHashtag
- (int32_t)TLconstructorSignature { return (int32_t)0x6f635b0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityHashtag *obj = [[ModernTL_messageEntityHashtag alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityItalic
- (int32_t)TLconstructorSignature { return (int32_t)0x826f8b60; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityItalic *obj = [[ModernTL_messageEntityItalic alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityMention
- (int32_t)TLconstructorSignature { return (int32_t)0xfa04579d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityMention *obj = [[ModernTL_messageEntityMention alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityMentionName
- (int32_t)TLconstructorSignature { return (int32_t)0xdc7b1140; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityMentionName *obj = [[ModernTL_messageEntityMentionName alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_messageEntityPhone
- (int32_t)TLconstructorSignature { return (int32_t)0x9b69e34b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityPhone *obj = [[ModernTL_messageEntityPhone alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityPre
- (int32_t)TLconstructorSignature { return (int32_t)0x73924be0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityPre *obj = [[ModernTL_messageEntityPre alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    obj.language = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
    [os writeString:self.language == nil ? @"" : self.language];
}
@end

@implementation ModernTL_messageEntitySpoiler
- (int32_t)TLconstructorSignature { return (int32_t)0x32ca960f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntitySpoiler *obj = [[ModernTL_messageEntitySpoiler alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityStrike
- (int32_t)TLconstructorSignature { return (int32_t)0xbf0693d4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityStrike *obj = [[ModernTL_messageEntityStrike alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityTextUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x76a6d327; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityTextUrl *obj = [[ModernTL_messageEntityTextUrl alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_messageEntityUnderline
- (int32_t)TLconstructorSignature { return (int32_t)0x9c4e7e8b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityUnderline *obj = [[ModernTL_messageEntityUnderline alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityUnknown
- (int32_t)TLconstructorSignature { return (int32_t)0xbb92ba95; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityUnknown *obj = [[ModernTL_messageEntityUnknown alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageEntityUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x6ed02538; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageEntityUrl *obj = [[ModernTL_messageEntityUrl alloc] init];
    obj.offset = [is readInt32];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.offset];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_messageExtendedMedia
- (int32_t)TLconstructorSignature { return (int32_t)0xee479c64; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageExtendedMedia *obj = [[ModernTL_messageExtendedMedia alloc] init];
    obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.media, true);
}
@end

@implementation ModernTL_messageExtendedMediaPreview
- (int32_t)TLconstructorSignature { return (int32_t)0xad628cc8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageExtendedMediaPreview *obj = [[ModernTL_messageExtendedMediaPreview alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.w = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.h = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.thumb = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.video_duration = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.w];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.h];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.thumb, true);
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.video_duration];
    }
}
@end

@implementation ModernTL_messageFwdHeader
- (int32_t)TLconstructorSignature { return (int32_t)0x4e4df4bb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageFwdHeader *obj = [[ModernTL_messageFwdHeader alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 5)) {
        obj.from_name = [is readString];
    }
    obj.date = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.channel_post = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.post_author = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.saved_from_peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 4)) {
        obj.saved_from_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 8)) {
        obj.saved_from_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 9)) {
        obj.saved_from_name = [is readString];
    }
    if (obj.flags & (1 << 10)) {
        obj.saved_date = [is readInt32];
    }
    if (obj.flags & (1 << 6)) {
        obj.psa_type = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.from_id, true);
    }
    if (self.flags & (1 << 5)) {
        [os writeString:self.from_name == nil ? @"" : self.from_name];
    }
    [os writeInt32:self.date];
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.channel_post];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.post_author == nil ? @"" : self.post_author];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.saved_from_peer, true);
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.saved_from_msg_id];
    }
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.saved_from_id, true);
    }
    if (self.flags & (1 << 9)) {
        [os writeString:self.saved_from_name == nil ? @"" : self.saved_from_name];
    }
    if (self.flags & (1 << 10)) {
        [os writeInt32:self.saved_date];
    }
    if (self.flags & (1 << 6)) {
        [os writeString:self.psa_type == nil ? @"" : self.psa_type];
    }
}
@end

@implementation ModernTL_messageMediaContact
- (int32_t)TLconstructorSignature { return (int32_t)0x70322949; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaContact *obj = [[ModernTL_messageMediaContact alloc] init];
    obj.phone_number = [is readString];
    obj.first_name = [is readString];
    obj.last_name = [is readString];
    obj.vcard = [is readString];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.phone_number == nil ? @"" : self.phone_number];
    [os writeString:self.first_name == nil ? @"" : self.first_name];
    [os writeString:self.last_name == nil ? @"" : self.last_name];
    [os writeString:self.vcard == nil ? @"" : self.vcard];
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_messageMediaDice
- (int32_t)TLconstructorSignature { return (int32_t)0x08cbec07; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaDice *obj = [[ModernTL_messageMediaDice alloc] init];
    obj.flags = [is readInt32];
    obj.value = [is readInt32];
    obj.emoticon = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.game_outcome = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.value];
    [os writeString:self.emoticon == nil ? @"" : self.emoticon];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.game_outcome, true);
    }
}
@end

@implementation ModernTL_messageMediaDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x52d8ccd9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaDocument *obj = [[ModernTL_messageMediaDocument alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 5)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.alt_documents = items;
        }
    }
    if (obj.flags & (1 << 9)) {
        obj.video_cover = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 10)) {
        obj.video_timestamp = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.ttl_seconds = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.document, true);
    }
    if (self.flags & (1 << 5)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.alt_documents.count];
            for (id item in self.alt_documents) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.video_cover, true);
    }
    if (self.flags & (1 << 10)) {
        [os writeInt32:self.video_timestamp];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.ttl_seconds];
    }
}
@end

@implementation ModernTL_messageMediaEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x3ded6320; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaEmpty *obj = [[ModernTL_messageMediaEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageMediaGame
- (int32_t)TLconstructorSignature { return (int32_t)0xfdb19008; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaGame *obj = [[ModernTL_messageMediaGame alloc] init];
    obj.game = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.game, true);
}
@end

@implementation ModernTL_messageMediaGeo
- (int32_t)TLconstructorSignature { return (int32_t)0x56e0d474; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaGeo *obj = [[ModernTL_messageMediaGeo alloc] init];
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo, true);
}
@end

@implementation ModernTL_messageMediaGeoLive
- (int32_t)TLconstructorSignature { return (int32_t)0xb940c666; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaGeoLive *obj = [[ModernTL_messageMediaGeoLive alloc] init];
    obj.flags = [is readInt32];
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.heading = [is readInt32];
    }
    obj.period = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.proximity_notification_radius = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.geo, true);
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.heading];
    }
    [os writeInt32:self.period];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.proximity_notification_radius];
    }
}
@end

@implementation ModernTL_messageMediaGiveaway
- (int32_t)TLconstructorSignature { return (int32_t)0xaa073beb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaGiveaway *obj = [[ModernTL_messageMediaGiveaway alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.channels = items;
    }
    if (obj.flags & (1 << 1)) {
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
    if (obj.flags & (1 << 3)) {
        obj.prize_description = [is readString];
    }
    obj.quantity = [is readInt32];
    if (obj.flags & (1 << 4)) {
        obj.months = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.stars = [is readInt64];
    }
    obj.until_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.channels.count];
        for (id item in self.channels) {
            [os writeInt64:[item longLongValue]];
        }
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.countries_iso2.count];
            for (id item in self.countries_iso2) {
                [os writeString:item];
            }
        }
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.prize_description == nil ? @"" : self.prize_description];
    }
    [os writeInt32:self.quantity];
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.months];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt64:self.stars];
    }
    [os writeInt32:self.until_date];
}
@end

@implementation ModernTL_messageMediaGiveawayResults
- (int32_t)TLconstructorSignature { return (int32_t)0xceaa3ea1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaGiveawayResults *obj = [[ModernTL_messageMediaGiveawayResults alloc] init];
    obj.flags = [is readInt32];
    obj.channel_id = [is readInt64];
    if (obj.flags & (1 << 3)) {
        obj.additional_peers_count = [is readInt32];
    }
    obj.launch_msg_id = [is readInt32];
    obj.winners_count = [is readInt32];
    obj.unclaimed_count = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.winners = items;
    }
    if (obj.flags & (1 << 4)) {
        obj.months = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.stars = [is readInt64];
    }
    if (obj.flags & (1 << 1)) {
        obj.prize_description = [is readString];
    }
    obj.until_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.channel_id];
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.additional_peers_count];
    }
    [os writeInt32:self.launch_msg_id];
    [os writeInt32:self.winners_count];
    [os writeInt32:self.unclaimed_count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.winners.count];
        for (id item in self.winners) {
            [os writeInt64:[item longLongValue]];
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.months];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt64:self.stars];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.prize_description == nil ? @"" : self.prize_description];
    }
    [os writeInt32:self.until_date];
}
@end

@implementation ModernTL_messageMediaInvoice
- (int32_t)TLconstructorSignature { return (int32_t)0xf6a548d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaInvoice *obj = [[ModernTL_messageMediaInvoice alloc] init];
    obj.flags = [is readInt32];
    obj.title = [is readString];
    obj.n_description = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.receipt_msg_id = [is readInt32];
    }
    obj.currency = [is readString];
    obj.total_amount = [is readInt64];
    obj.start_param = [is readString];
    if (obj.flags & (1 << 4)) {
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
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.receipt_msg_id];
    }
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.total_amount];
    [os writeString:self.start_param == nil ? @"" : self.start_param];
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.extended_media, true);
    }
}
@end

@implementation ModernTL_messageMediaPaidMedia
- (int32_t)TLconstructorSignature { return (int32_t)0xa8852491; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaPaidMedia *obj = [[ModernTL_messageMediaPaidMedia alloc] init];
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
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.stars_amount];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.extended_media.count];
        for (id item in self.extended_media) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_messageMediaPhoto
- (int32_t)TLconstructorSignature { return (int32_t)0xe216eb63; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaPhoto *obj = [[ModernTL_messageMediaPhoto alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.ttl_seconds = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.video = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.ttl_seconds];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.video, true);
    }
}
@end

@implementation ModernTL_messageMediaPoll
- (int32_t)TLconstructorSignature { return (int32_t)0x773f4e66; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaPoll *obj = [[ModernTL_messageMediaPoll alloc] init];
    obj.flags = [is readInt32];
    obj.poll = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.results = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.attached_media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.poll, true);
    TLMetaClassStore::serializeObject(os, self.results, true);
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.attached_media, true);
    }
}
@end

@implementation ModernTL_messageMediaStory
- (int32_t)TLconstructorSignature { return (int32_t)0x68cb6283; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaStory *obj = [[ModernTL_messageMediaStory alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_id = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.story = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.n_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.story, true);
    }
}
@end

@implementation ModernTL_messageMediaToDo
- (int32_t)TLconstructorSignature { return (int32_t)0x8a53b014; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaToDo *obj = [[ModernTL_messageMediaToDo alloc] init];
    obj.flags = [is readInt32];
    obj.todo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
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
            obj.completions = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.todo, true);
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.completions.count];
            for (id item in self.completions) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_messageMediaUnsupported
- (int32_t)TLconstructorSignature { return (int32_t)0x9f84f49e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaUnsupported *obj = [[ModernTL_messageMediaUnsupported alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_messageMediaVenue
- (int32_t)TLconstructorSignature { return (int32_t)0x2ec0533f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaVenue *obj = [[ModernTL_messageMediaVenue alloc] init];
    obj.geo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.title = [is readString];
    obj.address = [is readString];
    obj.provider = [is readString];
    obj.venue_id = [is readString];
    obj.venue_type = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.geo, true);
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.address == nil ? @"" : self.address];
    [os writeString:self.provider == nil ? @"" : self.provider];
    [os writeString:self.venue_id == nil ? @"" : self.venue_id];
    [os writeString:self.venue_type == nil ? @"" : self.venue_type];
}
@end

@implementation ModernTL_messageMediaVideoStream
- (int32_t)TLconstructorSignature { return (int32_t)0xca5cab89; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaVideoStream *obj = [[ModernTL_messageMediaVideoStream alloc] init];
    obj.flags = [is readInt32];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.call, true);
}
@end

@implementation ModernTL_messageMediaWebPage
- (int32_t)TLconstructorSignature { return (int32_t)0xddf10c3b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageMediaWebPage *obj = [[ModernTL_messageMediaWebPage alloc] init];
    obj.flags = [is readInt32];
    obj.webpage = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.webpage, true);
}
@end

@implementation ModernTL_messagePeerReaction
- (int32_t)TLconstructorSignature { return (int32_t)0x8c79b63c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messagePeerReaction *obj = [[ModernTL_messagePeerReaction alloc] init];
    obj.flags = [is readInt32];
    obj.peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    obj.reaction = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer_id, true);
    [os writeInt32:self.date];
    TLMetaClassStore::serializeObject(os, self.reaction, true);
}
@end

@implementation ModernTL_messagePeerVote
- (int32_t)TLconstructorSignature { return (int32_t)0xb6cc2d5c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messagePeerVote *obj = [[ModernTL_messagePeerVote alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.option = [is readBytes];
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeBytes:self.option == nil ? [NSData data] : self.option];
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_messagePeerVoteInputOption
- (int32_t)TLconstructorSignature { return (int32_t)0x74cda504; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messagePeerVoteInputOption *obj = [[ModernTL_messagePeerVoteInputOption alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_messagePeerVoteMultiple
- (int32_t)TLconstructorSignature { return (int32_t)0x4628f6e6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messagePeerVoteMultiple *obj = [[ModernTL_messagePeerVoteMultiple alloc] init];
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
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.options.count];
        for (id item in self.options) {
            [os writeBytes:item];
        }
    }
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_messageRange
- (int32_t)TLconstructorSignature { return (int32_t)0x0ae30253; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageRange *obj = [[ModernTL_messageRange alloc] init];
    obj.min_id = [is readInt32];
    obj.max_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.min_id];
    [os writeInt32:self.max_id];
}
@end

@implementation ModernTL_messageReactions
- (int32_t)TLconstructorSignature { return (int32_t)0x0a339f0b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageReactions *obj = [[ModernTL_messageReactions alloc] init];
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
        obj.results = items;
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
            obj.recent_reactions = items;
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
            obj.top_reactors = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.results.count];
        for (id item in self.results) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.recent_reactions.count];
            for (id item in self.recent_reactions) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 4)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.top_reactors.count];
            for (id item in self.top_reactors) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_messageReactor
- (int32_t)TLconstructorSignature { return (int32_t)0x4ba3a95a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageReactor *obj = [[ModernTL_messageReactor alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.count = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.peer_id, true);
    }
    [os writeInt32:self.count];
}
@end

@implementation ModernTL_messageReplies
- (int32_t)TLconstructorSignature { return (int32_t)0x83d60fc2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageReplies *obj = [[ModernTL_messageReplies alloc] init];
    obj.flags = [is readInt32];
    obj.replies = [is readInt32];
    obj.replies_pts = [is readInt32];
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
            obj.recent_repliers = items;
        }
    }
    if (obj.flags & (1 << 0)) {
        obj.channel_id = [is readInt64];
    }
    if (obj.flags & (1 << 2)) {
        obj.max_id = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.read_max_id = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.replies];
    [os writeInt32:self.replies_pts];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.recent_repliers.count];
            for (id item in self.recent_repliers) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.channel_id];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.max_id];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.read_max_id];
    }
}
@end

@implementation ModernTL_messageReplyHeader
- (int32_t)TLconstructorSignature { return (int32_t)0x1b97dd66; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageReplyHeader *obj = [[ModernTL_messageReplyHeader alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 4)) {
        obj.reply_to_msg_id = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.reply_to_peer_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 5)) {
        obj.reply_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 8)) {
        obj.reply_media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.reply_to_top_id = [is readInt32];
    }
    if (obj.flags & (1 << 6)) {
        obj.quote_text = [is readString];
    }
    if (obj.flags & (1 << 7)) {
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
    if (obj.flags & (1 << 10)) {
        obj.quote_offset = [is readInt32];
    }
    if (obj.flags & (1 << 11)) {
        obj.todo_item_id = [is readInt32];
    }
    if (obj.flags & (1 << 12)) {
        obj.poll_option = [is readBytes];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.reply_to_msg_id];
    }
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.reply_to_peer_id, true);
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.reply_from, true);
    }
    if (self.flags & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.reply_media, true);
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.reply_to_top_id];
    }
    if (self.flags & (1 << 6)) {
        [os writeString:self.quote_text == nil ? @"" : self.quote_text];
    }
    if (self.flags & (1 << 7)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.quote_entities.count];
            for (id item in self.quote_entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 10)) {
        [os writeInt32:self.quote_offset];
    }
    if (self.flags & (1 << 11)) {
        [os writeInt32:self.todo_item_id];
    }
    if (self.flags & (1 << 12)) {
        [os writeBytes:self.poll_option == nil ? [NSData data] : self.poll_option];
    }
}
@end

@implementation ModernTL_messageReplyStoryHeader
- (int32_t)TLconstructorSignature { return (int32_t)0x0e5af939; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageReplyStoryHeader *obj = [[ModernTL_messageReplyStoryHeader alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.story_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.story_id];
}
@end

@implementation ModernTL_messageReportOption
- (int32_t)TLconstructorSignature { return (int32_t)0x7903e3d9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageReportOption *obj = [[ModernTL_messageReportOption alloc] init];
    obj.text = [is readString];
    obj.option = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.text == nil ? @"" : self.text];
    [os writeBytes:self.option == nil ? [NSData data] : self.option];
}
@end

@implementation ModernTL_messageViews
- (int32_t)TLconstructorSignature { return (int32_t)0x455b853d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_messageViews *obj = [[ModernTL_messageViews alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.views = [is readInt32];
    }
    if (obj.flags & (1 << 1)) {
        obj.forwards = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.replies = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.views];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.forwards];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.replies, true);
    }
}
@end

@implementation ModernTL_inputMessagesFilterChatPhotos
- (int32_t)TLconstructorSignature { return (int32_t)0x3a20ecb8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterChatPhotos *obj = [[ModernTL_inputMessagesFilterChatPhotos alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterContacts
- (int32_t)TLconstructorSignature { return (int32_t)0xe062db83; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterContacts *obj = [[ModernTL_inputMessagesFilterContacts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x9eddf188; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterDocument *obj = [[ModernTL_inputMessagesFilterDocument alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x57e2f66c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterEmpty *obj = [[ModernTL_inputMessagesFilterEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterGeo
- (int32_t)TLconstructorSignature { return (int32_t)0xe7026d0d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterGeo *obj = [[ModernTL_inputMessagesFilterGeo alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterGif
- (int32_t)TLconstructorSignature { return (int32_t)0xffc86587; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterGif *obj = [[ModernTL_inputMessagesFilterGif alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterMusic
- (int32_t)TLconstructorSignature { return (int32_t)0x3751b49e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterMusic *obj = [[ModernTL_inputMessagesFilterMusic alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterMyMentions
- (int32_t)TLconstructorSignature { return (int32_t)0xc1f8e69a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterMyMentions *obj = [[ModernTL_inputMessagesFilterMyMentions alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterPhoneCalls
- (int32_t)TLconstructorSignature { return (int32_t)0x80c99768; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterPhoneCalls *obj = [[ModernTL_inputMessagesFilterPhoneCalls alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_inputMessagesFilterPhotoVideo
- (int32_t)TLconstructorSignature { return (int32_t)0x56e9f0e4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterPhotoVideo *obj = [[ModernTL_inputMessagesFilterPhotoVideo alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterPhotos
- (int32_t)TLconstructorSignature { return (int32_t)0x9609a51c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterPhotos *obj = [[ModernTL_inputMessagesFilterPhotos alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterPinned
- (int32_t)TLconstructorSignature { return (int32_t)0x1bb00451; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterPinned *obj = [[ModernTL_inputMessagesFilterPinned alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterPoll
- (int32_t)TLconstructorSignature { return (int32_t)0xfa2bc90a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterPoll *obj = [[ModernTL_inputMessagesFilterPoll alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterRoundVideo
- (int32_t)TLconstructorSignature { return (int32_t)0xb549da53; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterRoundVideo *obj = [[ModernTL_inputMessagesFilterRoundVideo alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterRoundVoice
- (int32_t)TLconstructorSignature { return (int32_t)0x7a7c17a4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterRoundVoice *obj = [[ModernTL_inputMessagesFilterRoundVoice alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x7ef0dd87; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterUrl *obj = [[ModernTL_inputMessagesFilterUrl alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterVideo
- (int32_t)TLconstructorSignature { return (int32_t)0x9fc00e65; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterVideo *obj = [[ModernTL_inputMessagesFilterVideo alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_inputMessagesFilterVoice
- (int32_t)TLconstructorSignature { return (int32_t)0x50f5c392; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_inputMessagesFilterVoice *obj = [[ModernTL_inputMessagesFilterVoice alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_missingInvitee
- (int32_t)TLconstructorSignature { return (int32_t)0x628c9224; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_missingInvitee *obj = [[ModernTL_missingInvitee alloc] init];
    obj.flags = [is readInt32];
    obj.user_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.user_id];
}
@end

@implementation ModernTL_myBoost
- (int32_t)TLconstructorSignature { return (int32_t)0xc448415c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_myBoost *obj = [[ModernTL_myBoost alloc] init];
    obj.flags = [is readInt32];
    obj.slot = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.date = [is readInt32];
    obj.expires = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.cooldown_until_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.slot];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.peer, true);
    }
    [os writeInt32:self.date];
    [os writeInt32:self.expires];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.cooldown_until_date];
    }
}
@end

@implementation ModernTL_nearestDc
- (int32_t)TLconstructorSignature { return (int32_t)0x8e1a1775; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_nearestDc *obj = [[ModernTL_nearestDc alloc] init];
    obj.country = [is readString];
    obj.this_dc = [is readInt32];
    obj.nearest_dc = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.country == nil ? @"" : self.country];
    [os writeInt32:self.this_dc];
    [os writeInt32:self.nearest_dc];
}
@end

@implementation ModernTL_notificationSoundDefault
- (int32_t)TLconstructorSignature { return (int32_t)0x97e8bebe; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notificationSoundDefault *obj = [[ModernTL_notificationSoundDefault alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_notificationSoundLocal
- (int32_t)TLconstructorSignature { return (int32_t)0x830b9ae4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notificationSoundLocal *obj = [[ModernTL_notificationSoundLocal alloc] init];
    obj.title = [is readString];
    obj.data = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.title == nil ? @"" : self.title];
    [os writeString:self.data == nil ? @"" : self.data];
}
@end

@implementation ModernTL_notificationSoundNone
- (int32_t)TLconstructorSignature { return (int32_t)0x6f0c34df; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notificationSoundNone *obj = [[ModernTL_notificationSoundNone alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_notificationSoundRingtone
- (int32_t)TLconstructorSignature { return (int32_t)0xff6c8049; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notificationSoundRingtone *obj = [[ModernTL_notificationSoundRingtone alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_notifyBroadcasts
- (int32_t)TLconstructorSignature { return (int32_t)0xd612e8ef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_notifyBroadcasts *obj = [[ModernTL_notifyBroadcasts alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

