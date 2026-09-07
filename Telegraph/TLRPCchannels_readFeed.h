#import "TLMetaRpc.h"

@class TLFeedPosition;

@interface TLRPCchannels_readFeed : TLMetaRpc

@property (nonatomic) int64_t feed_id;
@property (nonatomic, strong) TLFeedPosition *max_position;


@end
