#import "TLRPCcontacts_getContactIDs.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "NSArray_int.h"

@implementation TLRPCcontacts_getContactIDs


- (Class)responseClass
{
    return [NSArray class];
}

- (int)impliedResponseSignature
{
    return (int)0xa03855ae;
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

@implementation TLRPCcontacts_getContactIDs$contacts_getContactIDs : TLRPCcontacts_getContactIDs


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x7adc669d;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    TLRPCcontacts_getContactIDs$contacts_getContactIDs *object = [[TLRPCcontacts_getContactIDs$contacts_getContactIDs alloc] init];
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt64:0];
}

@end

