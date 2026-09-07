#import "TGUserInfoController.h"

@interface TGBotUserInfoController : TGUserInfoController

- (instancetype)initWithUid:(int64_t)uid sendCommand:(void (^)(NSString *))sendCommand;

@end
