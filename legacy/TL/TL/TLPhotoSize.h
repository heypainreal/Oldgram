#import <Foundation/Foundation.h>

#import "TLObject.h"
#import "TLMetaRpc.h"

@class TLFileLocation;

@interface TLPhotoSize : NSObject <TLObject>

@property (nonatomic, retain) NSString *type;

@end

@interface TLPhotoSize$photoSizeEmpty : TLPhotoSize


@end

@interface TLPhotoSize$photoSize : TLPhotoSize

@property (nonatomic, retain) TLFileLocation *location;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic) int32_t size;

@end

@interface TLPhotoSize$photoCachedSize : TLPhotoSize

@property (nonatomic, retain) TLFileLocation *location;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, retain) NSData *bytes;

@end

/// layer 228: у крупных размеров вместо одного size приходит вектор длин
/// прогрессивного JPEG. Без этого конструктора мост терял размер «y», и в
/// чате оставались только маленькие превью.
@interface TLPhotoSize$photoSizeProgressive : TLPhotoSize

@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, retain) NSArray *sizes;

@end
