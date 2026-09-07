#import <Foundation/Foundation.h>
#import <SSignalKit/SSignalKit.h>

@interface TGUserSignal : NSObject

+ (SSignal *)userWithUserId:(int64_t)userId;
+ (SSignal *)updatedUserCachedDataWithUserId:(int64_t)userId;
+ (SSignal *)groupsInCommon:(int64_t)userId;

@end
