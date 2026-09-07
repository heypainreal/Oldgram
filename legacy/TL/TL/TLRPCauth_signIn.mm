#import "TLRPCauth_signIn.h"
#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"
#import "ModernTL.h"

@implementation TLRPCauth_signIn
- (Class)responseClass { return [ModernTL_auth_authorization class]; }
- (int)impliedResponseSignature { return 0; }
- (int)layerVersion { return 176; }
- (int32_t)TLconstructorSignature { return 0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values {}
@end

@implementation TLRPCauth_signIn$auth_signIn
- (int32_t)TLconstructorSignature { return 0x8d52a951; }
- (int32_t)TLconstructorName { return -1; }

- (void)TLserialize:(NSOutputStream *)os {
    _flags = 0;
    if (_phone_code) _flags |= (1 << 0);
    [os writeInt32:_flags];
    [os writeString:_phone_number];
    [os writeString:_phone_code_hash];
    if (_flags & (1 << 0)) {
        [os writeString:_phone_code];
    }
}
@end
