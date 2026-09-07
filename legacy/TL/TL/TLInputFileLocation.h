#import <Foundation/Foundation.h>

#import "TLObject.h"
#import "TLMetaRpc.h"

@class TLInputPeer;


@interface TLInputFileLocation : NSObject <TLObject>


@end

@interface TLInputFileLocation$inputFileLocation : TLInputFileLocation

@property (nonatomic) int64_t volume_id;
@property (nonatomic) int32_t local_id;
@property (nonatomic) int64_t secret;
@property (nonatomic, strong) NSData *file_reference;

@end

@interface TLInputFileLocation$inputEncryptedFileLocation : TLInputFileLocation

@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;

@end

@interface TLInputFileLocation$inputDocumentFileLocation : TLInputFileLocation

@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
/// Пустая строка — сам документ, иначе тип превью (схема 228).
@property (nonatomic, strong) NSString *thumb_size;

@end

@interface TLInputFileLocation$inputSecureFileLocation : TLInputFileLocation

@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;

@end


/// layer 228: фотографии пиров больше не описываются fileLocation, вместо него
/// сервер ждёт ссылку на пир и идентификатор фото.
@interface TLInputFileLocation$inputPeerPhotoFileLocation : TLInputFileLocation

@property (nonatomic) bool big;
@property (nonatomic, retain) TLInputPeer *peer;
@property (nonatomic) int64_t photo_id;

@end

/// layer 228: фотографии адресуются идентификатором и типом размера.
@interface TLInputFileLocation$inputPhotoFileLocation : TLInputFileLocation

@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, retain) NSData *file_reference;
@property (nonatomic, retain) NSString *thumb_size;

@end
