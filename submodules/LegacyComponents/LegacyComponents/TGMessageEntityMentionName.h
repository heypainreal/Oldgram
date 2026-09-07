#import <LegacyComponents/TGMessageEntity.h>

@interface TGMessageEntityMentionName : TGMessageEntity

@property (nonatomic, readonly) int64_t userId;

- (instancetype)initWithRange:(NSRange)range userId:(int64_t)userId;

@end
