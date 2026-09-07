#import "TGRemoveContactFutureAction.h"

@implementation TGRemoveContactFutureAction

- (id)initWithUid:(int64_t)uid
{
    self = [super initWithType:TGRemoveContactFutureActionType];
    if (self != nil)
    {
        self.uniqueId = uid;
    }
    return self;
}

- (int64_t)uid
{
    return self.uniqueId;
}

- (NSData *)serialize
{
    return [NSData data];
}

- (TGFutureAction *)deserialize:(NSData *)__unused data
{
    return [[TGRemoveContactFutureAction alloc] initWithUid:0];
}

@end
