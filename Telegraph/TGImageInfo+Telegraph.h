/*
 * This is the source code of Telegram for iOS v. 1.1
 * It is licensed under GNU GPL v. 2 or later.
 * You should have received a copy of the license in this archive (see LICENSE).
 *
 * Copyright Peter Iakovlev, 2013.
 */

#import <LegacyComponents/LegacyComponents.h>

#import "TL/TLMetaScheme.h"

#import "SecretLayer23.h"
#import "SecretLayer46.h"
#import "SecretLayer66.h"
#import "SecretLayer73.h"

#ifdef __cplusplus
extern "C" {
#endif

NSString *extractFileUrl(id fileLocation);
    
#ifdef __cplusplus
}
#endif

@interface TGImageInfo (Telegraph)

- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc;
- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData;
- (id)initWithSecret23SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData;
- (id)initWithSecret46SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData;
- (id)initWithSecret66SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData;
- (id)initWithSecret73SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData;

/// Адрес для размеров без описания файла (схема 228) — строится по типу размера.
- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc photoFileUrlBuilder:(NSString *(^)(NSString *thumbType))builder;
- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData photoFileUrlBuilder:(NSString *(^)(NSString *thumbType))builder;

@end

// Реализация лежит в .mm, а зовут её из .m — связывание должно быть сишным.
#ifdef __cplusplus
extern "C" {
#endif

NSString *TGPeerPhotoUrl(int32_t datacenterId, int64_t peerId, int64_t accessHash, int64_t photoId, bool big);
bool TGExtractPeerPhotoUrl(NSString *url, int32_t *datacenterId, int64_t *peerId, int64_t *accessHash, int64_t *photoId, bool *big);

NSString *TGDocumentThumbUrl(int32_t datacenterId, int64_t documentId, int64_t accessHash, NSData *fileReference, NSString *thumbType);
bool TGExtractDocumentThumbUrl(NSString *url, int32_t *datacenterId, int64_t *documentId, int64_t *accessHash, NSData **fileReference, NSString **thumbType);

NSString *TGPhotoFileUrl(int32_t datacenterId, int64_t photoId, int64_t accessHash, NSData *fileReference, NSString *thumbType);
bool TGExtractPhotoFileUrl(NSString *url, int32_t *datacenterId, int64_t *photoId, int64_t *accessHash, NSData **fileReference, NSString **thumbType);

#ifdef __cplusplus
}
#endif
