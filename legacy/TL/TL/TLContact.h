#import <Foundation/Foundation.h>

#import "TLObject.h"
#import "TLMetaRpc.h"


@interface TLContact : NSObject <TLObject>

@property (nonatomic) int64_t user_id;
@property (nonatomic) bool mutual;

@end

@interface TLContact$contact : TLContact


@end

