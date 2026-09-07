#include <sys/socket.h>
#import "MTExportedAuthorizationData.h"

@implementation MTExportedAuthorizationData

- (instancetype)initWithAuthorizationBytes:(NSData *)authorizationBytes authorizationId:(int64_t)authorizationId
{
    self = [super init];
    if (self != nil)
    {
        _authorizationBytes = authorizationBytes;
        _authorizationId = authorizationId;
    }
    return self;
}

@end
