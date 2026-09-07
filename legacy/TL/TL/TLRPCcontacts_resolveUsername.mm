#import "TLRPCcontacts_resolveUsername.h"

#import "TLMetaClassStore.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLcontacts_ResolvedPeer.h"

@implementation TLRPCcontacts_resolveUsername


- (Class)responseClass
{
    return [TLcontacts_ResolvedPeer class];
}

- (int)impliedResponseSignature
{
    return (int)0x7f077ad9;
}

- (int)layerVersion
{
    return 38;
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

@implementation TLRPCcontacts_resolveUsername$contacts_resolveUsername : TLRPCcontacts_resolveUsername


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x725afbbc;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCcontacts_resolveUsername$contacts_resolveUsername *object = [[TLRPCcontacts_resolveUsername$contacts_resolveUsername alloc] init];
    object.username = metaObject->getString((int32_t)0x626830ca);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.username;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x626830ca, value));
    }
}

// layer 228
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:0];
    [os writeString:self.username == nil ? @"" : self.username];
}

@end

