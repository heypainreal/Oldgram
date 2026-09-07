#import "TLRPCmessages_sendEncryptedFile.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputEncryptedChat.h"
#import "TLInputEncryptedFile.h"
#import "TLmessages_SentEncryptedMessage.h"

@implementation TLRPCmessages_sendEncryptedFile


- (Class)responseClass
{
    return [TLmessages_SentEncryptedMessage class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 8;
}

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

@implementation TLRPCmessages_sendEncryptedFile$messages_sendEncryptedFile : TLRPCmessages_sendEncryptedFile


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x5559481d;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCmessages_sendEncryptedFile$messages_sendEncryptedFile *object = [[TLRPCmessages_sendEncryptedFile$messages_sendEncryptedFile alloc] init];
    object.peer = metaObject->getObject((int32_t)0x9344c37d);
    object.random_id = metaObject->getInt64((int32_t)0xca5a160a);
    object.data = metaObject->getBytes((int32_t)0xa361765d);
    object.file = metaObject->getObject((int32_t)0x3187ec9);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.peer;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x9344c37d, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.random_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xca5a160a, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeBytes;
        value.nativeObject = self.data;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xa361765d, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.file;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x3187ec9, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:0];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:(int64_t)self.random_id];
    [os writeBytes:self.data == nil ? [NSData data] : self.data];
    TLMetaClassStore::serializeObject(os, self.file, true);
}

@end

