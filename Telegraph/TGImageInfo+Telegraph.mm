#import "TGImageInfo+Telegraph.h"

#import <LegacyComponents/LegacyComponents.h>

#import "TGSchema.h"

#import <LegacyComponents/TGCache.h>
#import <LegacyComponents/TGRemoteImageView.h>


// Фотографии пиров в схеме 228 адресуются парой (пир, photo_id), а не
// координатами файла. Кодируем это в строку-адрес, которую понимает загрузчик.

// Фотографии в схеме 228 тоже адресуются идентификатором, а не координатами
// файла: у photoSize остались только тип размера и габариты.
/// Шестнадцатеричная запись file_reference.
///
/// Раньше здесь стоял -[NSData description]: с iOS 13 он отдаёт
/// «{length = 4; bytes = 0x...}» вместо «<0a1b2c3d>», и ссылка на файл
/// превращалась в мусор — сервер отвечал ошибкой на любую загрузку.
static NSString *TGHexStringFromData(NSData *data)
{
    if (data.length == 0)
        return @"";

    static const char hex[] = "0123456789abcdef";
    const uint8_t *bytes = (const uint8_t *)data.bytes;
    NSMutableString *result = [[NSMutableString alloc] initWithCapacity:data.length * 2];
    for (NSUInteger i = 0; i < data.length; i++)
    {
        [result appendFormat:@"%c%c", hex[(bytes[i] >> 4) & 0xf], hex[bytes[i] & 0xf]];
    }
    return result;
}

static NSData *TGDataFromHexString(NSString *hex)
{
    if (hex.length < 2)
        return nil;

    NSMutableData *data = [[NSMutableData alloc] initWithCapacity:hex.length / 2];
    for (NSUInteger i = 0; i + 1 < hex.length; i += 2)
    {
        unsigned int byte = 0;
        if (![[NSScanner scannerWithString:[hex substringWithRange:NSMakeRange(i, 2)]] scanHexInt:&byte])
            return nil;
        uint8_t value = (uint8_t)byte;
        [data appendBytes:&value length:1];
    }
    return data;
}

NSString *TGPhotoFileUrl(int32_t datacenterId, int64_t photoId, int64_t accessHash, NSData *fileReference, NSString *thumbType)
{
    NSString *reference = TGHexStringFromData(fileReference);
    return [[NSString alloc] initWithFormat:@"photofile:%d_%lld_%lld_%@_%@", datacenterId, photoId, accessHash, reference.length == 0 ? @"-" : reference, thumbType.length == 0 ? @"x" : thumbType];
}

bool TGExtractPhotoFileUrl(NSString *url, int32_t *datacenterId, int64_t *photoId, int64_t *accessHash, NSData **fileReference, NSString **thumbType)
{
    if (![url hasPrefix:@"photofile:"]) {
        return false;
    }
    
    NSArray *parts = [[url substringFromIndex:@"photofile:".length] componentsSeparatedByString:@"_"];
    if (parts.count != 5) {
        return false;
    }
    
    if (datacenterId != NULL) *datacenterId = (int32_t)[parts[0] intValue];
    if (photoId != NULL) *photoId = [parts[1] longLongValue];
    if (accessHash != NULL) *accessHash = [parts[2] longLongValue];
    if (thumbType != NULL) *thumbType = [parts[4] isEqualToString:@"x"] ? @"" : parts[4];
    
    if (fileReference != NULL) {
        NSString *hex = parts[3];
        *fileReference = [hex isEqualToString:@"-"] ? nil : TGDataFromHexString(hex);
    }
    
    return true;
}


// Превью документов и стикеров тоже адресуются документом и типом размера.
NSString *TGDocumentThumbUrl(int32_t datacenterId, int64_t documentId, int64_t accessHash, NSData *fileReference, NSString *thumbType)
{
    NSString *reference = TGHexStringFromData(fileReference);
    return [[NSString alloc] initWithFormat:@"docthumb:%d_%lld_%lld_%@_%@", datacenterId, documentId, accessHash, reference.length == 0 ? @"-" : reference, thumbType.length == 0 ? @"x" : thumbType];
}

bool TGExtractDocumentThumbUrl(NSString *url, int32_t *datacenterId, int64_t *documentId, int64_t *accessHash, NSData **fileReference, NSString **thumbType)
{
    if (![url hasPrefix:@"docthumb:"]) {
        return false;
    }
    NSString *rest = [@"photofile:" stringByAppendingString:[url substringFromIndex:@"docthumb:".length]];
    return TGExtractPhotoFileUrl(rest, datacenterId, documentId, accessHash, fileReference, thumbType);
}

