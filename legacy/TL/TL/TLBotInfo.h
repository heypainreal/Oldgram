#import <Foundation/Foundation.h>

#import "TLObject.h"
#import "TLMetaRpc.h"


@interface TLBotInfo : NSObject <TLObject>

@property (nonatomic) int64_t user_id;
@property (nonatomic, retain) NSString *n_description;
@property (nonatomic, retain) NSArray *commands;

@end

@interface TLBotInfo$botInfo : TLBotInfo


@end

