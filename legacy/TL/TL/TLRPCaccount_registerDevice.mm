#import "TLRPCaccount_registerDevice.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"


@implementation TLRPCaccount_registerDevice


- (Class)responseClass
{
    return [NSNumber class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 5;
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

@implementation TLRPCaccount_registerDevice$account_registerDevice : TLRPCaccount_registerDevice


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xec86017a;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCaccount_registerDevice$account_registerDevice *object = [[TLRPCaccount_registerDevice$account_registerDevice alloc] init];
    object.token_type = metaObject->getInt32((int32_t)0xb5f2fc25);
    object.token = metaObject->getString((int32_t)0x1e8aa3f5);
    object.app_sandbox = metaObject->getBool((int32_t)0xee0a6d3);
    object.other_uids = metaObject->getArray((int32_t)0xec1da239);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.token_type;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xb5f2fc25, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.token;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x1e8aa3f5, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveBool;
        value.primitive.boolValue = self.app_sandbox;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xee0a6d3, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeVector;
        value.nativeObject = self.other_uids;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xec1da239, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:0];
    [os writeInt32:(int32_t)self.token_type];
    [os writeString:self.token == nil ? @"" : self.token];
    [os writeInt32:self.app_sandbox ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
    [os writeBytes:[NSData data]];
    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
    [os writeInt32:(int32_t)self.other_uids.count];
    for (id item in self.other_uids) {
        [os writeInt64:[item longLongValue]];
    }
}

@end

