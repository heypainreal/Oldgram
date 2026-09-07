#import "TLMetaRpc.h"
#import "ModernTL.h"

@interface TLRPCauth_sendCode : TLMetaRpc

@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic) int32_t api_id;
@property (nonatomic, strong) NSString *api_hash;
@property (nonatomic, strong) ModernTL_codeSettings *settings;

@end
