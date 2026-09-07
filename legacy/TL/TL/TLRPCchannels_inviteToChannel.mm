#import "TLRPCchannels_inviteToChannel.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputChannel.h"
#import "TLUpdates.h"

@implementation TLRPCchannels_inviteToChannel


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

@implementation TLRPCchannels_inviteToChannel$channels_inviteToChannel : TLRPCchannels_inviteToChannel


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xc9e33d54;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCchannels_inviteToChannel$channels_inviteToChannel *object = [[TLRPCchannels_inviteToChannel$channels_inviteToChannel alloc] init];
    object.channel = metaObject->getObject((int32_t)0xe11f3d41);
    object.users = metaObject->getArray((int32_t)0x933e5ff3);
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
        value.type = TLConstructedValueTypeVector;
        value.nativeObject = self.users;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x933e5ff3, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    TLMetaClassStore::serializeObject(os, self.channel, true);
    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
    [os writeInt32:(int32_t)self.users.count];
    for (id item in self.users) {
        TLMetaClassStore::serializeObject(os, item, true);
    }
}

@end

