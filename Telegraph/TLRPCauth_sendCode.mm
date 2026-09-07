#import "TLRPCauth_sendCode.h"

#import "TLauth_SentCode.h"

#import "TLMetaClassStore.h"

@implementation TLRPCauth_sendCode

- (int32_t)TLconstructorSignature
{
    return (int32_t)0xa677244f;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [ModernTL_auth_sentCode class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 176;
}

- (void)TLserialize:(NSOutputStream *)os
{
    [os writeString:_phone_number];
    [os writeInt32:_api_id];
    [os writeString:_api_hash];
    
    // settings:CodeSettings
    [os writeInt32:[_settings TLconstructorSignature]];
    [_settings TLserialize:os];
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCauth_sendCode deserialization not supported");
    return nil;
}

@end
