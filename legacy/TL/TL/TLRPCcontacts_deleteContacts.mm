#import "TLRPCcontacts_deleteContacts.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"


@implementation TLRPCcontacts_deleteContacts


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

@implementation TLRPCcontacts_deleteContacts$contacts_deleteContacts : TLRPCcontacts_deleteContacts


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x096a0e00;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCcontacts_deleteContacts$contacts_deleteContacts *object = [[TLRPCcontacts_deleteContacts$contacts_deleteContacts alloc] init];
    object.n_id = metaObject->getArray((int32_t)0x7a5601fb);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeVector;
        value.nativeObject = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
    [os writeInt32:(int32_t)self.n_id.count];
    for (id item in self.n_id) {
        TLMetaClassStore::serializeObject(os, item, true);
    }
}

@end

