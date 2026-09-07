#import "TLMetaRpc.h"

@interface TLRPCauth_signIn : TLMetaRpc
@end

@interface TLRPCauth_signIn$auth_signIn : TLRPCauth_signIn
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *phone_code_hash;
@property (nonatomic, strong) NSString *phone_code;
@end