NSString *TGPeerPhotoUrl(int32_t datacenterId, int64_t peerId, int64_t accessHash, int64_t photoId, bool big)
{
    if (photoId == 0) {
        return nil;
    }
    return [[NSString alloc] initWithFormat:@"peerphoto:%d_%lld_%lld_%lld_%d", datacenterId, peerId, accessHash, photoId, big ? 1 : 0];
}

bool TGExtractPeerPhotoUrl(NSString *url, int32_t *datacenterId, int64_t *peerId, int64_t *accessHash, int64_t *photoId, bool *big)
{
    if (![url hasPrefix:@"peerphoto:"]) {
        return false;
    }
    
    NSArray *parts = [[url substringFromIndex:@"peerphoto:".length] componentsSeparatedByString:@"_"];
    if (parts.count != 5) {
        return false;
    }
    
    if (datacenterId != NULL) *datacenterId = (int32_t)[parts[0] intValue];
    if (peerId != NULL) *peerId = [parts[1] longLongValue];
    if (accessHash != NULL) *accessHash = [parts[2] longLongValue];
    if (photoId != NULL) *photoId = [parts[3] longLongValue];
    if (big != NULL) *big = [parts[4] intValue] != 0;
    
    return true;
}

NSString *extractFileUrl(id fileLocation)
{
    if ([fileLocation isKindOfClass:[TLFileLocation$fileLocation class]])
    {
        TLFileLocation$fileLocation *concreteFileLocation = (TLFileLocation$fileLocation *)fileLocation;
        
        return [[NSString alloc] initWithFormat:@"%d_%lld_%d_%lld", concreteFileLocation.dc_id, concreteFileLocation.volume_id, concreteFileLocation.local_id, concreteFileLocation.secret];
    }
    else if ([fileLocation isKindOfClass:[Secret23_FileLocation_fileLocation class]])
    {
        Secret23_FileLocation_fileLocation *concreteFileLocation = fileLocation;
        
        return [[NSString alloc] initWithFormat:@"%d_%lld_%d_%lld", concreteFileLocation.dcId.intValue, concreteFileLocation.volumeId.longLongValue, concreteFileLocation.localId.intValue, concreteFileLocation.secret.longLongValue];
    }
    else if ([fileLocation isKindOfClass:[Secret66_FileLocation_fileLocation class]])
    {
        Secret66_FileLocation_fileLocation *concreteFileLocation = fileLocation;
        
        return [[NSString alloc] initWithFormat:@"%d_%lld_%d_%lld", concreteFileLocation.dcId.intValue, concreteFileLocation.volumeId.longLongValue, concreteFileLocation.localId.intValue, concreteFileLocation.secret.longLongValue];
    }
    else if ([fileLocation isKindOfClass:[Secret66_FileLocation_fileLocation class]])
    {
        Secret66_FileLocation_fileLocation *concreteFileLocation = fileLocation;
        
        return [[NSString alloc] initWithFormat:@"%d_%lld_%d_%lld", concreteFileLocation.dcId.intValue, concreteFileLocation.volumeId.longLongValue, concreteFileLocation.localId.intValue, concreteFileLocation.secret.longLongValue];
    }
    else if ([fileLocation isKindOfClass:[Secret73_FileLocation_fileLocation class]])
    {
        Secret73_FileLocation_fileLocation *concreteFileLocation = fileLocation;
        
        return [[NSString alloc] initWithFormat:@"%d_%lld_%d_%lld", concreteFileLocation.dcId.intValue, concreteFileLocation.volumeId.longLongValue, concreteFileLocation.localId.intValue, concreteFileLocation.secret.longLongValue];
    }
    else if (fileLocation != nil)
    {
        // В схеме 228 у фото пиров и размеров фотографий координат файла нет:
        // адрес собирается по (пир, photo_id) выше по стеку. Это не ошибка,
        // поэтому шумим только на действительно неожиданных объектах.
        TGLog(@"Warning: invalid fileLocation %@", NSStringFromClass([fileLocation class]));
    }
    
    return nil;
}

@implementation TGImageInfo (Telegraph)

- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc
{
    return [self initWithTelegraphSizesDescription:sizesDesc cachedData:nil];
}

- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc photoFileUrlBuilder:(NSString *(^)(NSString *))builder
{
    return [self initWithTelegraphSizesDescription:sizesDesc cachedData:nil photoFileUrlBuilder:builder];
}

- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData
{
    return [self initWithTelegraphSizesDescription:sizesDesc cachedData:cachedData photoFileUrlBuilder:nil];
}

