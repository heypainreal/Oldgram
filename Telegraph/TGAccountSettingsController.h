#import <LegacyComponents/LegacyComponents.h>

#import <LegacyComponents/ASWatcher.h>

#import "TGCollectionMenuController.h"

@interface TGAccountSettingsController : TGCollectionMenuController <ASWatcher>

@property (nonatomic, strong) ASHandle *actionHandle;

- (id)initWithUid:(int64_t)uid;

- (void)_updateProfileImage:(UIImage *)image;

@end
