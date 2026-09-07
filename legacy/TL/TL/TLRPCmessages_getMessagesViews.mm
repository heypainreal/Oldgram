#import "TLRPCmessages_getMessagesViews.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputPeer.h"
#import "NSArray_int.h"

@implementation TLRPCmessages_getMessagesViews


- (Class)responseClass
{
    return [NSArray class];
}

- (int)impliedResponseSignature
{
    return (int)0xa03855ae;
}

- (int)layerVersion
{
    return 38;
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

@implementation TLRPCmessages_getMessagesViews$messages_getMessagesViews : TLRPCmessages_getMessagesViews


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x5784d3e1;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCmessages_getMessagesViews$messages_getMessagesViews *object = [[TLRPCmessages_getMessagesViews$messages_getMessagesViews alloc] init];
    object.peer = metaObject->getObject((int32_t)0x9344c37d);
    object.n_id = metaObject->getArray((int32_t)0x7a5601fb);
    object.increment = metaObject->getBool((int32_t)0x489dec26);
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
        value.type = TLConstructedValueTypeVector;
        value.nativeObject = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveBool;
        value.primitive.boolValue = self.increment;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x489dec26, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
    [os writeInt32:(int32_t)self.n_id.count];
    for (id item in self.n_id) {
        [os writeInt32:[item intValue]];
    }
    [os writeInt32:self.increment ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}

@end

