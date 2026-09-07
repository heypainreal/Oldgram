#import "TLRPCaccount_getWallPapers.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "NSArray_WallPaper.h"

@implementation TLRPCaccount_getWallPapers


- (Class)responseClass
{
    return [NSArray class];
}

- (int)impliedResponseSignature
{
    return (int)0x580b5534;
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

@implementation TLRPCaccount_getWallPapers$account_getWallPapers : TLRPCaccount_getWallPapers


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x07967d36;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    TLRPCaccount_getWallPapers$account_getWallPapers *object = [[TLRPCaccount_getWallPapers$account_getWallPapers alloc] init];
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

