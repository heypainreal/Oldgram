#import "TLRPCchannels_getParticipants.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputChannel.h"
#import "TLChannelParticipantsFilter.h"
#import "TLchannels_ChannelParticipants.h"

@implementation TLRPCchannels_getParticipants


- (Class)responseClass
{
    return [TLchannels_ChannelParticipants class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 72;
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

@implementation TLRPCchannels_getParticipants$channels_getParticipants : TLRPCchannels_getParticipants


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x77ced9d0;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCchannels_getParticipants$channels_getParticipants *object = [[TLRPCchannels_getParticipants$channels_getParticipants alloc] init];
    object.channel = metaObject->getObject((int32_t)0xe11f3d41);
    object.filter = metaObject->getObject((int32_t)0x834de586);
    object.offset = metaObject->getInt32((int32_t)0xfc56269);
    object.limit = metaObject->getInt32((int32_t)0xb8433fca);
    object.n_hash = metaObject->getInt64((int32_t)0xc152e470);
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
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.filter;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x834de586, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.offset;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xfc56269, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.limit;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xb8433fca, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.n_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xc152e470, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    TLMetaClassStore::serializeObject(os, self.channel, true);
    TLMetaClassStore::serializeObject(os, self.filter, true);
    [os writeInt32:(int32_t)self.offset];
    [os writeInt32:(int32_t)self.limit];
    [os writeInt64:(int64_t)self.n_hash];
}

@end

