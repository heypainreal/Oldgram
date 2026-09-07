#import "TGPrivateChatModel.h"

@implementation TGPrivateChatModel

- (instancetype)initWithUserId:(int64_t)userId
{
    self = [super initWithPeerId:TGPeerIdPrivateMake(userId)];
    if (self != nil)
    {
        
    }
    return self;
}

@end
