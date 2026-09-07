#import "TLInputSingleMedia.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputMedia.h"

@implementation TLInputSingleMedia


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

@implementation TLInputSingleMedia$inputSingleMediaMeta : TLInputSingleMedia


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x1cc6e91f;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputSingleMedia$inputSingleMediaMeta *object = [[TLInputSingleMedia$inputSingleMediaMeta alloc] init];
    object.media = metaObject->getObject((int32_t)0x598de2e7);
    object.random_id = metaObject->getInt64((int32_t)0xca5a160a);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.media;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x598de2e7, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.random_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xca5a160a, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:(int32_t)(self.flags & 0x00000000)];
    TLMetaClassStore::serializeObject(os, self.media, true);
    [os writeInt64:(int64_t)self.random_id];
    [os writeString:self.message == nil ? @"" : self.message];
}

@end

