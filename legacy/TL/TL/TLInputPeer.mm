#import "TLInputPeer.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"


@implementation TLInputPeer


- (int32_t)TLconstructorSignature
{
    TGLog(@"constructorSignature is not implemented for base type");
    return 0;
}

- (int32_t)TLconstructorName
{
    TGLog(@"constructorName is not implemented for base type");
    return 0;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    TGLog(@"TLbuildFromMetaObject is not implemented for base type");
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
    TGLog(@"TLfillFieldsWithValues is not implemented for base type");
}


@end

@implementation TLInputPeer$inputPeerEmpty : TLInputPeer


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x7f3b18ea;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0xa74ec2c1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    TLInputPeer$inputPeerEmpty *object = [[TLInputPeer$inputPeerEmpty alloc] init];
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
}


@end

@implementation TLInputPeer$inputPeerSelf : TLInputPeer


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x7da07ec9;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0xd83b195a;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    TLInputPeer$inputPeerSelf *object = [[TLInputPeer$inputPeerSelf alloc] init];
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
}


@end

@implementation TLInputPeer$inputPeerChat : TLInputPeer


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x35a95cb9;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputPeer$inputPeerChat *object = [[TLInputPeer$inputPeerChat alloc] init];
    object.chat_id = metaObject->getInt64((int32_t)0x7234457c);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.chat_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7234457c, value));
    }
}

// inputPeerChat#35a95cb9
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt64:(int64_t)self.chat_id];
}

@end

@implementation TLInputPeer$inputPeerUser : TLInputPeer


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xdde8a54c;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputPeer$inputPeerUser *object = [[TLInputPeer$inputPeerUser alloc] init];
    object.user_id = metaObject->getInt64((int32_t)0xafdf4073);
    object.access_hash = metaObject->getInt64((int32_t)0x8f305224);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.user_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xafdf4073, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.access_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8f305224, value));
    }
}

// inputPeerUser#dde8a54c
- (void)TLserialize:(NSOutputStream *)os
{
    // layer 228: идентификаторы стали 64-битными
    [os writeInt64:(int64_t)self.user_id];
    [os writeInt64:self.access_hash];
}

@end

@implementation TLInputPeer$inputPeerChannel : TLInputPeer


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x27bcbbfc;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputPeer$inputPeerChannel *object = [[TLInputPeer$inputPeerChannel alloc] init];
    object.channel_id = metaObject->getInt64((int32_t)0x1cfcdb86);
    object.access_hash = metaObject->getInt64((int32_t)0x8f305224);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.channel_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x1cfcdb86, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.access_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8f305224, value));
    }
}

// inputPeerChannel#27bcbbfc
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt64:(int64_t)self.channel_id];
    [os writeInt64:self.access_hash];
}

@end

#import "TLInputUser.h"

/// В схеме 228 участник канала задаётся пиром, а старый код держит InputUser.
void TLSerializeInputUserAsPeer(NSOutputStream *os, TLInputUser *inputUser)
{
    if ([inputUser isKindOfClass:[TLInputUser$inputUserSelf class]]) {
        [os writeInt32:(int32_t)0x7da07ec9];   // inputPeerSelf
        return;
    }
    
    if ([inputUser isKindOfClass:[TLInputUser$inputUser class]]) {
        TLInputUser$inputUser *concrete = (TLInputUser$inputUser *)inputUser;
        [os writeInt32:(int32_t)0xdde8a54c];   // inputPeerUser
        [os writeInt64:(int64_t)concrete.user_id];
        [os writeInt64:concrete.access_hash];
        return;
    }
    
    [os writeInt32:(int32_t)0x7f3b18ea];       // inputPeerEmpty
}
