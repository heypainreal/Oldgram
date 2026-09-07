#import "TGMessageEntityMentionName.h"

#import "PSKeyValueCoder.h"

@implementation TGMessageEntityMentionName

- (instancetype)initWithRange:(NSRange)range userId:(int64_t)userId {
    self = [super initWithRange:range];
    if (self != nil) {
        _userId = userId;
    }
    return self;
}

- (instancetype)initWithKeyValueCoder:(PSKeyValueCoder *)coder {
    self = [super initWithKeyValueCoder:coder];
    if (self != nil) {
        _userId = ([coder decodeInt64ForCKey:"userId64"] ?: [coder decodeInt32ForCKey:"userId"]);
    }
    return self;
}

- (void)encodeWithKeyValueCoder:(PSKeyValueCoder *)coder {
    [super encodeWithKeyValueCoder:coder];
    [coder encodeInt64:_userId forCKey:"userId64"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self != nil) {
        _userId = ([aDecoder containsValueForKey:@"userId64"] ? [aDecoder decodeInt64ForKey:@"userId64"] : [aDecoder decodeInt32ForKey:@"userId"]);
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeInt64:_userId forKey:@"userId64"];
}

@end