- (id)initWithTelegraphSizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData photoFileUrlBuilder:(NSString *(^)(NSString *))photoFileUrlBuilder
{
    self = [super init];
    if (self != nil)
    {   
        for (TLPhotoSize *sizeDesc in sizesDesc)
        {
            if ([sizeDesc isKindOfClass:[TLPhotoSize$photoSize class]])
            {
                TLPhotoSize$photoSize *concreteSize = (TLPhotoSize$photoSize *)sizeDesc;
                NSString *urlLocation = extractFileUrl(concreteSize.location);
                if (urlLocation == nil && photoFileUrlBuilder != nil)
                    urlLocation = photoFileUrlBuilder(concreteSize.type);
                
#ifdef DEBUG
                if ([concreteSize.type isEqualToString:@"s"])
                {
                    TGLog(@"***** Non-cached photo size received: %@", urlLocation);
                }
#endif
                
                [self addImageWithSize:CGSizeMake(concreteSize.w, concreteSize.h) url:urlLocation fileSize:concreteSize.size];
            }
            else if ([sizeDesc isKindOfClass:[TLPhotoSize$photoSizeProgressive class]])
            {
                // Прогрессивный JPEG: полный размер — последнее значение вектора.
                TLPhotoSize$photoSizeProgressive *concreteSize = (TLPhotoSize$photoSizeProgressive *)sizeDesc;
                if (photoFileUrlBuilder == nil)
                    continue;
                
                NSString *urlLocation = photoFileUrlBuilder(concreteSize.type);
                if (urlLocation == nil)
                    continue;
                
                int32_t fileSize = 0;
                for (NSNumber *value in concreteSize.sizes)
                    fileSize = MAX(fileSize, (int32_t)[value intValue]);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w, concreteSize.h) url:urlLocation fileSize:fileSize];
            }
            else if ([sizeDesc isKindOfClass:[TLPhotoSize$photoCachedSize class]])
            {
                TLPhotoSize$photoCachedSize *concreteSize = (TLPhotoSize$photoCachedSize *)sizeDesc;
                
                NSString *url = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w, concreteSize.h) url:url fileSize:(int32_t)concreteSize.bytes.length];
                
                if (concreteSize.bytes.length != 0)
                {
                    NSData *imageData = concreteSize.bytes;
                    if (cachedData != NULL)
                        *cachedData = imageData;
                    else
                    {
                        if (url != nil)
                        {
                            [[TGRemoteImageView sharedCache] diskCacheContains:url orUrl:nil completion:^(bool containsFirst, __unused bool containsSecond)
                            {
                                if (!containsFirst)
                                {
                                    if (TGEnableBlur() && cpuCoreCount() > 1)
                                    {
                                        NSData *data = nil;
                                        TGScaleAndBlurImage(imageData, CGSizeZero, &data);
                                        if (data != nil)
                                            [[TGRemoteImageView sharedCache] cacheImage:nil withData:data url:url availability:TGCacheDisk];
                                        else
                                            [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                    }
                                    else
                                        [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                }
                            }];
                        }
                    }
                }
            }
        }
    }
    return self;
}

- (id)initWithSecret23SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData
{
    self = [super init];
    if (self != nil)
    {
        for (id sizeDesc in sizesDesc)
        {
            if ([sizeDesc isKindOfClass:[Secret23_PhotoSize_photoSize class]])
            {
                Secret23_PhotoSize_photoSize *concreteSize = sizeDesc;
                NSString *urlLocation = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:urlLocation];
            }
            else if ([sizeDesc isKindOfClass:[Secret23_PhotoSize_photoCachedSize class]])
            {
                Secret23_PhotoSize_photoCachedSize *concreteSize = sizeDesc;
                
                NSString *url = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:url];
                
                if (concreteSize.bytes.length != 0)
                {
                    NSData *imageData = concreteSize.bytes;
                    if (cachedData != NULL)
                    *cachedData = imageData;
                    else
                    {
                        if (url != nil)
                        {
                            [[TGRemoteImageView sharedCache] diskCacheContains:url orUrl:nil completion:^(bool containsFirst, __unused bool containsSecond)
                             {
                                 if (!containsFirst)
                                 {
                                     if (TGEnableBlur() && cpuCoreCount() > 1)
                                     {
                                         NSData *data = nil;
                                         TGScaleAndBlurImage(imageData, CGSizeZero, &data);
                                         if (data != nil)
                                         [[TGRemoteImageView sharedCache] cacheImage:nil withData:data url:url availability:TGCacheDisk];
                                         else
                                         [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                     }
                                     else
                                     [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                 }
                             }];
                        }
                    }
                }
            }
        }
    }
    return self;
}

