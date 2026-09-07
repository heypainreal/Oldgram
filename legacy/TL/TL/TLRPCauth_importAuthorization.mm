#import "TLRPCauth_importAuthorization.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLauth_Authorization.h"

@implementation TLRPCauth_importAuthorization


- (Class)responseClass
{
    return [TLauth_Authorization class];
}

- (int)impliedResponseSignature
{
    return (int)0xb1937d19;
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

@implementation TLRPCauth_importAuthorization$auth_importAuthorization : TLRPCauth_importAuthorization


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xa57a7dad;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCauth_importAuthorization$auth_importAuthorization *object = [[TLRPCauth_importAuthorization$auth_importAuthorization alloc] init];
    object.n_id = metaObject->getInt64((int32_t)0x7a5601fb);
    object.bytes = metaObject->getBytes((int32_t)0xec5ef20a);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeBytes;
        value.nativeObject = self.bytes;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xec5ef20a, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt64:(int64_t)self.n_id];
    [os writeBytes:self.bytes == nil ? [NSData data] : self.bytes];
}

@end

