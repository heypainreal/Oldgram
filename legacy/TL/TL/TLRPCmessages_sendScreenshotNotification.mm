#import "TLRPCmessages_sendScreenshotNotification.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputPeer.h"
#import "TLUpdates.h"

@implementation TLRPCmessages_sendScreenshotNotification


- (Class)responseClass
{
    return [TLUpdates class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 70;
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

@implementation TLRPCmessages_sendScreenshotNotification$messages_sendScreenshotNotification : TLRPCmessages_sendScreenshotNotification


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xa1405817;
}

// Разбор через мета-схему больше не подходит: reply_to стал объектом.
- (int32_t)TLconstructorName
{
    return -1;
}

// messages.sendScreenshotNotification#a1405817 peer:InputPeer reply_to:InputReplyTo random_id:long
- (void)TLserialize:(NSOutputStream *)os
{
    TLMetaClassStore::serializeObject(os, self.peer, true);
    
    [os writeInt32:(int32_t)0x3bd4b7c2];   // inputReplyToMessage
    [os writeInt32:0];
    [os writeInt32:self.reply_to_msg_id];
    
    [os writeInt64:self.random_id];
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCmessages_sendScreenshotNotification$messages_sendScreenshotNotification *object = [[TLRPCmessages_sendScreenshotNotification$messages_sendScreenshotNotification alloc] init];
    object.peer = metaObject->getObject((int32_t)0x9344c37d);
    object.reply_to_msg_id = metaObject->getInt32((int32_t)0x598ed37b);
    object.random_id = metaObject->getInt64((int32_t)0xca5a160a);
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
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.reply_to_msg_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x598ed37b, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.random_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xca5a160a, value));
    }
}


@end

