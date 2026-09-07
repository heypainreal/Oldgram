#import "TLRPCupload_getCdnFile.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLupload_CdnFile.h"

@implementation TLRPCupload_getCdnFile


- (Class)responseClass
{
    return [TLupload_CdnFile class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 66;
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

@implementation TLRPCupload_getCdnFile$upload_getCdnFile : TLRPCupload_getCdnFile


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x395f69da;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCupload_getCdnFile$upload_getCdnFile *object = [[TLRPCupload_getCdnFile$upload_getCdnFile alloc] init];
    object.file_token = metaObject->getBytes((int32_t)0x12624663);
    object.offset = metaObject->getInt64((int32_t)0xfc56269);
    object.limit = metaObject->getInt32((int32_t)0xb8433fca);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeBytes;
        value.nativeObject = self.file_token;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x12624663, value));
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
    [os writeBytes:self.file_token == nil ? [NSData data] : self.file_token];
    [os writeInt64:(int64_t)self.offset];
    [os writeInt32:(int32_t)self.limit];
}

@end

