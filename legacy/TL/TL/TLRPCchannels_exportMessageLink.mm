#import "TLRPCchannels_exportMessageLink.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputChannel.h"
#import "TLExportedMessageLink.h"

@implementation TLRPCchannels_exportMessageLink


- (Class)responseClass
{
    return [TLExportedMessageLink class];
}

- (int)impliedResponseSignature
{
    return (int)0x5dab1af4;
}

- (int)layerVersion
{
    return 48;
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

@implementation TLRPCchannels_exportMessageLink$channels_exportMessageLink : TLRPCchannels_exportMessageLink


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xe63fadeb;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCchannels_exportMessageLink$channels_exportMessageLink *object = [[TLRPCchannels_exportMessageLink$channels_exportMessageLink alloc] init];
    object.channel = metaObject->getObject((int32_t)0xe11f3d41);
    object.n_id = metaObject->getInt32((int32_t)0x7a5601fb);
    object.grouped = metaObject->getBool((int32_t)0xc09de8b2);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.channel;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xe11f3d41, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveBool;
        value.primitive.boolValue = self.grouped;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xc09de8b2, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:0];
    TLMetaClassStore::serializeObject(os, self.channel, true);
    [os writeInt32:(int32_t)self.n_id];
}

@end

