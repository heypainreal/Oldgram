#import <Foundation/Foundation.h>

#import "TLObject.h"
#import "TLMetaRpc.h"


@interface TLUser : NSObject <TLObject>


@end

@interface TLUser$userEmpty : TLUser

@property (nonatomic) int64_t n_id;

@end

@interface TLUser$user : TLUser


@end

