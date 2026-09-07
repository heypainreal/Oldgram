#import "TLInputFileLocation.h"

#import "TLMetaClassStore.h"
#import "TLInputPeer.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"


@implementation TLInputFileLocation


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

@implementation TLInputFileLocation$inputFileLocation : TLInputFileLocation


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xdfdaabe1;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0xcab26024;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputFileLocation$inputFileLocation *object = [[TLInputFileLocation$inputFileLocation alloc] init];
    object.volume_id = metaObject->getInt64((int32_t)0xdfa67416);
    object.local_id = metaObject->getInt32((int32_t)0x1a9ce92a);
    object.secret = metaObject->getInt64((int32_t)0x6706b4b7);
    object.file_reference = metaObject->getBytes((int32_t)0x8bad663c);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.volume_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xdfa67416, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.local_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x1a9ce92a, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.secret;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x6706b4b7, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeBytes;
        value.nativeObject = self.file_reference;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8bad663c, value));
    }
}


@end

@implementation TLInputFileLocation$inputEncryptedFileLocation : TLInputFileLocation


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xf5235d55;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0xeabc984c;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputFileLocation$inputEncryptedFileLocation *object = [[TLInputFileLocation$inputEncryptedFileLocation alloc] init];
    object.n_id = metaObject->getInt64((int32_t)0x7a5601fb);
    object.access_hash = metaObject->getInt64((int32_t)0x8f305224);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.access_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8f305224, value));
    }
}


@end

@implementation TLInputFileLocation$inputDocumentFileLocation : TLInputFileLocation


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xbad07584;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputFileLocation$inputDocumentFileLocation *object = [[TLInputFileLocation$inputDocumentFileLocation alloc] init];
    object.n_id = metaObject->getInt64((int32_t)0x7a5601fb);
    object.access_hash = metaObject->getInt64((int32_t)0x8f305224);
    object.file_reference = metaObject->getBytes((int32_t)0x8bad663c);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.access_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8f305224, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeBytes;
        value.nativeObject = self.file_reference;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8bad663c, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt64:(int64_t)self.n_id];
    [os writeInt64:(int64_t)self.access_hash];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
    [os writeString:self.thumb_size == nil ? @"" : self.thumb_size];
}

@end

@implementation TLInputFileLocation$inputSecureFileLocation : TLInputFileLocation


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xcbc7ee28;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x0da7ad9c;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLInputFileLocation$inputSecureFileLocation *object = [[TLInputFileLocation$inputSecureFileLocation alloc] init];
    object.n_id = metaObject->getInt64((int32_t)0x7a5601fb);
    object.access_hash = metaObject->getInt64((int32_t)0x8f305224);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.access_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8f305224, value));
    }
}


@end

@implementation TLInputFileLocation$inputPeerPhotoFileLocation

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x37257e99;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
}

// inputPeerPhotoFileLocation#37257e99 flags:# big:flags.0?true peer:InputPeer photo_id:long
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:self.big ? (1 << 0) : 0];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt64:self.photo_id];
}

@end

@implementation TLInputFileLocation$inputPhotoFileLocation

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x40181ffe;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
}

// inputPhotoFileLocation#40181ffe id:long access_hash:long file_reference:bytes thumb_size:string
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt64:self.n_id];
    [os writeInt64:self.access_hash];
    [os writeBytes:self.file_reference == nil ? [NSData data] : self.file_reference];
    [os writeString:self.thumb_size == nil ? @"" : self.thumb_size];
}

@end
