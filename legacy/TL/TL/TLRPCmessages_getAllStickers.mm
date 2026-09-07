#import "TLRPCmessages_getAllStickers.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLmessages_AllStickers.h"

@implementation TLRPCmessages_getAllStickers


- (Class)responseClass
{
    return [TLmessages_AllStickers class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 43;
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

@implementation TLRPCmessages_getAllStickers$messages_getAllStickers : TLRPCmessages_getAllStickers


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xb8a0a1a8;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCmessages_getAllStickers$messages_getAllStickers *object = [[TLRPCmessages_getAllStickers$messages_getAllStickers alloc] init];
    object.n_hash = metaObject->getInt64((int32_t)0xc152e470);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
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
    [os writeInt64:(int64_t)self.n_hash];
}

@end

