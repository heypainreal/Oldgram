#import "TLRPCupload_getFile.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputFileLocation.h"
#import "TLupload_File.h"

@implementation TLRPCupload_getFile


- (Class)responseClass
{
    return [TLupload_File class];
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

@implementation TLRPCupload_getFile$upload_getFile : TLRPCupload_getFile


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xbe5335be;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCupload_getFile$upload_getFile *object = [[TLRPCupload_getFile$upload_getFile alloc] init];
    object.location = metaObject->getObject((int32_t)0x504a1f06);
    object.offset = metaObject->getInt64((int32_t)0xfc56269);
    object.limit = metaObject->getInt32((int32_t)0xb8433fca);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.location;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x504a1f06, value));
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
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:0];
    TLMetaClassStore::serializeObject(os, self.location, true);
    [os writeInt64:(int64_t)self.offset];
    [os writeInt32:(int32_t)self.limit];
}

@end