- (id)initWithSecret46SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData {
    self = [super init];
    if (self != nil)
    {
        for (id sizeDesc in sizesDesc)
        {
            if ([sizeDesc isKindOfClass:[Secret46_PhotoSize_photoSize class]])
            {
                Secret46_PhotoSize_photoSize *concreteSize = sizeDesc;
                NSString *urlLocation = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:urlLocation];
            }
            else if ([sizeDesc isKindOfClass:[Secret46_PhotoSize_photoCachedSize class]])
            {
                Secret46_PhotoSize_photoCachedSize *concreteSize = sizeDesc;
                
                NSString *url = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:url];
                
                if (concreteSize.bytes.length != 0)
                {
                    NSData *imageData = concreteSize.bytes;
                    if (cachedData != NULL)
                        *cachedData = imageData;
                    else
                    {
                        if (url != nil)
                        {
                            [[TGRemoteImageView sharedCache] diskCacheContains:url orUrl:nil completion:^(bool containsFirst, __unused bool containsSecond)
                             {
                                 if (!containsFirst)
                                 {
                                     if (TGEnableBlur() && cpuCoreCount() > 1)
                                     {
                                         NSData *data = nil;
                                         TGScaleAndBlurImage(imageData, CGSizeZero, &data);
                                         if (data != nil)
                                             [[TGRemoteImageView sharedCache] cacheImage:nil withData:data url:url availability:TGCacheDisk];
                                         else
                                             [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                     }
                                     else
                                         [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                 }
                             }];
                        }
                    }
                }
            }
        }
    }
    return self;
}

- (id)initWithSecret66SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData {
    self = [super init];
    if (self != nil)
    {
        for (id sizeDesc in sizesDesc)
        {
            if ([sizeDesc isKindOfClass:[Secret66_PhotoSize_photoSize class]])
            {
                Secret66_PhotoSize_photoSize *concreteSize = sizeDesc;
                NSString *urlLocation = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:urlLocation];
            }
            else if ([sizeDesc isKindOfClass:[Secret66_PhotoSize_photoCachedSize class]])
            {
                Secret66_PhotoSize_photoCachedSize *concreteSize = sizeDesc;
                
                NSString *url = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:url];
                
                if (concreteSize.bytes.length != 0)
                {
                    NSData *imageData = concreteSize.bytes;
                    if (cachedData != NULL)
                        *cachedData = imageData;
                    else
                    {
                        if (url != nil)
                        {
                            [[TGRemoteImageView sharedCache] diskCacheContains:url orUrl:nil completion:^(bool containsFirst, __unused bool containsSecond)
                             {
                                 if (!containsFirst)
                                 {
                                     if (TGEnableBlur() && cpuCoreCount() > 1)
                                     {
                                         NSData *data = nil;
                                         TGScaleAndBlurImage(imageData, CGSizeZero, &data);
                                         if (data != nil)
                                             [[TGRemoteImageView sharedCache] cacheImage:nil withData:data url:url availability:TGCacheDisk];
                                         else
                                             [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                     }
                                     else
                                         [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                 }
                             }];
                        }
                    }
                }
            }
        }
    }
    return self;
}

- (id)initWithSecret73SizesDescription:(NSArray *)sizesDesc cachedData:(__autoreleasing NSData **)cachedData {
    self = [super init];
    if (self != nil)
    {
        for (id sizeDesc in sizesDesc)
        {
            if ([sizeDesc isKindOfClass:[Secret73_PhotoSize_photoSize class]])
            {
                Secret73_PhotoSize_photoSize *concreteSize = sizeDesc;
                NSString *urlLocation = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:urlLocation];
            }
            else if ([sizeDesc isKindOfClass:[Secret73_PhotoSize_photoCachedSize class]])
            {
                Secret73_PhotoSize_photoCachedSize *concreteSize = sizeDesc;
                
                NSString *url = extractFileUrl(concreteSize.location);
                
                [self addImageWithSize:CGSizeMake(concreteSize.w.intValue, concreteSize.h.intValue) url:url];
                
                if (concreteSize.bytes.length != 0)
                {
                    NSData *imageData = concreteSize.bytes;
                    if (cachedData != NULL)
                        *cachedData = imageData;
                    else
                    {
                        if (url != nil)
                        {
                            [[TGRemoteImageView sharedCache] diskCacheContains:url orUrl:nil completion:^(bool containsFirst, __unused bool containsSecond)
                             {
                                 if (!containsFirst)
                                 {
                                     if (TGEnableBlur() && cpuCoreCount() > 1)
                                     {
                                         NSData *data = nil;
                                         TGScaleAndBlurImage(imageData, CGSizeZero, &data);
                                         if (data != nil)
                                             [[TGRemoteImageView sharedCache] cacheImage:nil withData:data url:url availability:TGCacheDisk];
                                         else
                                             [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                     }
                                     else
                                         [[TGRemoteImageView sharedCache] cacheImage:nil withData:imageData url:url availability:TGCacheDisk];
                                 }
                             }];
                        }
                    }
                }
            }
        }
    }
    return self;
}


@end
