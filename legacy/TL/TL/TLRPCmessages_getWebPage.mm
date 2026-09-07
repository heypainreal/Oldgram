#import "TLRPCmessages_getWebPage.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLWebPage.h"

@implementation TLRPCmessages_getWebPage


- (Class)responseClass
{
    return [TLWebPage class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 59;
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

@implementation TLRPCmessages_getWebPage$messages_getWebPage : TLRPCmessages_getWebPage


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x8d9692a3;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCmessages_getWebPage$messages_getWebPage *object = [[TLRPCmessages_getWebPage$messages_getWebPage alloc] init];
    object.url = metaObject->getString((int32_t)0xeaf7861e);
    object.n_hash = metaObject->getInt32((int32_t)0xc152e470);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.url;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xeaf7861e, value));
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
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt32:(int32_t)self.n_hash];
}

@end

