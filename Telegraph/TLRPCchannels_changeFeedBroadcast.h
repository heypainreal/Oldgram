#import "TLMetaRpc.h"

@class TLInputChannel;

@interface TLRPCchannels_changeFeedBroadcast : TLMetaRpc

@property (nonatomic) int32_t flags;
@property (nonatomic, strong) TLInputChannel *channel;
@property (nonatomic) int64_t feed_id;

@end
