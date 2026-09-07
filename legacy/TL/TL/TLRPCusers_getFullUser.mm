#import "TLRPCusers_getFullUser.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputUser.h"
#import "TLUserFull.h"

@implementation TLRPCusers_getFullUser


- (Class)responseClass
{
    return [TLUserFull class];
}

- (int)impliedResponseSignature
{
    return (int)0x47677fb2;
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

@implementation TLRPCusers_getFullUser$users_getFullUser : TLRPCusers_getFullUser


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xb60f5918;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCusers_getFullUser$users_getFullUser *object = [[TLRPCusers_getFullUser$users_getFullUser alloc] init];
    object.n_id = metaObject->getObject((int32_t)0x7a5601fb);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
}

// users.getFullUser#b60f5918
- (void)TLserialize:(NSOutputStream *)os
{
    TLMetaClassStore::serializeObject(os, self.n_id, true);
}

@end

