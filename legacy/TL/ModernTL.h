// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
// Схема: scheme_228.tl (восстановлена из клиента Telegram, layer 228)
#import <Foundation/Foundation.h>
#import "TLObject.h"

/// Общий предок сгенерированных типов.
///
/// Код 2018 года местами спрашивает у ответа поля, которых в схеме 228 уже нет
/// (типы ответов у части методов сменились целиком). Раньше это валило
/// приложение через unrecognized selector; теперь такой вызов возвращает пустое
/// значение и попадает в лог — приложением можно пользоваться, а список мест
/// для точечной починки виден.
@interface ModernTLObject : NSObject
@end

@interface ModernTL_accountDaysTTL : ModernTLObject <TLObject>
@property (nonatomic) int32_t days;
@end

@interface ModernTL_aiComposeTone : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int64_t emoji_id;
@property (nonatomic, strong) NSString *prompt;
@property (nonatomic) int32_t installs_count;
@property (nonatomic) int64_t author_id;
@property (nonatomic, strong) id<TLObject> example_english;
@end

@interface ModernTL_aiComposeToneDefault : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *tone;
@property (nonatomic) int64_t emoji_id;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_aiComposeToneExample : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> from;
@property (nonatomic, strong) id<TLObject> to;
@end

@interface ModernTL_attachMenuBot : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) NSString *short_name;
@property (nonatomic, strong) NSArray *peer_types;
@property (nonatomic, strong) NSArray *icons;
@end

@interface ModernTL_attachMenuBotIcon : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id<TLObject> icon;
@property (nonatomic, strong) NSArray *colors;
@end

@interface ModernTL_attachMenuBotIconColor : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *name;
@property (nonatomic) int32_t color;
@end

@interface ModernTL_attachMenuBots : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *bots;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_attachMenuBotsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_attachMenuBotsBot : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> bot;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_attachMenuPeerTypeBotPM : ModernTLObject <TLObject>
@end

@interface ModernTL_attachMenuPeerTypeBroadcast : ModernTLObject <TLObject>
@end

@interface ModernTL_attachMenuPeerTypeChat : ModernTLObject <TLObject>
@end

@interface ModernTL_attachMenuPeerTypePM : ModernTLObject <TLObject>
@end

@interface ModernTL_attachMenuPeerTypeSameBotPM : ModernTLObject <TLObject>
@end

@interface ModernTL_auctionBidLevel : ModernTLObject <TLObject>
@property (nonatomic) int32_t pos;
@property (nonatomic) int64_t amount;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_authorization : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSString *device_model;
@property (nonatomic, strong) NSString *platform;
@property (nonatomic, strong) NSString *system_version;
@property (nonatomic) int32_t api_id;
@property (nonatomic, strong) NSString *app_name;
@property (nonatomic, strong) NSString *app_version;
@property (nonatomic) int32_t date_created;
@property (nonatomic) int32_t date_active;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *region;
@end

@interface ModernTL_autoDownloadSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t photo_size_max;
@property (nonatomic) int64_t video_size_max;
@property (nonatomic) int64_t file_size_max;
@property (nonatomic) int32_t video_upload_maxbitrate;
@property (nonatomic) int32_t small_queue_active_operations_max;
@property (nonatomic) int32_t large_queue_active_operations_max;
@end

@interface ModernTL_autoSaveException : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> settings;
@end

@interface ModernTL_autoSaveSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t video_max_size;
@end

@interface ModernTL_availableEffect : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic) int64_t static_icon_id;
@property (nonatomic) int64_t effect_sticker_id;
@property (nonatomic) int64_t effect_animation_id;
@end

@interface ModernTL_availableReaction : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *reaction;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> static_icon;
@property (nonatomic, strong) id<TLObject> appear_animation;
@property (nonatomic, strong) id<TLObject> select_animation;
@property (nonatomic, strong) id<TLObject> activate_animation;
@property (nonatomic, strong) id<TLObject> effect_animation;
@property (nonatomic, strong) id<TLObject> around_animation;
@property (nonatomic, strong) id<TLObject> center_icon;
@end

@interface ModernTL_bankCardOpenUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *name;
@end

@interface ModernTL_baseThemeArctic : ModernTLObject <TLObject>
@end

@interface ModernTL_baseThemeClassic : ModernTLObject <TLObject>
@end

@interface ModernTL_baseThemeDay : ModernTLObject <TLObject>
@end

@interface ModernTL_baseThemeNight : ModernTLObject <TLObject>
@end

@interface ModernTL_baseThemeTinted : ModernTLObject <TLObject>
@end

@interface ModernTL_birthday : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t day;
@property (nonatomic) int32_t month;
@property (nonatomic) int32_t year;
@end

@interface ModernTL_boost : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t giveaway_msg_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t expires;
@property (nonatomic, strong) NSString *used_gift_slug;
@property (nonatomic) int32_t multiplier;
@property (nonatomic) int64_t stars;
@end

@interface ModernTL_inputEncryptedChat : ModernTLObject <TLObject>
@property (nonatomic) int32_t chat_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputEncryptedFile : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputEncryptedFileBigUploaded : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t parts;
@property (nonatomic) int32_t key_fingerprint;
@end

@interface ModernTL_inputEncryptedFileEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputEncryptedFileUploaded : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t parts;
@property (nonatomic, strong) NSString *md5_checksum;
@property (nonatomic) int32_t key_fingerprint;
@end

@interface ModernTL_inputFile : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t parts;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *md5_checksum;
@end

@interface ModernTL_inputFileBig : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t parts;
@property (nonatomic, strong) NSString *name;
@end

@interface ModernTL_inputFileStoryDocument : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> n_id;
@end

@interface ModernTL_inputDocumentFileLocation : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
@property (nonatomic, strong) NSString *thumb_size;
@end

@interface ModernTL_inputEncryptedFileLocation : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputFileLocation : ModernTLObject <TLObject>
@property (nonatomic) int64_t volume_id;
@property (nonatomic) int32_t local_id;
@property (nonatomic) int64_t secret;
@property (nonatomic, strong) NSData *file_reference;
@end

@interface ModernTL_inputGroupCallStream : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic) int64_t time_ms;
@property (nonatomic) int32_t scale;
@property (nonatomic) int32_t video_channel;
@property (nonatomic) int32_t video_quality;
@end

@interface ModernTL_inputPeerPhotoFileLocation : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t photo_id;
@end

@interface ModernTL_inputPhotoFileLocation : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
@property (nonatomic, strong) NSString *thumb_size;
@end

@interface ModernTL_inputPhotoLegacyFileLocation : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
@property (nonatomic) int64_t volume_id;
@property (nonatomic) int32_t local_id;
@property (nonatomic) int64_t secret;
@end

@interface ModernTL_inputSecureFileLocation : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputStickerSetThumb : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> stickerset;
@property (nonatomic) int32_t thumb_version;
@end

@interface ModernTL_inputTakeoutFileLocation : ModernTLObject <TLObject>
@end

@interface ModernTL_inputFolderPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t folder_id;
@end

@interface ModernTL_inputGameID : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputGameShortName : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> bot_id;
@property (nonatomic, strong) NSString *short_name;
@end

@interface ModernTL_inputGeoPoint : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) double lat;
@property (nonatomic) double n_long;
@property (nonatomic) int32_t accuracy_radius;
@end

@interface ModernTL_inputGeoPointEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputGroupCall : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputGroupCallInviteMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t msg_id;
@end

@interface ModernTL_inputGroupCallSlug : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputInvoiceBusinessBotTransferStars : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> bot;
@property (nonatomic) int64_t stars;
@end

@interface ModernTL_inputInvoiceChatInviteSubscription : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_hash;
@end

@interface ModernTL_inputInvoiceMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@end

@interface ModernTL_inputInvoicePremiumAuthCode : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> purpose;
@end

@interface ModernTL_inputInvoicePremiumGiftCode : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> purpose;
@property (nonatomic, strong) id<TLObject> option;
@end

@interface ModernTL_inputInvoicePremiumGiftStars : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> user_id;
@property (nonatomic) int32_t months;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_inputInvoiceSlug : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputInvoiceStarGift : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t gift_id;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_inputInvoiceStarGiftAuctionBid : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t gift_id;
@property (nonatomic) int64_t bid_amount;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_inputInvoiceStarGiftDropOriginalDetails : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> stargift;
@end

@interface ModernTL_inputInvoiceStarGiftPrepaidUpgrade : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSString *n_hash;
@end

@interface ModernTL_inputInvoiceStarGiftResale : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic, strong) id<TLObject> to_id;
@end

@interface ModernTL_inputInvoiceStarGiftTransfer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> stargift;
@property (nonatomic, strong) id<TLObject> to_id;
@end

@interface ModernTL_inputInvoiceStarGiftUpgrade : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> stargift;
@end

@interface ModernTL_inputInvoiceStars : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> purpose;
@end

@interface ModernTL_inputMediaContact : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) NSString *vcard;
@end

@interface ModernTL_inputMediaDice : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@end

@interface ModernTL_inputMediaDocument : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> n_id;
@property (nonatomic, strong) id<TLObject> video_cover;
@property (nonatomic) int32_t video_timestamp;
@property (nonatomic) int32_t ttl_seconds;
@property (nonatomic, strong) NSString *query;
@end

@interface ModernTL_inputMediaDocumentExternal : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t ttl_seconds;
@property (nonatomic, strong) id<TLObject> video_cover;
@property (nonatomic) int32_t video_timestamp;
@end

@interface ModernTL_inputMediaEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMediaGame : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> n_id;
@end

@interface ModernTL_inputMediaGeoLive : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> geo_point;
@property (nonatomic) int32_t heading;
@property (nonatomic) int32_t period;
@property (nonatomic) int32_t proximity_notification_radius;
@end

@interface ModernTL_inputMediaGeoPoint : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo_point;
@end

@interface ModernTL_inputMediaInvoice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> invoice;
@property (nonatomic, strong) NSData *payload;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) id<TLObject> provider_data;
@property (nonatomic, strong) NSString *start_param;
@property (nonatomic, strong) id<TLObject> extended_media;
@end

@interface ModernTL_inputMediaPaidMedia : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars_amount;
@property (nonatomic, strong) NSArray *extended_media;
@property (nonatomic, strong) NSString *payload;
@end

@interface ModernTL_inputMediaPhoto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> n_id;
@property (nonatomic) int32_t ttl_seconds;
@property (nonatomic, strong) id<TLObject> video;
@end

@interface ModernTL_inputMediaPhotoExternal : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t ttl_seconds;
@end

@interface ModernTL_inputMediaPoll : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> poll;
@property (nonatomic, strong) NSArray *correct_answers;
@property (nonatomic, strong) id<TLObject> attached_media;
@property (nonatomic, strong) NSString *solution;
@property (nonatomic, strong) NSArray *solution_entities;
@property (nonatomic, strong) id<TLObject> solution_media;
@end

@interface ModernTL_inputMediaStakeDice : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *game_hash;
@property (nonatomic) int64_t ton_amount;
@property (nonatomic, strong) NSData *client_seed;
@end

@interface ModernTL_inputMediaStory : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_inputMediaTodo : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> todo;
@end

@interface ModernTL_inputMediaUploadedDocument : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> file;
@property (nonatomic, strong) id<TLObject> thumb;
@property (nonatomic, strong) NSString *mime_type;
@property (nonatomic, strong) NSArray *attributes;
@property (nonatomic, strong) NSArray *stickers;
@property (nonatomic, strong) id<TLObject> video_cover;
@property (nonatomic) int32_t video_timestamp;
@property (nonatomic) int32_t ttl_seconds;
@end

@interface ModernTL_inputMediaUploadedPhoto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> file;
@property (nonatomic, strong) NSArray *stickers;
@property (nonatomic) int32_t ttl_seconds;
@property (nonatomic, strong) id<TLObject> video;
@end

@interface ModernTL_inputMediaVenue : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo_point;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) NSString *venue_id;
@property (nonatomic, strong) NSString *venue_type;
@end

@interface ModernTL_inputMediaWebPage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_inputMessageCallbackQuery : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t query_id;
@end

@interface ModernTL_inputMessageID : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_inputMessagePinned : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessageReplyTo : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_inputMessageReadMetric : ModernTLObject <TLObject>
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t view_id;
@property (nonatomic) int32_t time_in_view_ms;
@property (nonatomic) int32_t active_time_in_view_ms;
@property (nonatomic) int32_t height_to_viewport_ratio_permille;
@property (nonatomic) int32_t seen_range_ratio_permille;
@end

@interface ModernTL_inputNotifyBroadcasts : ModernTLObject <TLObject>
@end

@interface ModernTL_inputNotifyChats : ModernTLObject <TLObject>
@end

@interface ModernTL_inputNotifyCommunity : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> community;
@end

@interface ModernTL_inputNotifyForumTopic : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_msg_id;
@end

@interface ModernTL_inputNotifyPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_inputNotifyUsers : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPasskeyCredentialFirebasePNV : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *pnv_token;
@end

@interface ModernTL_inputPasskeyCredentialPublicKey : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *raw_id;
@property (nonatomic, strong) id<TLObject> response;
@end

@interface ModernTL_inputPasskeyResponseLogin : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> client_data;
@property (nonatomic, strong) NSData *authenticator_data;
@property (nonatomic, strong) NSData *signature;
@property (nonatomic, strong) NSString *user_handle;
@end

@interface ModernTL_inputPasskeyResponseRegister : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> client_data;
@property (nonatomic, strong) NSData *attestation_data;
@end

@interface ModernTL_inputPaymentCredentials : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> data;
@end

@interface ModernTL_inputPaymentCredentialsApplePay : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> payment_data;
@end

@interface ModernTL_inputPaymentCredentialsGooglePay : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> payment_token;
@end

@interface ModernTL_inputPaymentCredentialsSaved : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSData *tmp_password;
@end

@interface ModernTL_inputPeerChannel : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputPeerChannelFromMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t channel_id;
@end

@interface ModernTL_inputPeerChat : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@end

@interface ModernTL_inputPeerEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPeerSelf : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPeerUser : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputPeerUserFromMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_inputPeerNotifySettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool show_previews;
@property (nonatomic) bool silent;
@property (nonatomic) int32_t mute_until;
@property (nonatomic, strong) id<TLObject> sound;
@property (nonatomic) bool stories_muted;
@property (nonatomic) bool stories_hide_sender;
@property (nonatomic, strong) id<TLObject> stories_sound;
@end

@interface ModernTL_inputPhoneCall : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputPhoto : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
@end

@interface ModernTL_inputPhotoEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyAbout : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyAddedByPhone : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyBirthday : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyChatInvite : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyForwards : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyNoPaidMessages : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyPhoneCall : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyPhoneNumber : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyPhoneP2P : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyProfilePhoto : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeySavedMusic : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyStarGiftsAutoSave : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyStatusTimestamp : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyKeyVoiceMessages : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueAllowAll : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueAllowBots : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueAllowChatParticipants : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_inputPrivacyValueAllowCloseFriends : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueAllowContacts : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueAllowPremium : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueAllowUsers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_inputPrivacyValueDisallowAll : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueDisallowBots : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueDisallowChatParticipants : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_inputPrivacyValueDisallowContacts : ModernTLObject <TLObject>
@end

@interface ModernTL_inputPrivacyValueDisallowUsers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_inputQuickReplyShortcut : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *shortcut;
@end

@interface ModernTL_inputQuickReplyShortcutId : ModernTLObject <TLObject>
@property (nonatomic) int32_t shortcut_id;
@end

@interface ModernTL_inputReplyToEphemeralMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_inputReplyToMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t reply_to_msg_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic, strong) id<TLObject> reply_to_peer_id;
@property (nonatomic, strong) NSString *quote_text;
@property (nonatomic, strong) NSArray *quote_entities;
@property (nonatomic) int32_t quote_offset;
@property (nonatomic, strong) id<TLObject> monoforum_peer_id;
@property (nonatomic) int32_t todo_item_id;
@property (nonatomic, strong) NSData *poll_option;
@end

@interface ModernTL_inputReplyToMonoForum : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> monoforum_peer_id;
@end

@interface ModernTL_inputReplyToStory : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t story_id;
@end

@interface ModernTL_inputRichFileDocument : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) id<TLObject> document;
@end

@interface ModernTL_inputRichFilePhoto : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) id<TLObject> photo;
@end

@interface ModernTL_inputRichMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic, strong) NSArray *photos;
@property (nonatomic, strong) NSArray *documents;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_inputRichMessageHTML : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *html;
@property (nonatomic, strong) NSArray *files;
@end

@interface ModernTL_inputRichMessageMarkdown : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *markdown;
@property (nonatomic, strong) NSArray *files;
@end

@interface ModernTL_inputSavedStarGiftChat : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t saved_id;
@end

@interface ModernTL_inputSavedStarGiftSlug : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputSavedStarGiftUser : ModernTLObject <TLObject>
@property (nonatomic) int32_t msg_id;
@end

@interface ModernTL_inputSecureFile : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputSecureFileUploaded : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t parts;
@property (nonatomic, strong) NSString *md5_checksum;
@property (nonatomic, strong) NSData *file_hash;
@property (nonatomic, strong) NSData *secret;
@end

@interface ModernTL_inputSecureValue : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) id<TLObject> data;
@property (nonatomic, strong) id<TLObject> front_side;
@property (nonatomic, strong) id<TLObject> reverse_side;
@property (nonatomic, strong) id<TLObject> selfie;
@property (nonatomic, strong) NSArray *translation;
@property (nonatomic, strong) NSArray *files;
@property (nonatomic, strong) id<TLObject> plain_data;
@end

@interface ModernTL_inputSingleMedia : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic) int64_t random_id;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@end

@interface ModernTL_inputStarGiftAuction : ModernTLObject <TLObject>
@property (nonatomic) int64_t gift_id;
@end

@interface ModernTL_inputStarGiftAuctionSlug : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputStarsTransaction : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@end

@interface ModernTL_inputStickerSetAnimatedEmoji : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetAnimatedEmojiAnimations : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetDice : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@end

@interface ModernTL_inputStickerSetEmojiChannelDefaultStatuses : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetEmojiDefaultStatuses : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetEmojiDefaultTopicIcons : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetEmojiGenericAnimations : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetID : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputStickerSetPremiumGifts : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetShortName : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *short_name;
@end

@interface ModernTL_inputStickerSetTonGifts : ModernTLObject <TLObject>
@end

@interface ModernTL_inputStickerSetItem : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) NSString *emoji;
@property (nonatomic, strong) id<TLObject> mask_coords;
@property (nonatomic, strong) NSString *keywords;
@end

@interface ModernTL_inputStickeredMediaDocument : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> n_id;
@end

@interface ModernTL_inputStickeredMediaPhoto : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> n_id;
@end

@interface ModernTL_inputStorePaymentAuthCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *phone_code_hash;
@property (nonatomic) int32_t premium_days;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_inputStorePaymentGiftPremium : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> user_id;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_inputStorePaymentPremiumGiftCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) id<TLObject> boost_peer;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_inputStorePaymentPremiumGiveaway : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> boost_peer;
@property (nonatomic, strong) NSArray *additional_peers;
@property (nonatomic, strong) NSArray *countries_iso2;
@property (nonatomic, strong) NSString *prize_description;
@property (nonatomic) int64_t random_id;
@property (nonatomic) int32_t until_date;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_inputStorePaymentPremiumSubscription : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_inputStorePaymentStarsGift : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> user_id;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_inputStorePaymentStarsGiveaway : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) id<TLObject> boost_peer;
@property (nonatomic, strong) NSArray *additional_peers;
@property (nonatomic, strong) NSArray *countries_iso2;
@property (nonatomic, strong) NSString *prize_description;
@property (nonatomic) int64_t random_id;
@property (nonatomic) int32_t until_date;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic) int32_t users;
@end

@interface ModernTL_inputStorePaymentStarsTopup : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic, strong) id<TLObject> spend_purpose_peer;
@end

@interface ModernTL_inputTheme : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputThemeSlug : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputThemeSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> base_theme;
@property (nonatomic) int32_t accent_color;
@property (nonatomic) int32_t outbox_accent_color;
@property (nonatomic, strong) NSArray *message_colors;
@property (nonatomic, strong) id<TLObject> wallpaper;
@property (nonatomic, strong) id<TLObject> wallpaper_settings;
@end

@interface ModernTL_inputUser : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputUserEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputUserFromMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_inputUserSelf : ModernTLObject <TLObject>
@end

@interface ModernTL_inputWallPaper : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputWallPaperNoFile : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_inputWallPaperSlug : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputWebDocument : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t size;
@property (nonatomic, strong) NSString *mime_type;
@property (nonatomic, strong) NSArray *attributes;
@end

@interface ModernTL_inputWebFileAudioAlbumThumbLocation : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *performer;
@end

@interface ModernTL_inputWebFileGeoPointLocation : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo_point;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic) int32_t zoom;
@property (nonatomic) int32_t scale;
@end

@interface ModernTL_inputWebFileLocation : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_invoice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSArray *prices;
@property (nonatomic) int64_t max_tip_amount;
@property (nonatomic, strong) NSArray *suggested_tip_amounts;
@property (nonatomic, strong) NSString *terms_url;
@property (nonatomic) int32_t subscription_period;
@end

@interface ModernTL_jsonObjectValue : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) id<TLObject> value;
@end

@interface ModernTL_jsonArray : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *value;
@end

@interface ModernTL_jsonBool : ModernTLObject <TLObject>
@property (nonatomic) bool value;
@end

@interface ModernTL_jsonNull : ModernTLObject <TLObject>
@end

@interface ModernTL_jsonNumber : ModernTLObject <TLObject>
@property (nonatomic) double value;
@end

@interface ModernTL_jsonObject : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *value;
@end

@interface ModernTL_jsonString : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *value;
@end

@interface ModernTL_joinChatBotResultApproved : ModernTLObject <TLObject>
@end

@interface ModernTL_joinChatBotResultDeclined : ModernTLObject <TLObject>
@end

@interface ModernTL_joinChatBotResultQueued : ModernTLObject <TLObject>
@end

@interface ModernTL_joinChatBotResultWebView : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_inputKeyboardButtonRequestPeer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic) int32_t button_id;
@property (nonatomic, strong) id<TLObject> peer_type;
@property (nonatomic) int32_t max_quantity;
@end

@interface ModernTL_inputKeyboardButtonUrlAuth : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *fwd_text;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> bot;
@end

@interface ModernTL_inputKeyboardButtonUserProfile : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) id<TLObject> user_id;
@end

@interface ModernTL_keyboardButton : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_keyboardButtonBuy : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_keyboardButtonCallback : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSData *data;
@end

@interface ModernTL_keyboardButtonCopy : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *n_copy_text;
@end

@interface ModernTL_keyboardButtonGame : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_keyboardButtonRequestGeoLocation : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_keyboardButtonRequestPeer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic) int32_t button_id;
@property (nonatomic, strong) id<TLObject> peer_type;
@property (nonatomic) int32_t max_quantity;
@end

@interface ModernTL_keyboardButtonRequestPhone : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_keyboardButtonRequestPoll : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic) bool quiz;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_keyboardButtonSimpleWebView : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_keyboardButtonSwitchInline : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *query;
@property (nonatomic, strong) NSArray *peer_types;
@end

@interface ModernTL_keyboardButtonUrl : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_keyboardButtonUrlAuth : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *fwd_text;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t button_id;
@end

@interface ModernTL_keyboardButtonUserProfile : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_keyboardButtonWebView : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> style;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_keyboardButtonRow : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *buttons;
@end

@interface ModernTL_keyboardButtonStyle : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t icon;
@end

@interface ModernTL_labeledPrice : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *label;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_langPackDifference : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *lang_code;
@property (nonatomic) int32_t from_version;
@property (nonatomic) int32_t version;
@property (nonatomic, strong) NSArray *strings;
@end

@interface ModernTL_langPackLanguage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *native_name;
@property (nonatomic, strong) NSString *lang_code;
@property (nonatomic, strong) NSString *base_lang_code;
@property (nonatomic, strong) NSString *plural_code;
@property (nonatomic) int32_t strings_count;
@property (nonatomic) int32_t translated_count;
@property (nonatomic, strong) NSString *translations_url;
@end

@interface ModernTL_langPackString : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) NSString *value;
@end

@interface ModernTL_langPackStringDeleted : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *key;
@end

@interface ModernTL_langPackStringPluralized : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) NSString *zero_value;
@property (nonatomic, strong) NSString *one_value;
@property (nonatomic, strong) NSString *two_value;
@property (nonatomic, strong) NSString *few_value;
@property (nonatomic, strong) NSString *many_value;
@property (nonatomic, strong) NSString *other_value;
@end

@interface ModernTL_maskCoords : ModernTLObject <TLObject>
@property (nonatomic) int32_t n;
@property (nonatomic) double x;
@property (nonatomic) double y;
@property (nonatomic) double zoom;
@end

@interface ModernTL_inputMediaAreaChannelPost : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic, strong) id<TLObject> channel;
@property (nonatomic) int32_t msg_id;
@end

@interface ModernTL_inputMediaAreaVenue : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) NSString *result_id;
@end

@interface ModernTL_mediaAreaChannelPost : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t msg_id;
@end

@interface ModernTL_mediaAreaGeoPoint : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic, strong) id<TLObject> address;
@end

@interface ModernTL_mediaAreaStarGift : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_mediaAreaSuggestedReaction : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic, strong) id<TLObject> reaction;
@end

@interface ModernTL_mediaAreaUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_mediaAreaVenue : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) NSString *venue_id;
@property (nonatomic, strong) NSString *venue_type;
@end

@interface ModernTL_mediaAreaWeather : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> coordinates;
@property (nonatomic, strong) NSString *emoji;
@property (nonatomic) double temperature_c;
@property (nonatomic) int32_t color;
@end

@interface ModernTL_mediaAreaCoordinates : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) double x;
@property (nonatomic) double y;
@property (nonatomic) double w;
@property (nonatomic) double h;
@property (nonatomic) double rotation;
@property (nonatomic) double radius;
@end

@interface ModernTL_message : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t flags2;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic) int32_t from_boosts_applied;
@property (nonatomic, strong) NSString *from_rank;
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@property (nonatomic, strong) id<TLObject> fwd_from;
@property (nonatomic) int64_t via_bot_id;
@property (nonatomic) int64_t via_business_bot_id;
@property (nonatomic, strong) id<TLObject> guestchat_via_from;
@property (nonatomic, strong) id<TLObject> reply_to;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) id<TLObject> reply_markup;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic) int32_t views;
@property (nonatomic) int32_t forwards;
@property (nonatomic, strong) id<TLObject> replies;
@property (nonatomic) int32_t edit_date;
@property (nonatomic, strong) NSString *post_author;
@property (nonatomic) int64_t grouped_id;
@property (nonatomic, strong) id<TLObject> reactions;
@property (nonatomic, strong) NSArray *restriction_reason;
@property (nonatomic) int32_t ttl_period;
@property (nonatomic) int32_t quick_reply_shortcut_id;
@property (nonatomic) int64_t effect;
@property (nonatomic, strong) id<TLObject> factcheck;
@property (nonatomic) int32_t report_delivery_until_date;
@property (nonatomic) int64_t paid_message_stars;
@property (nonatomic, strong) id<TLObject> suggested_post;
@property (nonatomic) int32_t schedule_repeat_period;
@property (nonatomic, strong) NSString *summary_from_language;
@property (nonatomic, strong) id<TLObject> rich_message;
@end

@interface ModernTL_messageEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> peer_id;
@end

@interface ModernTL_messageService : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@property (nonatomic, strong) id<TLObject> reply_to;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> action;
@property (nonatomic, strong) id<TLObject> reactions;
@property (nonatomic) int32_t ttl_period;
@end

@interface ModernTL_messageActionBoostApply : ModernTLObject <TLObject>
@property (nonatomic) int32_t boosts;
@end

@interface ModernTL_messageActionBotAllowed : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *domain;
@property (nonatomic, strong) id<TLObject> app;
@end

@interface ModernTL_messageActionChangeCommunity : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t community_id;
@end

@interface ModernTL_messageActionChangeCreator : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_new_creator_id;
@end

@interface ModernTL_messageActionChannelCreate : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_messageActionChannelMigrateFrom : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int64_t chat_id;
@end

@interface ModernTL_messageActionChatAddUser : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messageActionChatCreate : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messageActionChatDeletePhoto : ModernTLObject <TLObject>
@end

@interface ModernTL_messageActionChatDeleteUser : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_messageActionChatEditPhoto : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> photo;
@end

@interface ModernTL_messageActionChatEditTitle : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_messageActionChatJoinedByLink : ModernTLObject <TLObject>
@property (nonatomic) int64_t inviter_id;
@end

@interface ModernTL_messageActionChatJoinedByRequest : ModernTLObject <TLObject>
@end

@interface ModernTL_messageActionChatMigrateTo : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@end

@interface ModernTL_messageActionConferenceCall : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t call_id;
@property (nonatomic) int32_t duration;
@property (nonatomic, strong) NSArray *other_participants;
@end

@interface ModernTL_messageActionContactSignUp : ModernTLObject <TLObject>
@end

@interface ModernTL_messageActionCustomAction : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *message;
@end

@interface ModernTL_messageActionEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_messageActionGameScore : ModernTLObject <TLObject>
@property (nonatomic) int64_t game_id;
@property (nonatomic) int32_t score;
@end

@interface ModernTL_messageActionGeoProximityReached : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> to_id;
@property (nonatomic) int32_t distance;
@end

@interface ModernTL_messageActionGiftCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> boost_peer;
@property (nonatomic) int32_t days;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic, strong) NSString *crypto_currency;
@property (nonatomic) int64_t crypto_amount;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_messageActionGiftPremium : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic) int32_t days;
@property (nonatomic, strong) NSString *crypto_currency;
@property (nonatomic) int64_t crypto_amount;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_messageActionGiftStars : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) NSString *crypto_currency;
@property (nonatomic) int64_t crypto_amount;
@property (nonatomic, strong) NSString *transaction_id;
@end

@interface ModernTL_messageActionGiftTon : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic, strong) NSString *crypto_currency;
@property (nonatomic) int64_t crypto_amount;
@property (nonatomic, strong) NSString *transaction_id;
@end

@interface ModernTL_messageActionGiveawayLaunch : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@end

@interface ModernTL_messageActionGiveawayResults : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t winners_count;
@property (nonatomic) int32_t unclaimed_count;
@end

@interface ModernTL_messageActionGroupCall : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic) int32_t duration;
@end

@interface ModernTL_messageActionGroupCallScheduled : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic) int32_t schedule_date;
@end

@interface ModernTL_messageActionHistoryClear : ModernTLObject <TLObject>
@end

@interface ModernTL_messageActionInviteToGroupCall : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messageActionManagedBotCreated : ModernTLObject <TLObject>
@property (nonatomic) int64_t bot_id;
@end

@interface ModernTL_messageActionNewCreatorPending : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_new_creator_id;
@end

@interface ModernTL_messageActionNoForwardsRequest : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool prev_value;
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_messageActionNoForwardsToggle : ModernTLObject <TLObject>
@property (nonatomic) bool prev_value;
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_messageActionPaidMessagesPrice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@end

@interface ModernTL_messageActionPaidMessagesRefunded : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic) int64_t stars;
@end

@interface ModernTL_messageActionPaymentRefunded : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@property (nonatomic, strong) NSData *payload;
@property (nonatomic, strong) id<TLObject> charge;
@end

@interface ModernTL_messageActionPaymentSent : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@property (nonatomic, strong) NSString *invoice_slug;
@property (nonatomic) int32_t subscription_until_date;
@end

@interface ModernTL_messageActionPaymentSentMe : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@property (nonatomic, strong) NSData *payload;
@property (nonatomic, strong) id<TLObject> info;
@property (nonatomic, strong) NSString *shipping_option_id;
@property (nonatomic, strong) id<TLObject> charge;
@property (nonatomic) int32_t subscription_until_date;
@end

@interface ModernTL_messageActionPhoneCall : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t call_id;
@property (nonatomic, strong) id<TLObject> reason;
@property (nonatomic) int32_t duration;
@end

@interface ModernTL_messageActionPinMessage : ModernTLObject <TLObject>
@end

@interface ModernTL_messageActionPollAppendAnswer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> answer;
@end

@interface ModernTL_messageActionPollDeleteAnswer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> answer;
@end

@interface ModernTL_messageActionPrizeStars : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) NSString *transaction_id;
@property (nonatomic, strong) id<TLObject> boost_peer;
@property (nonatomic) int32_t giveaway_msg_id;
@end

@interface ModernTL_messageActionRequestedPeer : ModernTLObject <TLObject>
@property (nonatomic) int32_t button_id;
@property (nonatomic, strong) NSArray *peers;
@end

@interface ModernTL_messageActionRequestedPeerSentMe : ModernTLObject <TLObject>
@property (nonatomic) int32_t button_id;
@property (nonatomic, strong) NSArray *peers;
@end

@interface ModernTL_messageActionScreenshotTaken : ModernTLObject <TLObject>
@end

@interface ModernTL_messageActionSecureValuesSent : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *types;
@end

@interface ModernTL_messageActionSecureValuesSentMe : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *values;
@property (nonatomic, strong) id<TLObject> credentials;
@end

@interface ModernTL_messageActionSetChatTheme : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> theme;
@end

@interface ModernTL_messageActionSetChatWallPaper : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> wallpaper;
@end

@interface ModernTL_messageActionSetMessagesTTL : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t period;
@property (nonatomic) int64_t auto_setting_from;
@end

@interface ModernTL_messageActionStarGift : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int64_t convert_stars;
@property (nonatomic) int32_t upgrade_msg_id;
@property (nonatomic) int64_t upgrade_stars;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t saved_id;
@property (nonatomic, strong) NSString *prepaid_upgrade_hash;
@property (nonatomic) int32_t gift_msg_id;
@property (nonatomic, strong) id<TLObject> to_id;
@property (nonatomic) int32_t gift_num;
@end

@interface ModernTL_messageActionStarGiftPurchaseOffer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) id<TLObject> price;
@property (nonatomic) int32_t expires_at;
@end

@interface ModernTL_messageActionStarGiftPurchaseOfferDeclined : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) id<TLObject> price;
@end

@interface ModernTL_messageActionStarGiftUnique : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic) int32_t can_export_at;
@property (nonatomic) int64_t transfer_stars;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t saved_id;
@property (nonatomic, strong) id<TLObject> resale_amount;
@property (nonatomic) int32_t can_transfer_at;
@property (nonatomic) int32_t can_resell_at;
@property (nonatomic) int64_t drop_original_details_stars;
@property (nonatomic) int32_t can_craft_at;
@end

@interface ModernTL_messageActionSuggestBirthday : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> birthday;
@end

@interface ModernTL_messageActionSuggestProfilePhoto : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> photo;
@end

@interface ModernTL_messageActionSuggestedPostApproval : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *reject_comment;
@property (nonatomic) int32_t schedule_date;
@property (nonatomic, strong) id<TLObject> price;
@end

@interface ModernTL_messageActionSuggestedPostRefund : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_messageActionSuggestedPostSuccess : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> price;
@end

@interface ModernTL_messageActionTodoAppendTasks : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *list;
@end

@interface ModernTL_messageActionTodoCompletions : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *completed;
@property (nonatomic, strong) NSArray *incompleted;
@end

@interface ModernTL_messageActionTopicCreate : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int32_t icon_color;
@property (nonatomic) int64_t icon_emoji_id;
@end

@interface ModernTL_messageActionTopicEdit : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int64_t icon_emoji_id;
@property (nonatomic) bool closed;
@property (nonatomic) bool hidden;
@end

@interface ModernTL_messageActionWebViewDataSent : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_messageActionWebViewDataSentMe : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *data;
@end

@interface ModernTL_inputMessageEntityMentionName : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@property (nonatomic, strong) id<TLObject> user_id;
@end

@interface ModernTL_messageEntityBankCard : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityBlockquote : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityBold : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityBotCommand : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityCashtag : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityCustomEmoji : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@property (nonatomic) int64_t document_id;
@end

@interface ModernTL_messageEntityDiffDelete : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityDiffInsert : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityDiffReplace : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@property (nonatomic, strong) NSString *old_text;
@end

@interface ModernTL_messageEntityEmail : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityFormattedDate : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_messageEntityHashtag : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityItalic : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityMention : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityMentionName : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_messageEntityPhone : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityPre : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@property (nonatomic, strong) NSString *language;
@end

@interface ModernTL_messageEntitySpoiler : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityStrike : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityTextUrl : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_messageEntityUnderline : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityUnknown : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageEntityUrl : ModernTLObject <TLObject>
@property (nonatomic) int32_t offset;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_messageExtendedMedia : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> media;
@end

@interface ModernTL_messageExtendedMediaPreview : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, strong) id<TLObject> thumb;
@property (nonatomic) int32_t video_duration;
@end

@interface ModernTL_messageFwdHeader : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) NSString *from_name;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t channel_post;
@property (nonatomic, strong) NSString *post_author;
@property (nonatomic, strong) id<TLObject> saved_from_peer;
@property (nonatomic) int32_t saved_from_msg_id;
@property (nonatomic, strong) id<TLObject> saved_from_id;
@property (nonatomic, strong) NSString *saved_from_name;
@property (nonatomic) int32_t saved_date;
@property (nonatomic, strong) NSString *psa_type;
@end

@interface ModernTL_messageMediaContact : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) NSString *vcard;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_messageMediaDice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t value;
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic, strong) id<TLObject> game_outcome;
@end

@interface ModernTL_messageMediaDocument : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) NSArray *alt_documents;
@property (nonatomic, strong) id<TLObject> video_cover;
@property (nonatomic) int32_t video_timestamp;
@property (nonatomic) int32_t ttl_seconds;
@end

@interface ModernTL_messageMediaEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_messageMediaGame : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> game;
@end

@interface ModernTL_messageMediaGeo : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo;
@end

@interface ModernTL_messageMediaGeoLive : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic) int32_t heading;
@property (nonatomic) int32_t period;
@property (nonatomic) int32_t proximity_notification_radius;
@end

@interface ModernTL_messageMediaGiveaway : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *channels;
@property (nonatomic, strong) NSArray *countries_iso2;
@property (nonatomic, strong) NSString *prize_description;
@property (nonatomic) int32_t quantity;
@property (nonatomic) int32_t months;
@property (nonatomic) int64_t stars;
@property (nonatomic) int32_t until_date;
@end

@interface ModernTL_messageMediaGiveawayResults : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t additional_peers_count;
@property (nonatomic) int32_t launch_msg_id;
@property (nonatomic) int32_t winners_count;
@property (nonatomic) int32_t unclaimed_count;
@property (nonatomic, strong) NSArray *winners;
@property (nonatomic) int32_t months;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) NSString *prize_description;
@property (nonatomic) int32_t until_date;
@end

@interface ModernTL_messageMediaInvoice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic) int32_t receipt_msg_id;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@property (nonatomic, strong) NSString *start_param;
@property (nonatomic, strong) id<TLObject> extended_media;
@end

@interface ModernTL_messageMediaPaidMedia : ModernTLObject <TLObject>
@property (nonatomic) int64_t stars_amount;
@property (nonatomic, strong) NSArray *extended_media;
@end

@interface ModernTL_messageMediaPhoto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic) int32_t ttl_seconds;
@property (nonatomic, strong) id<TLObject> video;
@end

@interface ModernTL_messageMediaPoll : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> poll;
@property (nonatomic, strong) id<TLObject> results;
@property (nonatomic, strong) id<TLObject> attached_media;
@end

@interface ModernTL_messageMediaStory : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> story;
@end

@interface ModernTL_messageMediaToDo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> todo;
@property (nonatomic, strong) NSArray *completions;
@end

@interface ModernTL_messageMediaUnsupported : ModernTLObject <TLObject>
@end

@interface ModernTL_messageMediaVenue : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) NSString *venue_id;
@property (nonatomic, strong) NSString *venue_type;
@end

@interface ModernTL_messageMediaVideoStream : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> call;
@end

@interface ModernTL_messageMediaWebPage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> webpage;
@end

@interface ModernTL_messagePeerReaction : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> reaction;
@end

@interface ModernTL_messagePeerVote : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSData *option;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_messagePeerVoteInputOption : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_messagePeerVoteMultiple : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *options;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_messageRange : ModernTLObject <TLObject>
@property (nonatomic) int32_t min_id;
@property (nonatomic) int32_t max_id;
@end

@interface ModernTL_messageReactions : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *results;
@property (nonatomic, strong) NSArray *recent_reactions;
@property (nonatomic, strong) NSArray *top_reactors;
@end

@interface ModernTL_messageReactor : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic) int32_t count;
@end

@interface ModernTL_messageReplies : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t replies;
@property (nonatomic) int32_t replies_pts;
@property (nonatomic, strong) NSArray *recent_repliers;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t max_id;
@property (nonatomic) int32_t read_max_id;
@end

@interface ModernTL_messageReplyHeader : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t reply_to_msg_id;
@property (nonatomic, strong) id<TLObject> reply_to_peer_id;
@property (nonatomic, strong) id<TLObject> reply_from;
@property (nonatomic, strong) id<TLObject> reply_media;
@property (nonatomic) int32_t reply_to_top_id;
@property (nonatomic, strong) NSString *quote_text;
@property (nonatomic, strong) NSArray *quote_entities;
@property (nonatomic) int32_t quote_offset;
@property (nonatomic) int32_t todo_item_id;
@property (nonatomic, strong) NSData *poll_option;
@end

@interface ModernTL_messageReplyStoryHeader : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t story_id;
@end

@interface ModernTL_messageReportOption : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSData *option;
@end

@interface ModernTL_messageViews : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t views;
@property (nonatomic) int32_t forwards;
@property (nonatomic, strong) id<TLObject> replies;
@end

@interface ModernTL_inputMessagesFilterChatPhotos : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterContacts : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterDocument : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterGeo : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterGif : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterMusic : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterMyMentions : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterPhoneCalls : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_inputMessagesFilterPhotoVideo : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterPhotos : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterPinned : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterPoll : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterRoundVideo : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterRoundVoice : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterUrl : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterVideo : ModernTLObject <TLObject>
@end

@interface ModernTL_inputMessagesFilterVoice : ModernTLObject <TLObject>
@end

@interface ModernTL_missingInvitee : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_myBoost : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t slot;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t expires;
@property (nonatomic) int32_t cooldown_until_date;
@end

@interface ModernTL_nearestDc : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *country;
@property (nonatomic) int32_t this_dc;
@property (nonatomic) int32_t nearest_dc;
@end

@interface ModernTL_notificationSoundDefault : ModernTLObject <TLObject>
@end

@interface ModernTL_notificationSoundLocal : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *data;
@end

@interface ModernTL_notificationSoundNone : ModernTLObject <TLObject>
@end

@interface ModernTL_notificationSoundRingtone : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_notifyBroadcasts : ModernTLObject <TLObject>
@end

@interface ModernTL_notifyChats : ModernTLObject <TLObject>
@end

@interface ModernTL_notifyCommunity : ModernTLObject <TLObject>
@property (nonatomic) int64_t community_id;
@end

@interface ModernTL_notifyForumTopic : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_msg_id;
@end

@interface ModernTL_notifyPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_notifyUsers : ModernTLObject <TLObject>
@end

@interface ModernTL_outboxReadDate : ModernTLObject <TLObject>
@property (nonatomic) int32_t date;
@end

@interface ModernTL_page : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic, strong) NSArray *photos;
@property (nonatomic, strong) NSArray *documents;
@property (nonatomic) int32_t views;
@end

@interface ModernTL_inputPageBlockMap : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic) int32_t zoom;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockAnchor : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *name;
@end

@interface ModernTL_pageBlockAudio : ModernTLObject <TLObject>
@property (nonatomic) int64_t audio_id;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockAuthorDate : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> author;
@property (nonatomic) int32_t published_date;
@end

@interface ModernTL_pageBlockBlockquote : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockBlockquoteBlocks : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockChannel : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> channel;
@end

@interface ModernTL_pageBlockCollage : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockCover : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> cover;
@end

@interface ModernTL_pageBlockDetails : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic, strong) id<TLObject> title;
@end

@interface ModernTL_pageBlockDivider : ModernTLObject <TLObject>
@end

@interface ModernTL_pageBlockEmbed : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *html;
@property (nonatomic) int64_t poster_photo_id;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockEmbedPost : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t webpage_id;
@property (nonatomic) int64_t author_photo_id;
@property (nonatomic, strong) NSString *author;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockFooter : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockHeader : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockHeading1 : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockHeading2 : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockHeading3 : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockHeading4 : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockHeading5 : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockHeading6 : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockKicker : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockList : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *items;
@end

@interface ModernTL_pageBlockMap : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic) int32_t zoom;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockMath : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *source;
@end

@interface ModernTL_pageBlockOrderedList : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *items;
@property (nonatomic) int32_t start;
@property (nonatomic, strong) NSString *type;
@end

@interface ModernTL_pageBlockParagraph : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockPhoto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t photo_id;
@property (nonatomic, strong) id<TLObject> caption;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t webpage_id;
@end

@interface ModernTL_pageBlockPreformatted : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) NSString *language;
@end

@interface ModernTL_pageBlockPullquote : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockRelatedArticles : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> title;
@property (nonatomic, strong) NSArray *articles;
@end

@interface ModernTL_pageBlockSlideshow : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_pageBlockSubheader : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockSubtitle : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockTable : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> title;
@property (nonatomic, strong) NSArray *rows;
@end

@interface ModernTL_pageBlockThinking : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockTitle : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageBlockUnsupported : ModernTLObject <TLObject>
@end

@interface ModernTL_pageBlockVideo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t video_id;
@property (nonatomic, strong) id<TLObject> caption;
@end

@interface ModernTL_botApp : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *short_name;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic) int64_t n_hash;
@end

@interface ModernTL_botAppNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_botAppSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSData *placeholder_path;
@property (nonatomic) int32_t background_color;
@property (nonatomic) int32_t background_dark_color;
@property (nonatomic) int32_t header_color;
@property (nonatomic) int32_t header_dark_color;
@end

@interface ModernTL_botBusinessConnection : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *connection_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t dc_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> rights;
@end

@interface ModernTL_botCommand : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *command;
@property (nonatomic, strong) NSString *n_description;
@end

@interface ModernTL_botCommandScopeChatAdmins : ModernTLObject <TLObject>
@end

@interface ModernTL_botCommandScopeChats : ModernTLObject <TLObject>
@end

@interface ModernTL_botCommandScopeDefault : ModernTLObject <TLObject>
@end

@interface ModernTL_botCommandScopePeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_botCommandScopePeerAdmins : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_botCommandScopePeerUser : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> user_id;
@end

@interface ModernTL_botCommandScopeUsers : ModernTLObject <TLObject>
@end

@interface ModernTL_botInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> description_photo;
@property (nonatomic, strong) id<TLObject> description_document;
@property (nonatomic, strong) NSArray *commands;
@property (nonatomic, strong) id<TLObject> menu_button;
@property (nonatomic, strong) NSString *privacy_policy_url;
@property (nonatomic, strong) id<TLObject> app_settings;
@property (nonatomic, strong) id<TLObject> verifier_settings;
@end

@interface ModernTL_botInlineMessageMediaAuto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_botInlineMessageMediaContact : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) NSString *vcard;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_botInlineMessageMediaGeo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic) int32_t heading;
@property (nonatomic) int32_t period;
@property (nonatomic) int32_t proximity_notification_radius;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_botInlineMessageMediaInvoice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_botInlineMessageMediaVenue : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) NSString *venue_id;
@property (nonatomic, strong) NSString *venue_type;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_botInlineMessageMediaWebPage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_botInlineMessageRichMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> reply_markup;
@property (nonatomic, strong) id<TLObject> rich_message;
@end

@interface ModernTL_botInlineMessageText : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_botInlineMediaResult : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> send_message;
@end

@interface ModernTL_botInlineResult : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> thumb;
@property (nonatomic, strong) id<TLObject> content;
@property (nonatomic, strong) id<TLObject> send_message;
@end

@interface ModernTL_botMenuButton : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_botMenuButtonCommands : ModernTLObject <TLObject>
@end

@interface ModernTL_botMenuButtonDefault : ModernTLObject <TLObject>
@end

@interface ModernTL_botPreviewMedia : ModernTLObject <TLObject>
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> media;
@end

@interface ModernTL_botVerification : ModernTLObject <TLObject>
@property (nonatomic) int64_t bot_id;
@property (nonatomic) int64_t icon;
@property (nonatomic, strong) NSString *n_description;
@end

@interface ModernTL_botVerifierSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t icon;
@property (nonatomic, strong) NSString *company;
@property (nonatomic, strong) NSString *custom_description;
@end

@interface ModernTL_businessAwayMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t shortcut_id;
@property (nonatomic, strong) id<TLObject> schedule;
@property (nonatomic, strong) id<TLObject> recipients;
@end

@interface ModernTL_businessAwayMessageScheduleAlways : ModernTLObject <TLObject>
@end

@interface ModernTL_businessAwayMessageScheduleCustom : ModernTLObject <TLObject>
@property (nonatomic) int32_t start_date;
@property (nonatomic) int32_t end_date;
@end

@interface ModernTL_businessAwayMessageScheduleOutsideWorkHours : ModernTLObject <TLObject>
@end

@interface ModernTL_pageCaption : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) id<TLObject> credit;
@end

@interface ModernTL_pageListItemBlocks : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *blocks;
@end

@interface ModernTL_pageListItemText : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_pageListOrderedItemBlocks : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *num;
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic) int32_t value;
@property (nonatomic, strong) NSString *type;
@end

@interface ModernTL_pageListOrderedItemText : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *num;
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic) int32_t value;
@property (nonatomic, strong) NSString *type;
@end

@interface ModernTL_pageRelatedArticle : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t webpage_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic) int64_t photo_id;
@property (nonatomic, strong) NSString *author;
@property (nonatomic) int32_t published_date;
@end

@interface ModernTL_pageTableCell : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic) int32_t colspan;
@property (nonatomic) int32_t rowspan;
@end

@interface ModernTL_pageTableRow : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *cells;
@end

@interface ModernTL_paidReactionPrivacyAnonymous : ModernTLObject <TLObject>
@end

@interface ModernTL_paidReactionPrivacyDefault : ModernTLObject <TLObject>
@end

@interface ModernTL_paidReactionPrivacyPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_passkey : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t software_emoji_id;
@property (nonatomic) int32_t last_usage_date;
@end

@interface ModernTL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *salt1;
@property (nonatomic, strong) NSData *salt2;
@property (nonatomic) int32_t g;
@property (nonatomic, strong) NSData *p;
@end

@interface ModernTL_passwordKdfAlgoUnknown : ModernTLObject <TLObject>
@end

@interface ModernTL_paymentCharge : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *provider_charge_id;
@end

@interface ModernTL_paymentFormMethod : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_paymentRequestedInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) id<TLObject> shipping_address;
@end

@interface ModernTL_paymentSavedCredentialsCard : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_peerChannel : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@end

@interface ModernTL_peerChat : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@end

@interface ModernTL_peerUser : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_peerBlocked : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_inputPeerColorCollectible : ModernTLObject <TLObject>
@property (nonatomic) int64_t collectible_id;
@end

@interface ModernTL_peerColor : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t color;
@property (nonatomic) int64_t background_emoji_id;
@end

@interface ModernTL_peerColorCollectible : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t collectible_id;
@property (nonatomic) int64_t gift_emoji_id;
@property (nonatomic) int64_t background_emoji_id;
@property (nonatomic) int32_t accent_color;
@property (nonatomic, strong) NSArray *colors;
@property (nonatomic) int32_t dark_accent_color;
@property (nonatomic, strong) NSArray *dark_colors;
@end

@interface ModernTL_peerLocated : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t expires;
@property (nonatomic) int32_t distance;
@end

@interface ModernTL_peerSelfLocated : ModernTLObject <TLObject>
@property (nonatomic) int32_t expires;
@end

@interface ModernTL_peerNotifySettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool show_previews;
@property (nonatomic) bool silent;
@property (nonatomic) int32_t mute_until;
@property (nonatomic, strong) id<TLObject> ios_sound;
@property (nonatomic, strong) id<TLObject> android_sound;
@property (nonatomic, strong) id<TLObject> other_sound;
@property (nonatomic) bool stories_muted;
@property (nonatomic) bool stories_hide_sender;
@property (nonatomic, strong) id<TLObject> stories_ios_sound;
@property (nonatomic, strong) id<TLObject> stories_android_sound;
@property (nonatomic, strong) id<TLObject> stories_other_sound;
@end

@interface ModernTL_peerSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t geo_distance;
@property (nonatomic, strong) NSString *request_chat_title;
@property (nonatomic) int32_t request_chat_date;
@property (nonatomic) int64_t business_bot_id;
@property (nonatomic, strong) NSString *business_bot_manage_url;
@property (nonatomic) int64_t charge_paid_message_stars;
@property (nonatomic, strong) NSString *registration_month;
@property (nonatomic, strong) NSString *phone_country;
@property (nonatomic) int32_t name_change_date;
@property (nonatomic) int32_t photo_change_date;
@end

@interface ModernTL_peerStories : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t max_read_id;
@property (nonatomic, strong) NSArray *stories;
@end

@interface ModernTL_pendingSuggestion : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *suggestion;
@property (nonatomic, strong) id<TLObject> title;
@property (nonatomic, strong) id<TLObject> n_description;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_personalChannel : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t channel_id;
@end

@interface ModernTL_phoneCall : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int64_t participant_id;
@property (nonatomic, strong) NSData *g_a_or_b;
@property (nonatomic) int64_t key_fingerprint;
@property (nonatomic, strong) id<TLObject> protocol;
@property (nonatomic, strong) NSArray *connections;
@property (nonatomic) int32_t start_date;
@property (nonatomic, strong) id<TLObject> custom_parameters;
@end

@interface ModernTL_phoneCallAccepted : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int64_t participant_id;
@property (nonatomic, strong) NSData *g_b;
@property (nonatomic, strong) id<TLObject> protocol;
@end

@interface ModernTL_phoneCallDiscarded : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) id<TLObject> reason;
@property (nonatomic) int32_t duration;
@end

@interface ModernTL_phoneCallEmpty : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_phoneCallRequested : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int64_t participant_id;
@property (nonatomic, strong) NSData *g_a_hash;
@property (nonatomic, strong) id<TLObject> protocol;
@end

@interface ModernTL_phoneCallWaiting : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int64_t participant_id;
@property (nonatomic, strong) id<TLObject> protocol;
@property (nonatomic) int32_t receive_date;
@end

@interface ModernTL_phoneCallDiscardReasonBusy : ModernTLObject <TLObject>
@end

@interface ModernTL_phoneCallDiscardReasonDisconnect : ModernTLObject <TLObject>
@end

@interface ModernTL_phoneCallDiscardReasonHangup : ModernTLObject <TLObject>
@end

@interface ModernTL_phoneCallDiscardReasonMigrateConferenceCall : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_phoneCallDiscardReasonMissed : ModernTLObject <TLObject>
@end

@interface ModernTL_phoneCallProtocol : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t min_layer;
@property (nonatomic) int32_t max_layer;
@property (nonatomic, strong) NSArray *library_versions;
@end

@interface ModernTL_phoneConnection : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *ipv6;
@property (nonatomic) int32_t port;
@property (nonatomic, strong) NSData *peer_tag;
@end

@interface ModernTL_phoneConnectionWebrtc : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *ipv6;
@property (nonatomic) int32_t port;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@end

@interface ModernTL_photo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSArray *sizes;
@property (nonatomic, strong) NSArray *video_sizes;
@property (nonatomic) int32_t dc_id;
@end

@interface ModernTL_photoEmpty : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_photoCachedSize : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *type;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_photoPathSize : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_photoSize : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *type;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic) int32_t size;
@end

@interface ModernTL_photoSizeEmpty : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *type;
@end

@interface ModernTL_photoSizeProgressive : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *type;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic, strong) NSArray *sizes;
@end

@interface ModernTL_photoStrippedSize : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_poll : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> question;
@property (nonatomic, strong) NSArray *answers;
@property (nonatomic) int32_t close_period;
@property (nonatomic) int32_t close_date;
@property (nonatomic, strong) NSArray *countries_iso2;
@property (nonatomic) int64_t n_hash;
@end

@interface ModernTL_inputPollAnswer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) id<TLObject> media;
@end

@interface ModernTL_pollAnswer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) NSData *option;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) id<TLObject> added_by;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_pollAnswerVoters : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSData *option;
@property (nonatomic) int32_t voters;
@property (nonatomic, strong) NSArray *recent_voters;
@end

@interface ModernTL_pollResults : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *results;
@property (nonatomic) int32_t total_voters;
@property (nonatomic, strong) NSArray *recent_voters;
@property (nonatomic, strong) NSString *solution;
@property (nonatomic, strong) NSArray *solution_entities;
@property (nonatomic, strong) id<TLObject> solution_media;
@end

@interface ModernTL_popularContact : ModernTLObject <TLObject>
@property (nonatomic) int64_t client_id;
@property (nonatomic) int32_t importers;
@end

@interface ModernTL_postAddress : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *street_line1;
@property (nonatomic, strong) NSString *street_line2;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *country_iso2;
@property (nonatomic, strong) NSString *post_code;
@end

@interface ModernTL_postInteractionCountersMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int32_t views;
@property (nonatomic) int32_t forwards;
@property (nonatomic) int32_t reactions;
@end

@interface ModernTL_postInteractionCountersStory : ModernTLObject <TLObject>
@property (nonatomic) int32_t story_id;
@property (nonatomic) int32_t views;
@property (nonatomic) int32_t forwards;
@property (nonatomic) int32_t reactions;
@end

@interface ModernTL_premiumGiftCodeOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t users;
@property (nonatomic) int32_t months;
@property (nonatomic, strong) NSString *store_product;
@property (nonatomic) int32_t store_quantity;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_premiumSubscriptionOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *transaction;
@property (nonatomic) int32_t months;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic, strong) NSString *bot_url;
@property (nonatomic, strong) NSString *store_product;
@end

@interface ModernTL_prepaidGiveaway : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t months;
@property (nonatomic) int32_t quantity;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_prepaidStarsGiveaway : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t stars;
@property (nonatomic) int32_t quantity;
@property (nonatomic) int32_t boosts;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_privacyKeyAbout : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyAddedByPhone : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyBirthday : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyChatInvite : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyForwards : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyNoPaidMessages : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyPhoneCall : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyPhoneNumber : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyPhoneP2P : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyProfilePhoto : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeySavedMusic : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyStarGiftsAutoSave : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyStatusTimestamp : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyKeyVoiceMessages : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueAllowAll : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueAllowBots : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueAllowChatParticipants : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_privacyValueAllowCloseFriends : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueAllowContacts : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueAllowPremium : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueAllowUsers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_privacyValueDisallowAll : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueDisallowBots : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueDisallowChatParticipants : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_privacyValueDisallowContacts : ModernTLObject <TLObject>
@end

@interface ModernTL_privacyValueDisallowUsers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_profileTabFiles : ModernTLObject <TLObject>
@end

@interface ModernTL_profileTabGifs : ModernTLObject <TLObject>
@end

@interface ModernTL_profileTabGifts : ModernTLObject <TLObject>
@end

@interface ModernTL_profileTabLinks : ModernTLObject <TLObject>
@end

@interface ModernTL_profileTabMedia : ModernTLObject <TLObject>
@end

@interface ModernTL_profileTabMusic : ModernTLObject <TLObject>
@end

@interface ModernTL_profileTabPosts : ModernTLObject <TLObject>
@end

@interface ModernTL_profileTabVoice : ModernTLObject <TLObject>
@end

@interface ModernTL_publicForwardMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_publicForwardStory : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> story;
@end

@interface ModernTL_quickReply : ModernTLObject <TLObject>
@property (nonatomic) int32_t shortcut_id;
@property (nonatomic, strong) NSString *shortcut;
@property (nonatomic) int32_t top_message;
@property (nonatomic) int32_t count;
@end

@interface ModernTL_reactionCustomEmoji : ModernTLObject <TLObject>
@property (nonatomic) int64_t document_id;
@end

@interface ModernTL_reactionEmoji : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@end

@interface ModernTL_reactionEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_reactionPaid : ModernTLObject <TLObject>
@end

@interface ModernTL_reactionCount : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t chosen_order;
@property (nonatomic, strong) id<TLObject> reaction;
@property (nonatomic) int32_t count;
@end

@interface ModernTL_reactionNotificationsFromAll : ModernTLObject <TLObject>
@end

@interface ModernTL_reactionNotificationsFromContacts : ModernTLObject <TLObject>
@end

@interface ModernTL_reactionsNotifySettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> messages_notify_from;
@property (nonatomic, strong) id<TLObject> stories_notify_from;
@property (nonatomic, strong) id<TLObject> poll_votes_notify_from;
@property (nonatomic, strong) id<TLObject> sound;
@property (nonatomic) bool show_previews;
@end

@interface ModernTL_readParticipantDate : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_receivedNotifyMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_recentMeUrlChat : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t chat_id;
@end

@interface ModernTL_recentMeUrlChatInvite : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> chat_invite;
@end

@interface ModernTL_recentMeUrlStickerSet : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> set;
@end

@interface ModernTL_recentMeUrlUnknown : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_recentMeUrlUser : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_recentStory : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t max_id;
@end

@interface ModernTL_replyInlineMarkup : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *rows;
@end

@interface ModernTL_replyKeyboardForceReply : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *placeholder;
@end

@interface ModernTL_replyKeyboardHide : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_replyKeyboardMarkup : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *rows;
@property (nonatomic, strong) NSString *placeholder;
@end

@interface ModernTL_inputReportReasonChildAbuse : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonCopyright : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonFake : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonGeoIrrelevant : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonIllegalDrugs : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonOther : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonPersonalDetails : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonPornography : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonSpam : ModernTLObject <TLObject>
@end

@interface ModernTL_inputReportReasonViolence : ModernTLObject <TLObject>
@end

@interface ModernTL_reportResultAddComment : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSData *option;
@end

@interface ModernTL_reportResultChooseOption : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *options;
@end

@interface ModernTL_reportResultReported : ModernTLObject <TLObject>
@end

@interface ModernTL_requestPeerTypeBroadcast : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool has_username;
@property (nonatomic, strong) id<TLObject> user_admin_rights;
@property (nonatomic, strong) id<TLObject> bot_admin_rights;
@end

@interface ModernTL_requestPeerTypeChat : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool has_username;
@property (nonatomic) bool forum;
@property (nonatomic, strong) id<TLObject> user_admin_rights;
@property (nonatomic, strong) id<TLObject> bot_admin_rights;
@end

@interface ModernTL_requestPeerTypeCreateBot : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *suggested_name;
@property (nonatomic, strong) NSString *suggested_username;
@end

@interface ModernTL_requestPeerTypeUser : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool bot;
@property (nonatomic) bool premium;
@end

@interface ModernTL_requestedPeerChannel : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) id<TLObject> photo;
@end

@interface ModernTL_requestedPeerChat : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t chat_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> photo;
@end

@interface ModernTL_requestedPeerUser : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) id<TLObject> photo;
@end

@interface ModernTL_requirementToContactEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_requirementToContactPaidMessages : ModernTLObject <TLObject>
@property (nonatomic) int64_t stars_amount;
@end

@interface ModernTL_requirementToContactPremium : ModernTLObject <TLObject>
@end

@interface ModernTL_restrictionReason : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *platform;
@property (nonatomic, strong) NSString *reason;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_richMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic, strong) NSArray *photos;
@property (nonatomic, strong) NSArray *documents;
@end

@interface ModernTL_textAnchor : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) NSString *name;
@end

@interface ModernTL_textAutoEmail : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textAutoPhone : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textAutoUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textBankCard : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textBold : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textBotCommand : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textCashtag : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textConcat : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *texts;
@end

@interface ModernTL_textCustomEmoji : ModernTLObject <TLObject>
@property (nonatomic) int64_t document_id;
@property (nonatomic, strong) NSString *alt;
@end

@interface ModernTL_textDate : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_textDiff : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) id<TLObject> old_text;
@end

@interface ModernTL_textEmail : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) NSString *email;
@end

@interface ModernTL_textEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_textFixed : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textHashtag : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textImage : ModernTLObject <TLObject>
@property (nonatomic) int64_t document_id;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@end

@interface ModernTL_textItalic : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textMarked : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textMath : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *source;
@end

@interface ModernTL_textMention : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textMentionName : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_textPhone : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) NSString *phone;
@end

@interface ModernTL_textPlain : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_textSpoiler : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textStrike : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textSubscript : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textSuperscript : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textUnderline : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_textUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t webpage_id;
@end

@interface ModernTL_savedPhoneContact : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_monoForumDialog : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_message;
@property (nonatomic) int32_t read_inbox_max_id;
@property (nonatomic) int32_t read_outbox_max_id;
@property (nonatomic) int32_t unread_count;
@property (nonatomic) int32_t unread_reactions_count;
@property (nonatomic, strong) id<TLObject> draft;
@end

@interface ModernTL_savedDialog : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_message;
@end

@interface ModernTL_savedReactionTag : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> reaction;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int32_t count;
@end

@interface ModernTL_savedStarGift : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t saved_id;
@property (nonatomic) int64_t convert_stars;
@property (nonatomic) int64_t upgrade_stars;
@property (nonatomic) int32_t can_export_at;
@property (nonatomic) int64_t transfer_stars;
@property (nonatomic) int32_t can_transfer_at;
@property (nonatomic) int32_t can_resell_at;
@property (nonatomic, strong) NSArray *collection_id;
@property (nonatomic, strong) NSString *prepaid_upgrade_hash;
@property (nonatomic) int64_t drop_original_details_stars;
@property (nonatomic) int32_t gift_num;
@property (nonatomic) int32_t can_craft_at;
@end

@interface ModernTL_searchPostsFlood : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t total_daily;
@property (nonatomic) int32_t remains;
@property (nonatomic) int32_t wait_till;
@property (nonatomic) int64_t stars_amount;
@end

@interface ModernTL_searchResultsCalendarPeriod : ModernTLObject <TLObject>
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t min_msg_id;
@property (nonatomic) int32_t max_msg_id;
@property (nonatomic) int32_t count;
@end

@interface ModernTL_searchResultPosition : ModernTLObject <TLObject>
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t offset;
@end

@interface ModernTL_secureCredentialsEncrypted : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *data;
@property (nonatomic, strong) NSData *n_hash;
@property (nonatomic, strong) NSData *secret;
@end

@interface ModernTL_secureData : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *data;
@property (nonatomic, strong) NSData *data_hash;
@property (nonatomic, strong) NSData *secret;
@end

@interface ModernTL_secureFile : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int64_t size;
@property (nonatomic) int32_t dc_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSData *file_hash;
@property (nonatomic, strong) NSData *secret;
@end

@interface ModernTL_secureFileEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000 : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *salt;
@end

@interface ModernTL_securePasswordKdfAlgoSHA512 : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *salt;
@end

@interface ModernTL_securePasswordKdfAlgoUnknown : ModernTLObject <TLObject>
@end

@interface ModernTL_securePlainEmail : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *email;
@end

@interface ModernTL_securePlainPhone : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *phone;
@end

@interface ModernTL_secureRequiredType : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> type;
@end

@interface ModernTL_secureRequiredTypeOneOf : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *types;
@end

@interface ModernTL_secureSecretSettings : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> secure_algo;
@property (nonatomic, strong) NSData *secure_secret;
@property (nonatomic) int64_t secure_secret_id;
@end

@interface ModernTL_secureValue : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) id<TLObject> data;
@property (nonatomic, strong) id<TLObject> front_side;
@property (nonatomic, strong) id<TLObject> reverse_side;
@property (nonatomic, strong) id<TLObject> selfie;
@property (nonatomic, strong) NSArray *translation;
@property (nonatomic, strong) NSArray *files;
@property (nonatomic, strong) id<TLObject> plain_data;
@property (nonatomic, strong) NSData *n_hash;
@end

@interface ModernTL_secureValueError : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *n_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorData : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *data_hash;
@property (nonatomic, strong) NSString *field;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorFile : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *file_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorFiles : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSArray *file_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorFrontSide : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *file_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorReverseSide : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *file_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorSelfie : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *file_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorTranslationFile : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *file_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueErrorTranslationFiles : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSArray *file_hash;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_secureValueHash : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSData *n_hash;
@end

@interface ModernTL_secureValueTypeAddress : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeBankStatement : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeDriverLicense : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeEmail : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeIdentityCard : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeInternalPassport : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypePassport : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypePassportRegistration : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypePersonalDetails : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypePhone : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeRentalAgreement : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeTemporaryRegistration : ModernTLObject <TLObject>
@end

@interface ModernTL_secureValueTypeUtilityBill : ModernTLObject <TLObject>
@end

@interface ModernTL_sendAsPeer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_inputSendMessageRichMessageDraftAction : ModernTLObject <TLObject>
@property (nonatomic) int64_t random_id;
@property (nonatomic, strong) id<TLObject> rich_message;
@end

@interface ModernTL_sendMessageCancelAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageChooseContactAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageChooseStickerAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageEmojiInteraction : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic) int32_t msg_id;
@property (nonatomic, strong) id<TLObject> interaction;
@end

@interface ModernTL_sendMessageEmojiInteractionSeen : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@end

@interface ModernTL_sendMessageGamePlayAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageGeoLocationAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageHistoryImportAction : ModernTLObject <TLObject>
@property (nonatomic) int32_t progress;
@end

@interface ModernTL_sendMessageRecordAudioAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageRecordRoundAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageRecordVideoAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageRichMessageDraftAction : ModernTLObject <TLObject>
@property (nonatomic) int64_t random_id;
@property (nonatomic, strong) id<TLObject> rich_message;
@end

@interface ModernTL_sendMessageTextDraftAction : ModernTLObject <TLObject>
@property (nonatomic) int64_t random_id;
@property (nonatomic, strong) id<TLObject> text;
@end

@interface ModernTL_sendMessageTypingAction : ModernTLObject <TLObject>
@end

@interface ModernTL_sendMessageUploadAudioAction : ModernTLObject <TLObject>
@property (nonatomic) int32_t progress;
@end

@interface ModernTL_sendMessageUploadDocumentAction : ModernTLObject <TLObject>
@property (nonatomic) int32_t progress;
@end

@interface ModernTL_sendMessageUploadPhotoAction : ModernTLObject <TLObject>
@property (nonatomic) int32_t progress;
@end

@interface ModernTL_sendMessageUploadRoundAction : ModernTLObject <TLObject>
@property (nonatomic) int32_t progress;
@end

@interface ModernTL_sendMessageUploadVideoAction : ModernTLObject <TLObject>
@property (nonatomic) int32_t progress;
@end

@interface ModernTL_speakingInGroupCallAction : ModernTLObject <TLObject>
@end

@interface ModernTL_shippingOption : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *prices;
@end

@interface ModernTL_smsJob : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *job_id;
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_sponsoredMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSData *random_id;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) id<TLObject> color;
@property (nonatomic, strong) NSString *button_text;
@property (nonatomic, strong) NSString *sponsor_info;
@property (nonatomic, strong) NSString *additional_info;
@property (nonatomic) int32_t min_display_duration;
@property (nonatomic) int32_t max_display_duration;
@end

@interface ModernTL_sponsoredMessageReportOption : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSData *option;
@end

@interface ModernTL_sponsoredPeer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSData *random_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSString *sponsor_info;
@property (nonatomic, strong) NSString *additional_info;
@end

@interface ModernTL_starGift : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) id<TLObject> sticker;
@property (nonatomic) int64_t stars;
@property (nonatomic) int32_t availability_remains;
@property (nonatomic) int32_t availability_total;
@property (nonatomic) int64_t availability_resale;
@property (nonatomic) int64_t convert_stars;
@property (nonatomic) int32_t first_sale_date;
@property (nonatomic) int32_t last_sale_date;
@property (nonatomic) int64_t upgrade_stars;
@property (nonatomic) int64_t resell_min_stars;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> released_by;
@property (nonatomic) int32_t per_user_total;
@property (nonatomic) int32_t per_user_remains;
@property (nonatomic) int32_t locked_until_date;
@property (nonatomic, strong) NSString *auction_slug;
@property (nonatomic) int32_t gifts_per_round;
@property (nonatomic) int32_t auction_start_date;
@property (nonatomic) int32_t upgrade_variants;
@property (nonatomic, strong) id<TLObject> background;
@end

@interface ModernTL_starGiftUnique : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t gift_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic) int32_t num;
@property (nonatomic, strong) id<TLObject> owner_id;
@property (nonatomic, strong) NSString *owner_name;
@property (nonatomic, strong) NSString *owner_address;
@property (nonatomic, strong) NSArray *attributes;
@property (nonatomic) int32_t availability_issued;
@property (nonatomic) int32_t availability_total;
@property (nonatomic, strong) NSString *gift_address;
@property (nonatomic, strong) NSArray *resell_amount;
@property (nonatomic, strong) id<TLObject> released_by;
@property (nonatomic) int64_t value_amount;
@property (nonatomic, strong) NSString *value_currency;
@property (nonatomic) int64_t value_usd_amount;
@property (nonatomic, strong) id<TLObject> theme_peer;
@property (nonatomic, strong) id<TLObject> peer_color;
@property (nonatomic, strong) id<TLObject> host_id;
@property (nonatomic) int32_t offer_min_stars;
@property (nonatomic) int32_t craft_chance_permille;
@end

@interface ModernTL_starGiftActiveAuctionState : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) id<TLObject> state;
@property (nonatomic, strong) id<TLObject> user_state;
@end

@interface ModernTL_starGiftAttributeBackdrop : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *name;
@property (nonatomic) int32_t backdrop_id;
@property (nonatomic) int32_t center_color;
@property (nonatomic) int32_t edge_color;
@property (nonatomic) int32_t pattern_color;
@property (nonatomic) int32_t text_color;
@property (nonatomic, strong) id<TLObject> rarity;
@end

@interface ModernTL_starGiftAttributeModel : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) id<TLObject> rarity;
@end

@interface ModernTL_starGiftAttributeOriginalDetails : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> sender_id;
@property (nonatomic, strong) id<TLObject> recipient_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_starGiftAttributePattern : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) id<TLObject> rarity;
@end

@interface ModernTL_starGiftAttributeCounter : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> attribute;
@property (nonatomic) int32_t count;
@end

@interface ModernTL_starGiftAttributeIdBackdrop : ModernTLObject <TLObject>
@property (nonatomic) int32_t backdrop_id;
@end

@interface ModernTL_starGiftAttributeIdModel : ModernTLObject <TLObject>
@property (nonatomic) int64_t document_id;
@end

@interface ModernTL_starGiftAttributeIdPattern : ModernTLObject <TLObject>
@property (nonatomic) int64_t document_id;
@end

@interface ModernTL_starGiftAttributeRarity : ModernTLObject <TLObject>
@property (nonatomic) int32_t permille;
@end

@interface ModernTL_starGiftAttributeRarityEpic : ModernTLObject <TLObject>
@end

@interface ModernTL_starGiftAttributeRarityLegendary : ModernTLObject <TLObject>
@end

@interface ModernTL_starGiftAttributeRarityRare : ModernTLObject <TLObject>
@end

@interface ModernTL_starGiftAttributeRarityUncommon : ModernTLObject <TLObject>
@end

@interface ModernTL_starGiftAuctionAcquiredGift : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t bid_amount;
@property (nonatomic) int32_t round;
@property (nonatomic) int32_t pos;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int32_t gift_num;
@end

@interface ModernTL_starGiftAuctionRound : ModernTLObject <TLObject>
@property (nonatomic) int32_t num;
@property (nonatomic) int32_t duration;
@end

@interface ModernTL_starGiftAuctionRoundExtendable : ModernTLObject <TLObject>
@property (nonatomic) int32_t num;
@property (nonatomic) int32_t duration;
@property (nonatomic) int32_t extend_top;
@property (nonatomic) int32_t extend_window;
@end

@interface ModernTL_starGiftAuctionState : ModernTLObject <TLObject>
@property (nonatomic) int32_t version;
@property (nonatomic) int32_t start_date;
@property (nonatomic) int32_t end_date;
@property (nonatomic) int64_t min_bid_amount;
@property (nonatomic, strong) NSArray *bid_levels;
@property (nonatomic, strong) NSArray *top_bidders;
@property (nonatomic) int32_t next_round_at;
@property (nonatomic) int32_t last_gift_num;
@property (nonatomic) int32_t gifts_left;
@property (nonatomic) int32_t current_round;
@property (nonatomic) int32_t total_rounds;
@property (nonatomic, strong) NSArray *rounds;
@end

@interface ModernTL_starGiftAuctionStateFinished : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t start_date;
@property (nonatomic) int32_t end_date;
@property (nonatomic) int64_t average_price;
@property (nonatomic) int32_t listed_count;
@property (nonatomic) int32_t fragment_listed_count;
@property (nonatomic, strong) NSString *fragment_listed_url;
@end

@interface ModernTL_starGiftAuctionStateNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_starGiftAuctionUserState : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t bid_amount;
@property (nonatomic) int32_t bid_date;
@property (nonatomic) int64_t min_bid_amount;
@property (nonatomic, strong) id<TLObject> bid_peer;
@property (nonatomic) int32_t acquired_count;
@end

@interface ModernTL_starGiftBackground : ModernTLObject <TLObject>
@property (nonatomic) int32_t center_color;
@property (nonatomic) int32_t edge_color;
@property (nonatomic) int32_t text_color;
@end

@interface ModernTL_starGiftCollection : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t collection_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> icon;
@property (nonatomic) int32_t gifts_count;
@property (nonatomic) int64_t n_hash;
@end

@interface ModernTL_starGiftUpgradePrice : ModernTLObject <TLObject>
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t upgrade_stars;
@end

@interface ModernTL_starRefProgram : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t bot_id;
@property (nonatomic) int32_t commission_permille;
@property (nonatomic) int32_t duration_months;
@property (nonatomic) int32_t end_date;
@property (nonatomic, strong) id<TLObject> daily_revenue_per_user;
@end

@interface ModernTL_starsAmount : ModernTLObject <TLObject>
@property (nonatomic) int64_t amount;
@property (nonatomic) int32_t nanos;
@end

@interface ModernTL_starsTonAmount : ModernTLObject <TLObject>
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_starsGiftOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) NSString *store_product;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_starsGiveawayOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@property (nonatomic) int32_t yearly_boosts;
@property (nonatomic, strong) NSString *store_product;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic, strong) NSArray *winners;
@end

@interface ModernTL_starsGiveawayWinnersOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t users;
@property (nonatomic) int64_t per_user_stars;
@end

@interface ModernTL_starsRating : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t level;
@property (nonatomic) int64_t current_level_stars;
@property (nonatomic) int64_t stars;
@property (nonatomic) int64_t next_level_stars;
@end

@interface ModernTL_starsRevenueStatus : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> current_balance;
@property (nonatomic, strong) id<TLObject> available_balance;
@property (nonatomic, strong) id<TLObject> overall_revenue;
@property (nonatomic) int32_t next_withdrawal_at;
@end

@interface ModernTL_starsSubscription : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t until_date;
@property (nonatomic, strong) id<TLObject> pricing;
@property (nonatomic, strong) NSString *chat_invite_hash;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) NSString *invoice_slug;
@end

@interface ModernTL_starsSubscriptionPricing : ModernTLObject <TLObject>
@property (nonatomic) int32_t period;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_starsTopupOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stars;
@property (nonatomic, strong) NSString *store_product;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_starsTransaction : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) id<TLObject> amount;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic) int32_t transaction_date;
@property (nonatomic, strong) NSString *transaction_url;
@property (nonatomic, strong) NSData *bot_payload;
@property (nonatomic) int32_t msg_id;
@property (nonatomic, strong) NSArray *extended_media;
@property (nonatomic) int32_t subscription_period;
@property (nonatomic) int32_t giveaway_post_id;
@property (nonatomic, strong) id<TLObject> stargift;
@property (nonatomic) int32_t floodskip_number;
@property (nonatomic) int32_t starref_commission_permille;
@property (nonatomic, strong) id<TLObject> starref_peer;
@property (nonatomic, strong) id<TLObject> starref_amount;
@property (nonatomic) int32_t paid_messages;
@property (nonatomic) int32_t premium_gift_months;
@property (nonatomic) int32_t ads_proceeds_from_date;
@property (nonatomic) int32_t ads_proceeds_to_date;
@end

@interface ModernTL_starsTransactionPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_starsTransactionPeerAPI : ModernTLObject <TLObject>
@end

@interface ModernTL_starsTransactionPeerAds : ModernTLObject <TLObject>
@end

@interface ModernTL_starsTransactionPeerAppStore : ModernTLObject <TLObject>
@end

@interface ModernTL_starsTransactionPeerFragment : ModernTLObject <TLObject>
@end

@interface ModernTL_starsTransactionPeerPlayMarket : ModernTLObject <TLObject>
@end

@interface ModernTL_starsTransactionPeerPremiumBot : ModernTLObject <TLObject>
@end

@interface ModernTL_starsTransactionPeerUnsupported : ModernTLObject <TLObject>
@end

@interface ModernTL_statsAbsValueAndPrev : ModernTLObject <TLObject>
@property (nonatomic) double current;
@property (nonatomic) double previous;
@end

@interface ModernTL_statsDateRangeDays : ModernTLObject <TLObject>
@property (nonatomic) int32_t min_date;
@property (nonatomic) int32_t max_date;
@end

@interface ModernTL_statsGraph : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> json;
@property (nonatomic, strong) NSString *zoom_token;
@end

@interface ModernTL_statsGraphAsync : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *token;
@end

@interface ModernTL_statsGraphError : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *error;
@end

@interface ModernTL_statsGroupTopAdmin : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t deleted;
@property (nonatomic) int32_t kicked;
@property (nonatomic) int32_t banned;
@end

@interface ModernTL_statsGroupTopInviter : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t invitations;
@end

@interface ModernTL_statsGroupTopPoster : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t messages;
@property (nonatomic) int32_t avg_chars;
@end

@interface ModernTL_statsPercentValue : ModernTLObject <TLObject>
@property (nonatomic) double part;
@property (nonatomic) double total;
@end

@interface ModernTL_statsURL : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_stickerKeyword : ModernTLObject <TLObject>
@property (nonatomic) int64_t document_id;
@property (nonatomic, strong) NSArray *keyword;
@end

@interface ModernTL_stickerPack : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic, strong) NSArray *documents;
@end

@interface ModernTL_stickerSet : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t installed_date;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *short_name;
@property (nonatomic, strong) NSArray *thumbs;
@property (nonatomic) int32_t thumb_dc_id;
@property (nonatomic) int32_t thumb_version;
@property (nonatomic) int64_t thumb_document_id;
@property (nonatomic) int32_t count;
@property (nonatomic) int32_t n_hash;
@end

@interface ModernTL_stickerSetCovered : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> set;
@property (nonatomic, strong) id<TLObject> cover;
@end

@interface ModernTL_stickerSetFullCovered : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> set;
@property (nonatomic, strong) NSArray *packs;
@property (nonatomic, strong) NSArray *keywords;
@property (nonatomic, strong) NSArray *documents;
@end

@interface ModernTL_stickerSetMultiCovered : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> set;
@property (nonatomic, strong) NSArray *covers;
@end

@interface ModernTL_stickerSetNoCovered : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> set;
@end

@interface ModernTL_storiesStealthMode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t active_until_date;
@property (nonatomic) int32_t cooldown_until_date;
@end

@interface ModernTL_storyAlbum : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t album_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> icon_photo;
@property (nonatomic, strong) id<TLObject> icon_video;
@end

@interface ModernTL_storyFwdHeader : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> from;
@property (nonatomic, strong) NSString *from_name;
@property (nonatomic) int32_t story_id;
@end

@interface ModernTL_storyItem : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> fwd_from;
@property (nonatomic) int32_t expire_date;
@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) NSArray *media_areas;
@property (nonatomic, strong) NSArray *privacy;
@property (nonatomic, strong) id<TLObject> views;
@property (nonatomic, strong) id<TLObject> sent_reaction;
@property (nonatomic, strong) NSArray *albums;
@property (nonatomic, strong) id<TLObject> music;
@end

@interface ModernTL_storyItemDeleted : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_storyItemSkipped : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t expire_date;
@end

@interface ModernTL_storyReaction : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> reaction;
@end

@interface ModernTL_storyReactionPublicForward : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_storyReactionPublicRepost : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic, strong) id<TLObject> story;
@end

@interface ModernTL_storyView : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> reaction;
@end

@interface ModernTL_storyViewPublicForward : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_storyViewPublicRepost : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic, strong) id<TLObject> story;
@end

@interface ModernTL_storyViews : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t views_count;
@property (nonatomic) int32_t forwards_count;
@property (nonatomic, strong) NSArray *reactions;
@property (nonatomic) int32_t reactions_count;
@property (nonatomic, strong) NSArray *recent_viewers;
@end

@interface ModernTL_suggestedPost : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> price;
@property (nonatomic) int32_t schedule_date;
@end

@interface ModernTL_textWithEntities : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSArray *entities;
@end

@interface ModernTL_theme : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) NSArray *settings;
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic) int32_t installs_count;
@end

@interface ModernTL_themeSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> base_theme;
@property (nonatomic) int32_t accent_color;
@property (nonatomic) int32_t outbox_accent_color;
@property (nonatomic, strong) NSArray *message_colors;
@property (nonatomic, strong) id<TLObject> wallpaper;
@end

@interface ModernTL_timezone : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic) int32_t utc_offset;
@end

@interface ModernTL_todoCompletion : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> completed_by;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_todoItem : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> title;
@end

@interface ModernTL_todoList : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> title;
@property (nonatomic, strong) NSArray *list;
@end

@interface ModernTL_topPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) double rating;
@end

@interface ModernTL_topPeerCategoryBotsApp : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryBotsGuestChat : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryBotsInline : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryBotsPM : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryChannels : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryCorrespondents : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryForwardChats : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryForwardUsers : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryGroups : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryPhoneCalls : ModernTLObject <TLObject>
@end

@interface ModernTL_topPeerCategoryPeers : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> category;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *peers;
@end

@interface ModernTL_updateAiComposeTones : ModernTLObject <TLObject>
@end

@interface ModernTL_updateAttachMenuBots : ModernTLObject <TLObject>
@end

@interface ModernTL_updateAutoSaveSettings : ModernTLObject <TLObject>
@end

@interface ModernTL_updateBotBusinessConnect : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> connection;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotCallbackQuery : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t chat_instance;
@property (nonatomic, strong) NSData *data;
@property (nonatomic, strong) NSString *game_short_name;
@end

@interface ModernTL_updateBotChatBoost : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> boost;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotChatInviteRequester : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *about;
@property (nonatomic, strong) id<TLObject> invite;
@property (nonatomic) int32_t qts;
@property (nonatomic) int64_t query_id;
@end

@interface ModernTL_updateBotCommands : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) NSArray *commands;
@end

@interface ModernTL_updateBotDeleteBusinessMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *connection_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotEditBusinessMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *connection_id;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic, strong) id<TLObject> reply_to_message;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotGuestChatQuery : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic, strong) NSArray *reference_messages;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotInlineQuery : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *query;
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic, strong) id<TLObject> peer_type;
@property (nonatomic, strong) NSString *offset;
@end

@interface ModernTL_updateBotInlineSend : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *query;
@property (nonatomic, strong) id<TLObject> geo;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) id<TLObject> msg_id;
@end

@interface ModernTL_updateBotMenuButton : ModernTLObject <TLObject>
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) id<TLObject> button;
@end

@interface ModernTL_updateBotMessageReaction : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> actor;
@property (nonatomic, strong) NSArray *old_reactions;
@property (nonatomic, strong) NSArray *n_new_reactions;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotMessageReactions : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSArray *reactions;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotNewBusinessMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *connection_id;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic, strong) id<TLObject> reply_to_message;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotPrecheckoutQuery : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSData *payload;
@property (nonatomic, strong) id<TLObject> info;
@property (nonatomic, strong) NSString *shipping_option_id;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@end

@interface ModernTL_updateBotPurchasedPaidMedia : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *payload;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotShippingQuery : ModernTLObject <TLObject>
@property (nonatomic) int64_t query_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSData *payload;
@property (nonatomic, strong) id<TLObject> shipping_address;
@end

@interface ModernTL_updateBotStopped : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t date;
@property (nonatomic) bool stopped;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateBotWebhookJSON : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> data;
@end

@interface ModernTL_updateBotWebhookJSONQuery : ModernTLObject <TLObject>
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) id<TLObject> data;
@property (nonatomic) int32_t timeout;
@end

@interface ModernTL_updateBusinessBotCallbackQuery : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *connection_id;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic, strong) id<TLObject> reply_to_message;
@property (nonatomic) int64_t chat_instance;
@property (nonatomic, strong) NSData *data;
@end

@interface ModernTL_updateChannel : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@end

@interface ModernTL_updateChannelAvailableMessages : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t available_min_id;
@end

@interface ModernTL_updateChannelMessageForwards : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int32_t forwards;
@end

@interface ModernTL_updateChannelMessageViews : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int32_t views;
@end

@interface ModernTL_updateChannelParticipant : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t actor_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> prev_participant;
@property (nonatomic, strong) id<TLObject> n_new_participant;
@property (nonatomic, strong) id<TLObject> invite;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateChannelReadMessagesContents : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@property (nonatomic, strong) NSArray *messages;
@end

@interface ModernTL_updateChannelTooLong : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t pts;
@end

@interface ModernTL_updateChannelUserTyping : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> action;
@end

@interface ModernTL_updateChannelViewForumAsMessages : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) bool enabled;
@end

@interface ModernTL_updateChannelWebPage : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic, strong) id<TLObject> webpage;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateChat : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@end

@interface ModernTL_updateChatDefaultBannedRights : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> default_banned_rights;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_updateChatParticipant : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t chat_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t actor_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> prev_participant;
@property (nonatomic, strong) id<TLObject> n_new_participant;
@property (nonatomic, strong) id<TLObject> invite;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateChatParticipantAdd : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t inviter_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_updateChatParticipantAdmin : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic) bool is_admin;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_updateChatParticipantDelete : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_updateChatParticipantRank : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *rank;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_updateChatParticipants : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> participants;
@end

@interface ModernTL_updateChatUserTyping : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> action;
@end

@interface ModernTL_updateConfig : ModernTLObject <TLObject>
@end

@interface ModernTL_updateContactsReset : ModernTLObject <TLObject>
@end

@interface ModernTL_updateDcOptions : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *dc_options;
@end

@interface ModernTL_updateDeleteChannelMessages : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateDeleteEphemeralMessages : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *ids;
@end

@interface ModernTL_updateDeleteGroupCallMessages : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic, strong) NSArray *messages;
@end

@interface ModernTL_updateDeleteMessages : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateDeleteQuickReply : ModernTLObject <TLObject>
@property (nonatomic) int32_t shortcut_id;
@end

@interface ModernTL_updateDeleteQuickReplyMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t shortcut_id;
@property (nonatomic, strong) NSArray *messages;
@end

@interface ModernTL_updateDeleteScheduledMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *sent_messages;
@end

@interface ModernTL_updateDialogFilter : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> filter;
@end

@interface ModernTL_updateDialogFilterOrder : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *order;
@end

@interface ModernTL_updateDialogFilters : ModernTLObject <TLObject>
@end

@interface ModernTL_updateDialogPinned : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t folder_id;
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_updateDialogUnreadMark : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@end

@interface ModernTL_updateDraftMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@property (nonatomic, strong) id<TLObject> draft;
@end

@interface ModernTL_updateEditChannelMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateEditEphemeralMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_updateEditMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateEmojiGameInfo : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> info;
@end

@interface ModernTL_updateEncryptedChatTyping : ModernTLObject <TLObject>
@property (nonatomic) int32_t chat_id;
@end

@interface ModernTL_updateEncryptedMessagesRead : ModernTLObject <TLObject>
@property (nonatomic) int32_t chat_id;
@property (nonatomic) int32_t max_date;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_updateEncryption : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> chat;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_updateFavedStickers : ModernTLObject <TLObject>
@end

@interface ModernTL_updateFolderPeers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *folder_peers;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateGeoLiveViewed : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@end

@interface ModernTL_updateGroupCall : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> call;
@end

@interface ModernTL_updateGroupCallChainBlocks : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic) int32_t sub_chain_id;
@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic) int32_t next_offset;
@end

@interface ModernTL_updateGroupCallConnection : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> params;
@end

@interface ModernTL_updateGroupCallEncryptedMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) NSData *encrypted_message;
@end

@interface ModernTL_updateGroupCallMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_updateGroupCallParticipants : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_updateInlineBotCallbackQuery : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> msg_id;
@property (nonatomic) int64_t chat_instance;
@property (nonatomic, strong) NSData *data;
@property (nonatomic, strong) NSString *game_short_name;
@end

@interface ModernTL_updateJoinChatWebViewDecision : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) id<TLObject> result;
@end

@interface ModernTL_updateLangPack : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> difference;
@end

@interface ModernTL_updateLangPackTooLong : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *lang_code;
@end

@interface ModernTL_updateLoginToken : ModernTLObject <TLObject>
@end

@interface ModernTL_updateManagedBot : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t bot_id;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateMessageExtendedMedia : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic, strong) NSArray *extended_media;
@end

@interface ModernTL_updateMessageID : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t random_id;
@end

@interface ModernTL_updateMessagePoll : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic) int64_t poll_id;
@property (nonatomic, strong) id<TLObject> poll;
@property (nonatomic, strong) id<TLObject> results;
@end

@interface ModernTL_updateMessagePollVote : ModernTLObject <TLObject>
@property (nonatomic) int64_t poll_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *options;
@property (nonatomic, strong) NSArray *positions;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateMessageReactions : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@property (nonatomic, strong) id<TLObject> reactions;
@end

@interface ModernTL_updateMonoForumNoPaidException : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@end

@interface ModernTL_updateMoveStickerSetToTop : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t stickerset;
@end

@interface ModernTL_updateNewAuthorization : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_hash;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *device;
@property (nonatomic, strong) NSString *location;
@end

@interface ModernTL_updateNewBotConnection : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t bot_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *device;
@property (nonatomic, strong) NSString *location;
@end

@interface ModernTL_updateNewChannelMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateNewEncryptedMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int32_t qts;
@end

@interface ModernTL_updateNewEphemeralMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_updateNewMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateNewQuickReply : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> quick_reply;
@end

@interface ModernTL_updateNewScheduledMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_updateNewStickerSet : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> stickerset;
@end

@interface ModernTL_updateNewStoryReaction : ModernTLObject <TLObject>
@property (nonatomic) int32_t story_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> reaction;
@end

@interface ModernTL_updateNotifySettings : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> notify_settings;
@end

@interface ModernTL_updatePaidReactionPrivacy : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> n_private;
@end

@interface ModernTL_updatePeerBlocked : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer_id;
@end

@interface ModernTL_updatePeerHistoryTTL : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t ttl_period;
@end

@interface ModernTL_updatePeerLocated : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *peers;
@end

@interface ModernTL_updatePeerSettings : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> settings;
@end

@interface ModernTL_updatePeerWallpaper : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> wallpaper;
@end

@interface ModernTL_updatePendingJoinRequests : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t requests_pending;
@property (nonatomic, strong) NSArray *recent_requesters;
@end

@interface ModernTL_updatePhoneCall : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> phone_call;
@end

@interface ModernTL_updatePhoneCallSignalingData : ModernTLObject <TLObject>
@property (nonatomic) int64_t phone_call_id;
@property (nonatomic, strong) NSData *data;
@end

@interface ModernTL_updatePinnedChannelMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updatePinnedDialogs : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t folder_id;
@property (nonatomic, strong) NSArray *order;
@end

@interface ModernTL_updatePinnedForumTopic : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t topic_id;
@end

@interface ModernTL_updatePinnedForumTopics : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *order;
@end

@interface ModernTL_updatePinnedMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updatePinnedSavedDialogs : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *order;
@end

@interface ModernTL_updatePrivacy : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> key;
@property (nonatomic, strong) NSArray *rules;
@end

@interface ModernTL_updatePtsChanged : ModernTLObject <TLObject>
@end

@interface ModernTL_updateQuickReplies : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *quick_replies;
@end

@interface ModernTL_updateQuickReplyMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_updateReadChannelDiscussionInbox : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic) int32_t read_max_id;
@property (nonatomic) int64_t broadcast_id;
@property (nonatomic) int32_t broadcast_post;
@end

@interface ModernTL_updateReadChannelDiscussionOutbox : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic) int32_t read_max_id;
@end

@interface ModernTL_updateReadChannelInbox : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t folder_id;
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t max_id;
@property (nonatomic) int32_t still_unread_count;
@property (nonatomic) int32_t pts;
@end

@interface ModernTL_updateReadChannelOutbox : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int32_t max_id;
@end

@interface ModernTL_updateReadFeaturedEmojiStickers : ModernTLObject <TLObject>
@end

@interface ModernTL_updateReadFeaturedStickers : ModernTLObject <TLObject>
@end

@interface ModernTL_updateReadHistoryInbox : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t folder_id;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic) int32_t max_id;
@property (nonatomic) int32_t still_unread_count;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateReadHistoryOutbox : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t max_id;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateReadMessagesContents : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_updateReadMonoForumInbox : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@property (nonatomic) int32_t read_max_id;
@end

@interface ModernTL_updateReadMonoForumOutbox : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic, strong) id<TLObject> saved_peer_id;
@property (nonatomic) int32_t read_max_id;
@end

@interface ModernTL_updateReadStories : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t max_id;
@end

@interface ModernTL_updateRecentEmojiStatuses : ModernTLObject <TLObject>
@end

@interface ModernTL_updateRecentReactions : ModernTLObject <TLObject>
@end

@interface ModernTL_updateRecentStickers : ModernTLObject <TLObject>
@end

@interface ModernTL_updateSavedDialogPinned : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_updateSavedGifs : ModernTLObject <TLObject>
@end

@interface ModernTL_updateSavedReactionTags : ModernTLObject <TLObject>
@end

@interface ModernTL_updateSavedRingtones : ModernTLObject <TLObject>
@end

@interface ModernTL_updateSentPhoneCode : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> sent_code;
@end

@interface ModernTL_updateSentStoryReaction : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t story_id;
@property (nonatomic, strong) id<TLObject> reaction;
@end

@interface ModernTL_updateServiceNotification : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t inbox_date;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) NSArray *entities;
@end

@interface ModernTL_updateSmsJob : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *job_id;
@end

@interface ModernTL_updateStarGiftAuctionState : ModernTLObject <TLObject>
@property (nonatomic) int64_t gift_id;
@property (nonatomic, strong) id<TLObject> state;
@end

@interface ModernTL_updateStarGiftAuctionUserState : ModernTLObject <TLObject>
@property (nonatomic) int64_t gift_id;
@property (nonatomic, strong) id<TLObject> user_state;
@end

@interface ModernTL_updateStarGiftCraftFail : ModernTLObject <TLObject>
@end

@interface ModernTL_updateStarsBalance : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> balance;
@end

@interface ModernTL_updateStarsRevenueStatus : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> status;
@end

@interface ModernTL_updateStickerSets : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_updateStickerSetsOrder : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *order;
@end

@interface ModernTL_updateStoriesStealthMode : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> stealth_mode;
@end

@interface ModernTL_updateStory : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> story;
@end

@interface ModernTL_updateStoryID : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t random_id;
@end

@interface ModernTL_updateTheme : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> theme;
@end

@interface ModernTL_updateTranscribedAudio : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t transcription_id;
@property (nonatomic, strong) NSString *text;
@end

@interface ModernTL_updateUser : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@end

@interface ModernTL_updateUserEmojiStatus : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> emoji_status;
@end

@interface ModernTL_updateUserName : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) NSArray *usernames;
@end

@interface ModernTL_updateUserPhone : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *phone;
@end

@interface ModernTL_updateUserStatus : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> status;
@end

@interface ModernTL_updateUserTyping : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic, strong) id<TLObject> action;
@end

@interface ModernTL_updateWebBrowserException : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool open_external_browser;
@property (nonatomic, strong) id<TLObject> exception;
@end

@interface ModernTL_updateWebBrowserSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_updateWebPage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> webpage;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_updateWebViewResultSent : ModernTLObject <TLObject>
@property (nonatomic) int64_t query_id;
@end

@interface ModernTL_businessBotRecipients : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSArray *exclude_users;
@end

@interface ModernTL_businessBotRights : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_businessChatLink : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int32_t views;
@end

@interface ModernTL_businessGreetingMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t shortcut_id;
@property (nonatomic, strong) id<TLObject> recipients;
@property (nonatomic) int32_t no_activity_days;
@end

@interface ModernTL_businessIntro : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> sticker;
@end

@interface ModernTL_businessLocation : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> geo_point;
@property (nonatomic, strong) NSString *address;
@end

@interface ModernTL_businessRecipients : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_businessWeeklyOpen : ModernTLObject <TLObject>
@property (nonatomic) int32_t start_minute;
@property (nonatomic) int32_t end_minute;
@end

@interface ModernTL_businessWorkHours : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *timezone_id;
@property (nonatomic, strong) NSArray *weekly_open;
@end

@interface ModernTL_cdnConfig : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *public_keys;
@end

@interface ModernTL_cdnPublicKey : ModernTLObject <TLObject>
@property (nonatomic) int32_t dc_id;
@property (nonatomic, strong) NSString *public_key;
@end

@interface ModernTL_channelAdminLogEvent : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> action;
@end

@interface ModernTL_channelAdminLogEventActionChangeAbout : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *prev_value;
@property (nonatomic, strong) NSString *n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeAvailableReactions : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_value;
@property (nonatomic, strong) id<TLObject> n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeEmojiStatus : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_value;
@property (nonatomic, strong) id<TLObject> n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeEmojiStickerSet : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_stickerset;
@property (nonatomic, strong) id<TLObject> n_new_stickerset;
@end

@interface ModernTL_channelAdminLogEventActionChangeHistoryTTL : ModernTLObject <TLObject>
@property (nonatomic) int32_t prev_value;
@property (nonatomic) int32_t n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeLinkedChat : ModernTLObject <TLObject>
@property (nonatomic) int64_t prev_value;
@property (nonatomic) int64_t n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeLocation : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_value;
@property (nonatomic, strong) id<TLObject> n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangePeerColor : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_value;
@property (nonatomic, strong) id<TLObject> n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangePhoto : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_photo;
@property (nonatomic, strong) id<TLObject> n_new_photo;
@end

@interface ModernTL_channelAdminLogEventActionChangeProfilePeerColor : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_value;
@property (nonatomic, strong) id<TLObject> n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeStickerSet : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_stickerset;
@property (nonatomic, strong) id<TLObject> n_new_stickerset;
@end

@interface ModernTL_channelAdminLogEventActionChangeTitle : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *prev_value;
@property (nonatomic, strong) NSString *n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeUsername : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *prev_value;
@property (nonatomic, strong) NSString *n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeUsernames : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *prev_value;
@property (nonatomic, strong) NSArray *n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionChangeWallpaper : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_value;
@property (nonatomic, strong) id<TLObject> n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionCreateTopic : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> topic;
@end

@interface ModernTL_channelAdminLogEventActionDefaultBannedRights : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_banned_rights;
@property (nonatomic, strong) id<TLObject> n_new_banned_rights;
@end

@interface ModernTL_channelAdminLogEventActionDeleteMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_channelAdminLogEventActionDeleteTopic : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> topic;
@end

@interface ModernTL_channelAdminLogEventActionDiscardGroupCall : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@end

@interface ModernTL_channelAdminLogEventActionEditMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_message;
@property (nonatomic, strong) id<TLObject> n_new_message;
@end

@interface ModernTL_channelAdminLogEventActionEditTopic : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_topic;
@property (nonatomic, strong) id<TLObject> n_new_topic;
@end

@interface ModernTL_channelAdminLogEventActionExportedInviteDelete : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> invite;
@end

@interface ModernTL_channelAdminLogEventActionExportedInviteEdit : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_invite;
@property (nonatomic, strong) id<TLObject> n_new_invite;
@end

@interface ModernTL_channelAdminLogEventActionExportedInviteRevoke : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> invite;
@end

@interface ModernTL_channelAdminLogEventActionParticipantEditRank : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *prev_rank;
@property (nonatomic, strong) NSString *n_new_rank;
@end

@interface ModernTL_channelAdminLogEventActionParticipantInvite : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> participant;
@end

@interface ModernTL_channelAdminLogEventActionParticipantJoin : ModernTLObject <TLObject>
@end

@interface ModernTL_channelAdminLogEventActionParticipantJoinByInvite : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> invite;
@end

@interface ModernTL_channelAdminLogEventActionParticipantJoinByRequest : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> invite;
@property (nonatomic) int64_t approved_by;
@end

@interface ModernTL_channelAdminLogEventActionParticipantLeave : ModernTLObject <TLObject>
@end

@interface ModernTL_channelAdminLogEventActionParticipantMute : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> participant;
@end

@interface ModernTL_channelAdminLogEventActionParticipantSubExtend : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_participant;
@property (nonatomic, strong) id<TLObject> n_new_participant;
@end

@interface ModernTL_channelAdminLogEventActionParticipantToggleAdmin : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_participant;
@property (nonatomic, strong) id<TLObject> n_new_participant;
@end

@interface ModernTL_channelAdminLogEventActionParticipantToggleBan : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> prev_participant;
@property (nonatomic, strong) id<TLObject> n_new_participant;
@end

@interface ModernTL_channelAdminLogEventActionParticipantUnmute : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> participant;
@end

@interface ModernTL_channelAdminLogEventActionParticipantVolume : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> participant;
@end

@interface ModernTL_channelAdminLogEventActionPinTopic : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> prev_topic;
@property (nonatomic, strong) id<TLObject> n_new_topic;
@end

@interface ModernTL_channelAdminLogEventActionSendMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_channelAdminLogEventActionStartGroupCall : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@end

@interface ModernTL_channelAdminLogEventActionStopPoll : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_channelAdminLogEventActionToggleAntiSpam : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionToggleAutotranslation : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionToggleForum : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionToggleGroupCallSetting : ModernTLObject <TLObject>
@property (nonatomic) bool join_muted;
@end

@interface ModernTL_channelAdminLogEventActionToggleInvites : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionToggleNoForwards : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionTogglePreHistoryHidden : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionToggleSignatureProfiles : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionToggleSignatures : ModernTLObject <TLObject>
@property (nonatomic) bool n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionToggleSlowMode : ModernTLObject <TLObject>
@property (nonatomic) int32_t prev_value;
@property (nonatomic) int32_t n_new_value;
@end

@interface ModernTL_channelAdminLogEventActionUpdatePinned : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> message;
@end

@interface ModernTL_updateShort : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> update;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_updateShortChatMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t from_id;
@property (nonatomic) int64_t chat_id;
@property (nonatomic, strong) NSString *message;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> fwd_from;
@property (nonatomic) int64_t via_bot_id;
@property (nonatomic, strong) id<TLObject> reply_to;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic) int32_t ttl_period;
@end

@interface ModernTL_updateShortMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *message;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> fwd_from;
@property (nonatomic) int64_t via_bot_id;
@property (nonatomic, strong) id<TLObject> reply_to;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic) int32_t ttl_period;
@end

@interface ModernTL_updateShortSentMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic) int32_t ttl_period;
@end

@interface ModernTL_updates : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *updates;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t seq;
@end

@interface ModernTL_updatesCombined : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *updates;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t seq_start;
@property (nonatomic) int32_t seq;
@end

@interface ModernTL_updatesTooLong : ModernTLObject <TLObject>
@end

@interface ModernTL_urlAuthResultAccepted : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_urlAuthResultDefault : ModernTLObject <TLObject>
@end

@interface ModernTL_urlAuthResultRequest : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> bot;
@property (nonatomic, strong) NSString *domain;
@property (nonatomic, strong) NSString *browser;
@property (nonatomic, strong) NSString *platform;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *region;
@property (nonatomic, strong) NSArray *match_codes;
@property (nonatomic) int64_t user_id_hint;
@property (nonatomic, strong) NSString *verified_app_name;
@end

@interface ModernTL_user : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t flags2;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> status;
@property (nonatomic) int32_t bot_info_version;
@property (nonatomic, strong) NSArray *restriction_reason;
@property (nonatomic, strong) NSString *bot_inline_placeholder;
@property (nonatomic, strong) NSString *lang_code;
@property (nonatomic, strong) id<TLObject> emoji_status;
@property (nonatomic, strong) NSArray *usernames;
@property (nonatomic, strong) id<TLObject> stories_max_id;
@property (nonatomic, strong) id<TLObject> color;
@property (nonatomic, strong) id<TLObject> profile_color;
@property (nonatomic) int32_t bot_active_users;
@property (nonatomic) int64_t bot_verification_icon;
@property (nonatomic) int64_t send_paid_messages_stars;
@property (nonatomic) int64_t linked_community_id;
@end

@interface ModernTL_userEmpty : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_userFull : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t flags2;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *about;
@property (nonatomic, strong) id<TLObject> settings;
@property (nonatomic, strong) id<TLObject> personal_photo;
@property (nonatomic, strong) id<TLObject> profile_photo;
@property (nonatomic, strong) id<TLObject> fallback_photo;
@property (nonatomic, strong) id<TLObject> notify_settings;
@property (nonatomic, strong) id<TLObject> bot_info;
@property (nonatomic) int32_t pinned_msg_id;
@property (nonatomic) int32_t common_chats_count;
@property (nonatomic) int32_t folder_id;
@property (nonatomic) int32_t ttl_period;
@property (nonatomic, strong) id<TLObject> theme;
@property (nonatomic, strong) NSString *private_forward_name;
@property (nonatomic, strong) id<TLObject> bot_group_admin_rights;
@property (nonatomic, strong) id<TLObject> bot_broadcast_admin_rights;
@property (nonatomic, strong) id<TLObject> wallpaper;
@property (nonatomic, strong) id<TLObject> stories;
@property (nonatomic, strong) id<TLObject> business_work_hours;
@property (nonatomic, strong) id<TLObject> business_location;
@property (nonatomic, strong) id<TLObject> business_greeting_message;
@property (nonatomic, strong) id<TLObject> business_away_message;
@property (nonatomic, strong) id<TLObject> business_intro;
@property (nonatomic, strong) id<TLObject> birthday;
@property (nonatomic) int64_t personal_channel_id;
@property (nonatomic) int32_t personal_channel_message;
@property (nonatomic) int32_t stargifts_count;
@property (nonatomic, strong) id<TLObject> starref_program;
@property (nonatomic, strong) id<TLObject> bot_verification;
@property (nonatomic) int64_t send_paid_messages_stars;
@property (nonatomic, strong) id<TLObject> disallowed_gifts;
@property (nonatomic, strong) id<TLObject> stars_rating;
@property (nonatomic, strong) id<TLObject> stars_my_pending_rating;
@property (nonatomic) int32_t stars_my_pending_rating_date;
@property (nonatomic, strong) id<TLObject> main_tab;
@property (nonatomic, strong) id<TLObject> saved_music;
@property (nonatomic, strong) id<TLObject> note;
@property (nonatomic) int64_t bot_manager_id;
@end

@interface ModernTL_userProfilePhoto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t photo_id;
@property (nonatomic, strong) NSData *stripped_thumb;
@property (nonatomic) int32_t dc_id;
@end

@interface ModernTL_userProfilePhotoEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_userStatusEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_userStatusLastMonth : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_userStatusLastWeek : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_userStatusOffline : ModernTLObject <TLObject>
@property (nonatomic) int32_t was_online;
@end

@interface ModernTL_userStatusOnline : ModernTLObject <TLObject>
@property (nonatomic) int32_t expires;
@end

@interface ModernTL_userStatusRecently : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_username : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *username;
@end

@interface ModernTL_videoSize : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *type;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic) int32_t size;
@property (nonatomic) double video_start_ts;
@end

@interface ModernTL_videoSizeEmojiMarkup : ModernTLObject <TLObject>
@property (nonatomic) int64_t emoji_id;
@property (nonatomic, strong) NSArray *background_colors;
@end

@interface ModernTL_videoSizeStickerMarkup : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> stickerset;
@property (nonatomic) int64_t sticker_id;
@property (nonatomic, strong) NSArray *background_colors;
@end

@interface ModernTL_wallPaper : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) id<TLObject> settings;
@end

@interface ModernTL_wallPaperNoFile : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> settings;
@end

@interface ModernTL_wallPaperSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t background_color;
@property (nonatomic) int32_t second_background_color;
@property (nonatomic) int32_t third_background_color;
@property (nonatomic) int32_t fourth_background_color;
@property (nonatomic) int32_t intensity;
@property (nonatomic) int32_t rotation;
@property (nonatomic, strong) NSString *emoticon;
@end

@interface ModernTL_webAuthorization : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) NSString *domain;
@property (nonatomic, strong) NSString *browser;
@property (nonatomic, strong) NSString *platform;
@property (nonatomic) int32_t date_created;
@property (nonatomic) int32_t date_active;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *region;
@end

@interface ModernTL_webDocument : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t size;
@property (nonatomic, strong) NSString *mime_type;
@property (nonatomic, strong) NSArray *attributes;
@end

@interface ModernTL_webDocumentNoProxy : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t size;
@property (nonatomic, strong) NSString *mime_type;
@property (nonatomic, strong) NSArray *attributes;
@end

@interface ModernTL_webDomainException : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *domain;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int64_t favicon;
@end

@interface ModernTL_webPage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *display_url;
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *site_name;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) NSString *embed_url;
@property (nonatomic, strong) NSString *embed_type;
@property (nonatomic) int32_t embed_width;
@property (nonatomic) int32_t embed_height;
@property (nonatomic) int32_t duration;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) id<TLObject> cached_page;
@property (nonatomic, strong) NSArray *attributes;
@end

@interface ModernTL_webPageEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_webPageNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t cached_page_views;
@end

@interface ModernTL_webPagePending : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_webPageAttributeAiComposeTone : ModernTLObject <TLObject>
@property (nonatomic) int64_t emoji_id;
@end

@interface ModernTL_webPageAttributeStarGiftAuction : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic) int32_t end_date;
@end

@interface ModernTL_webPageAttributeStarGiftCollection : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *icons;
@end

@interface ModernTL_webPageAttributeStickerSet : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *stickers;
@end

@interface ModernTL_webPageAttributeStory : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> story;
@end

@interface ModernTL_webPageAttributeTheme : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *documents;
@property (nonatomic, strong) id<TLObject> settings;
@end

@interface ModernTL_webPageAttributeUniqueStarGift : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> gift;
@end

@interface ModernTL_webViewMessageSent : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> msg_id;
@end

@interface ModernTL_webViewResultUrl : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_account_authorizationForm : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *required_types;
@property (nonatomic, strong) NSArray *values;
@property (nonatomic, strong) NSArray *errors;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *privacy_policy_url;
@end

@interface ModernTL_account_authorizations : ModernTLObject <TLObject>
@property (nonatomic) int32_t authorization_ttl_days;
@property (nonatomic, strong) NSArray *authorizations;
@end

@interface ModernTL_account_autoDownloadSettings : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> low;
@property (nonatomic, strong) id<TLObject> medium;
@property (nonatomic, strong) id<TLObject> high;
@end

@interface ModernTL_account_autoSaveSettings : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> users_settings;
@property (nonatomic, strong) id<TLObject> chats_settings;
@property (nonatomic, strong) id<TLObject> broadcasts_settings;
@property (nonatomic, strong) NSArray *exceptions;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_account_businessChatLinks : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *links;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_account_chatThemes : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *themes;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *next_offset;
@end

@interface ModernTL_account_chatThemesNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_account_connectedBots : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *connected_bots;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_account_contentSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_account_emailVerified : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *email;
@end

@interface ModernTL_account_emailVerifiedLogin : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) id<TLObject> sent_code;
@end

@interface ModernTL_account_emojiStatuses : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *statuses;
@end

@interface ModernTL_account_emojiStatusesNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_account_paidMessagesRevenue : ModernTLObject <TLObject>
@property (nonatomic) int64_t stars_amount;
@end

@interface ModernTL_account_passkeyRegistrationOptions : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> options;
@end

@interface ModernTL_account_passkeys : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *passkeys;
@end

@interface ModernTL_account_password : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> current_algo;
@property (nonatomic, strong) NSData *srp_b;
@property (nonatomic) int64_t srp_id;
@property (nonatomic, strong) NSString *hint;
@property (nonatomic, strong) NSString *email_unconfirmed_pattern;
@property (nonatomic, strong) id<TLObject> n_new_algo;
@property (nonatomic, strong) id<TLObject> n_new_secure_algo;
@property (nonatomic, strong) NSData *secure_random;
@property (nonatomic) int32_t pending_reset_date;
@property (nonatomic, strong) NSString *login_email_pattern;
@end

@interface ModernTL_account_passwordInputSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> n_new_algo;
@property (nonatomic, strong) NSData *n_new_password_hash;
@property (nonatomic, strong) NSString *hint;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) id<TLObject> n_new_secure_settings;
@end

@interface ModernTL_account_passwordSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) id<TLObject> secure_settings;
@end

@interface ModernTL_account_privacyRules : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *rules;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_account_resetPasswordFailedWait : ModernTLObject <TLObject>
@property (nonatomic) int32_t retry_date;
@end

@interface ModernTL_account_resetPasswordOk : ModernTLObject <TLObject>
@end

@interface ModernTL_account_resetPasswordRequestedWait : ModernTLObject <TLObject>
@property (nonatomic) int32_t until_date;
@end

@interface ModernTL_account_resolvedBusinessChatLinks : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_account_savedMusicIds : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *ids;
@end

@interface ModernTL_account_savedMusicIdsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_account_savedRingtone : ModernTLObject <TLObject>
@end

@interface ModernTL_account_savedRingtoneConverted : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> document;
@end

@interface ModernTL_account_savedRingtones : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *ringtones;
@end

@interface ModernTL_account_savedRingtonesNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_account_sentEmailCode : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *email_pattern;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_account_takeout : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_account_themes : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *themes;
@end

@interface ModernTL_account_themesNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_account_tmpPassword : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *tmp_password;
@property (nonatomic) int32_t valid_until;
@end

@interface ModernTL_account_wallPapers : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *wallpapers;
@end

@interface ModernTL_account_wallPapersNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_account_webAuthorizations : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *authorizations;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_account_webBrowserSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *external_exceptions;
@property (nonatomic, strong) NSArray *inapp_exceptions;
@property (nonatomic) int64_t n_hash;
@end

@interface ModernTL_account_webBrowserSettingsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_aicompose_tones : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *tones;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_aicompose_tonesNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_auth_authorization : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t otherwise_relogin_days;
@property (nonatomic) int32_t tmp_sessions;
@property (nonatomic, strong) NSData *future_auth_token;
@property (nonatomic, strong) id<TLObject> user;
@end

@interface ModernTL_auth_authorizationSignUpRequired : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> terms_of_service;
@end

@interface ModernTL_auth_codeTypeCall : ModernTLObject <TLObject>
@end

@interface ModernTL_auth_codeTypeFlashCall : ModernTLObject <TLObject>
@end

@interface ModernTL_auth_codeTypeFragmentSms : ModernTLObject <TLObject>
@end

@interface ModernTL_auth_codeTypeMissedCall : ModernTLObject <TLObject>
@end

@interface ModernTL_auth_codeTypeSms : ModernTLObject <TLObject>
@end

@interface ModernTL_auth_exportedAuthorization : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_auth_loggedOut : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSData *future_auth_token;
@end

@interface ModernTL_auth_loginToken : ModernTLObject <TLObject>
@property (nonatomic) int32_t expires;
@property (nonatomic, strong) NSData *token;
@end

@interface ModernTL_auth_loginTokenMigrateTo : ModernTLObject <TLObject>
@property (nonatomic) int32_t dc_id;
@property (nonatomic, strong) NSData *token;
@end

@interface ModernTL_auth_loginTokenSuccess : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> authorization;
@end

@interface ModernTL_auth_passkeyLoginOptions : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> options;
@end

@interface ModernTL_auth_passwordRecovery : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *email_pattern;
@end

@interface ModernTL_auth_sentCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic, strong) NSString *phone_code_hash;
@property (nonatomic, strong) id<TLObject> next_type;
@property (nonatomic) int32_t timeout;
@end

@interface ModernTL_auth_sentCodePaymentRequired : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *store_product;
@property (nonatomic, strong) NSString *phone_code_hash;
@property (nonatomic, strong) NSString *support_email_address;
@property (nonatomic, strong) NSString *support_email_subject;
@property (nonatomic) int32_t premium_days;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@end

@interface ModernTL_auth_sentCodeSuccess : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> authorization;
@end

@interface ModernTL_auth_sentCodeTypeApp : ModernTLObject <TLObject>
@property (nonatomic) int32_t length;
@end

@interface ModernTL_auth_sentCodeTypeCall : ModernTLObject <TLObject>
@property (nonatomic) int32_t length;
@end

@interface ModernTL_auth_sentCodeTypeEmailCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *email_pattern;
@property (nonatomic) int32_t length;
@property (nonatomic) int32_t reset_available_period;
@property (nonatomic) int32_t reset_pending_date;
@end

@interface ModernTL_auth_sentCodeTypeFirebaseSms : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSData *nonce;
@property (nonatomic) int64_t play_integrity_project_id;
@property (nonatomic, strong) NSData *play_integrity_nonce;
@property (nonatomic, strong) NSString *receipt;
@property (nonatomic) int32_t push_timeout;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_auth_sentCodeTypeFlashCall : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *pattern;
@end

@interface ModernTL_auth_sentCodeTypeFragmentSms : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_auth_sentCodeTypeMissedCall : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *prefix;
@property (nonatomic) int32_t length;
@end

@interface ModernTL_auth_sentCodeTypeSetUpEmailRequired : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_auth_sentCodeTypeSms : ModernTLObject <TLObject>
@property (nonatomic) int32_t length;
@end

@interface ModernTL_auth_sentCodeTypeSmsPhrase : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *beginning;
@end

@interface ModernTL_auth_sentCodeTypeSmsWord : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *beginning;
@end

@interface ModernTL_bots_accessSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *add_users;
@end

@interface ModernTL_bots_botInfo : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *about;
@property (nonatomic, strong) NSString *n_description;
@end

@interface ModernTL_bots_exportedBotToken : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *token;
@end

@interface ModernTL_bots_popularAppBots : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_bots_previewInfo : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *media;
@property (nonatomic, strong) NSArray *lang_codes;
@end

@interface ModernTL_bots_requestedButton : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *webapp_req_id;
@end

@interface ModernTL_channels_adminLogResults : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *events;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_channels_channelParticipant : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> participant;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_channels_channelParticipants : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_channels_channelParticipantsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_channels_found : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *results;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *next_offset;
@end

@interface ModernTL_channels_personalChannels : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *channels;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_channels_sendAsPeers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *peers;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_channels_sponsoredMessageReportResultAdsHidden : ModernTLObject <TLObject>
@end

@interface ModernTL_channels_sponsoredMessageReportResultChooseOption : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *options;
@end

@interface ModernTL_channels_sponsoredMessageReportResultReported : ModernTLObject <TLObject>
@end

@interface ModernTL_chatlists_chatlistInvite : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> title;
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic, strong) NSArray *peers;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_chatlists_chatlistInviteAlready : ModernTLObject <TLObject>
@property (nonatomic) int32_t filter_id;
@property (nonatomic, strong) NSArray *missing_peers;
@property (nonatomic, strong) NSArray *already_peers;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_chatlists_chatlistUpdates : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *missing_peers;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_chatlists_exportedChatlistInvite : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> filter;
@property (nonatomic, strong) id<TLObject> invite;
@end

@interface ModernTL_chatlists_exportedInvites : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *invites;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_communities_participantJoinedChats : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *creator_chat_ids;
@property (nonatomic, strong) NSArray *joined_chat_ids;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_communities_peerLinkRequests : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t total_count;
@property (nonatomic, strong) NSArray *requests;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_blocked : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *blocked;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_blockedSlice : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *blocked;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_contactBirthdays : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *contacts;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_contacts : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *contacts;
@property (nonatomic) int32_t saved_count;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_contactsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_contacts_found : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *my_results;
@property (nonatomic, strong) NSArray *results;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_importedContacts : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *imported;
@property (nonatomic, strong) NSArray *popular_invites;
@property (nonatomic, strong) NSArray *retry_contacts;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_resolvedPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_sponsoredPeers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *peers;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_sponsoredPeersEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_contacts_topPeers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *categories;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_contacts_topPeersDisabled : ModernTLObject <TLObject>
@end

@interface ModernTL_contacts_topPeersNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_fragment_collectibleInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t purchase_date;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t amount;
@property (nonatomic, strong) NSString *crypto_currency;
@property (nonatomic) int64_t crypto_amount;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_help_appConfig : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) id<TLObject> config;
@end

@interface ModernTL_help_appConfigNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_help_appUpdate : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) NSString *version;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> sticker;
@end

@interface ModernTL_help_noAppUpdate : ModernTLObject <TLObject>
@end

@interface ModernTL_help_countriesList : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *countries;
@property (nonatomic) int32_t n_hash;
@end

@interface ModernTL_help_countriesListNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_help_country : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *iso2;
@property (nonatomic, strong) NSString *default_name;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *country_codes;
@end

@interface ModernTL_help_countryCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *country_code;
@property (nonatomic, strong) NSArray *prefixes;
@property (nonatomic, strong) NSArray *patterns;
@end

@interface ModernTL_help_deepLinkInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@end

@interface ModernTL_help_deepLinkInfoEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_help_inviteText : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *message;
@end

@interface ModernTL_help_passportConfig : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) id<TLObject> countries_langs;
@end

@interface ModernTL_help_passportConfigNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_help_peerColorOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t color_id;
@property (nonatomic, strong) id<TLObject> colors;
@property (nonatomic, strong) id<TLObject> dark_colors;
@property (nonatomic) int32_t channel_min_level;
@property (nonatomic) int32_t group_min_level;
@end

@interface ModernTL_help_peerColorProfileSet : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *palette_colors;
@property (nonatomic, strong) NSArray *bg_colors;
@property (nonatomic, strong) NSArray *story_colors;
@end

@interface ModernTL_help_peerColorSet : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *colors;
@end

@interface ModernTL_help_peerColors : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) NSArray *colors;
@end

@interface ModernTL_help_peerColorsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_help_premiumPromo : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *status_text;
@property (nonatomic, strong) NSArray *status_entities;
@property (nonatomic, strong) NSArray *video_sections;
@property (nonatomic, strong) NSArray *videos;
@property (nonatomic, strong) NSArray *period_options;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_help_promoData : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t expires;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSString *psa_type;
@property (nonatomic, strong) NSString *psa_message;
@property (nonatomic, strong) NSArray *pending_suggestions;
@property (nonatomic, strong) NSArray *dismissed_suggestions;
@property (nonatomic, strong) id<TLObject> custom_pending_suggestion;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_help_promoDataEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t expires;
@end

@interface ModernTL_help_recentMeUrls : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *urls;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_help_support : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) id<TLObject> user;
@end

@interface ModernTL_help_supportName : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *name;
@end

@interface ModernTL_help_termsOfService : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> n_id;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic) int32_t min_age_confirm;
@end

@interface ModernTL_help_termsOfServiceUpdate : ModernTLObject <TLObject>
@property (nonatomic) int32_t expires;
@property (nonatomic, strong) id<TLObject> terms_of_service;
@end

@interface ModernTL_help_termsOfServiceUpdateEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t expires;
@end

@interface ModernTL_help_timezonesList : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *timezones;
@property (nonatomic) int32_t n_hash;
@end

@interface ModernTL_help_timezonesListNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_help_userInfo : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) NSString *author;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_help_userInfoEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_affectedFoundMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@property (nonatomic) int32_t offset;
@property (nonatomic, strong) NSArray *messages;
@end

@interface ModernTL_messages_affectedHistory : ModernTLObject <TLObject>
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@property (nonatomic) int32_t offset;
@end

@interface ModernTL_messages_affectedMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t pts_count;
@end

@interface ModernTL_messages_allStickers : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *sets;
@end

@interface ModernTL_messages_allStickersNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_archivedStickers : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *sets;
@end

@interface ModernTL_messages_availableEffects : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) NSArray *effects;
@property (nonatomic, strong) NSArray *documents;
@end

@interface ModernTL_messages_availableEffectsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_availableReactions : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) NSArray *reactions;
@end

@interface ModernTL_messages_availableReactionsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_botApp : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> app;
@end

@interface ModernTL_messages_botCallbackAnswer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t cache_time;
@end

@interface ModernTL_messages_botPreparedInlineMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic) int32_t expire_date;
@end

@interface ModernTL_messages_botResults : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) id<TLObject> switch_pm;
@property (nonatomic, strong) id<TLObject> switch_webview;
@property (nonatomic, strong) NSArray *results;
@property (nonatomic) int32_t cache_time;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_chatAdminsWithInvites : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *admins;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_chatFull : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> full_chat;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_chatInviteImporters : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *importers;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_chatInviteJoinResultOk : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> updates;
@end

@interface ModernTL_messages_chatInviteJoinResultWebView : ModernTLObject <TLObject>
@property (nonatomic) int64_t bot_id;
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_chats : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_messages_chatsSlice : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_messages_checkedHistoryImportPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *confirm_text;
@end

@interface ModernTL_messages_composedMessageWithAI : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> result_text;
@property (nonatomic, strong) id<TLObject> diff_text;
@end

@interface ModernTL_messages_composedRichMessageWithAI : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> result;
@end

@interface ModernTL_messages_dhConfig : ModernTLObject <TLObject>
@property (nonatomic) int32_t g;
@property (nonatomic, strong) NSData *p;
@property (nonatomic) int32_t version;
@property (nonatomic, strong) NSData *random;
@end

@interface ModernTL_messages_dhConfigNotModified : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *random;
@end

@interface ModernTL_messages_dialogFilters : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *filters;
@end

@interface ModernTL_messages_dialogs : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *dialogs;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_dialogsNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@end

@interface ModernTL_messages_dialogsSlice : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *dialogs;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_discussionMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic) int32_t max_id;
@property (nonatomic) int32_t read_inbox_max_id;
@property (nonatomic) int32_t read_outbox_max_id;
@property (nonatomic) int32_t unread_count;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_emojiGameDiceInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *game_hash;
@property (nonatomic) int64_t prev_stake;
@property (nonatomic) int32_t current_streak;
@property (nonatomic, strong) NSArray *params;
@property (nonatomic) int32_t plays_left;
@end

@interface ModernTL_messages_emojiGameUnavailable : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_emojiGameOutcome : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *seed;
@property (nonatomic) int64_t stake_ton_amount;
@property (nonatomic) int64_t ton_amount;
@end

@interface ModernTL_messages_emojiGroups : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) NSArray *groups;
@end

@interface ModernTL_messages_emojiGroupsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_exportedChatInvite : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> invite;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_exportedChatInviteReplaced : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> invite;
@property (nonatomic, strong) id<TLObject> n_new_invite;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_exportedChatInvites : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *invites;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_favedStickers : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *packs;
@property (nonatomic, strong) NSArray *stickers;
@end

@interface ModernTL_messages_favedStickersNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_featuredStickers : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_hash;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *sets;
@property (nonatomic, strong) NSArray *unread;
@end

@interface ModernTL_messages_featuredStickersNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@end

@interface ModernTL_messages_forumTopics : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *topics;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic) int32_t pts;
@end

@interface ModernTL_messages_foundStickerSets : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *sets;
@end

@interface ModernTL_messages_foundStickerSetsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_foundStickers : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t next_offset;
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *stickers;
@end

@interface ModernTL_messages_foundStickersNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t next_offset;
@end

@interface ModernTL_messages_highScores : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *scores;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_historyImport : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_messages_historyImportParsed : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_messages_inactiveChats : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *dates;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_invitedUsers : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> updates;
@property (nonatomic, strong) NSArray *missing_invitees;
@end

@interface ModernTL_messages_messageEditData : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_messages_messageReactionsList : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *reactions;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *next_offset;
@end

@interface ModernTL_messages_messageViews : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *views;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_channelMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t count;
@property (nonatomic) int32_t offset_id_offset;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *topics;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_messages : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *topics;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_messagesNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@end

@interface ModernTL_messages_messagesSlice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic) int32_t next_rate;
@property (nonatomic) int32_t offset_id_offset;
@property (nonatomic, strong) id<TLObject> search_flood;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *topics;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_myStickers : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *sets;
@end

@interface ModernTL_messages_peerDialogs : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *dialogs;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) id<TLObject> state;
@end

@interface ModernTL_messages_peerSettings : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> settings;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_preparedInlineMessage : ModernTLObject <TLObject>
@property (nonatomic) int64_t query_id;
@property (nonatomic, strong) id<TLObject> result;
@property (nonatomic, strong) NSArray *peer_types;
@property (nonatomic) int32_t cache_time;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_quickReplies : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *quick_replies;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_quickRepliesNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_reactions : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *reactions;
@end

@interface ModernTL_messages_reactionsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_recentStickers : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *packs;
@property (nonatomic, strong) NSArray *stickers;
@property (nonatomic, strong) NSArray *dates;
@end

@interface ModernTL_messages_recentStickersNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_savedDialogs : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *dialogs;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_savedDialogsNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@end

@interface ModernTL_messages_savedDialogsSlice : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *dialogs;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_savedGifs : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *gifs;
@end

@interface ModernTL_messages_savedGifsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_savedReactionTags : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *tags;
@property (nonatomic) int64_t n_hash;
@end

@interface ModernTL_messages_savedReactionTagsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_searchCounter : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> filter;
@property (nonatomic) int32_t count;
@end

@interface ModernTL_messages_searchResultsCalendar : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic) int32_t min_date;
@property (nonatomic) int32_t min_msg_id;
@property (nonatomic) int32_t offset_id_offset;
@property (nonatomic, strong) NSArray *periods;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_searchResultsPositions : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *positions;
@end

@interface ModernTL_messages_sentEncryptedFile : ModernTLObject <TLObject>
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> file;
@end

@interface ModernTL_messages_sentEncryptedMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t date;
@end

@interface ModernTL_messages_sponsoredMessages : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t posts_between;
@property (nonatomic) int32_t start_delay;
@property (nonatomic) int32_t between_delay;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_sponsoredMessagesEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_stickerSet : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> set;
@property (nonatomic, strong) NSArray *packs;
@property (nonatomic, strong) NSArray *keywords;
@property (nonatomic, strong) NSArray *documents;
@end

@interface ModernTL_messages_stickerSetNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_stickerSetInstallResultArchive : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *sets;
@end

@interface ModernTL_messages_stickerSetInstallResultSuccess : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_stickers : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *stickers;
@end

@interface ModernTL_messages_stickersNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_messages_transcribedAudio : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t transcription_id;
@property (nonatomic, strong) NSString *text;
@property (nonatomic) int32_t trial_remains_num;
@property (nonatomic) int32_t trial_remains_until_date;
@end

@interface ModernTL_messages_translatedRichMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *result;
@end

@interface ModernTL_messages_translateResult : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *result;
@end

@interface ModernTL_messages_votesList : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *votes;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *next_offset;
@end

@interface ModernTL_messages_webPage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> webpage;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_messages_webPagePreview : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_bankCardData : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *open_urls;
@end

@interface ModernTL_payments_checkCanSendGiftResultFail : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> reason;
@end

@interface ModernTL_payments_checkCanSendGiftResultOk : ModernTLObject <TLObject>
@end

@interface ModernTL_payments_checkedGiftCode : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic) int32_t giveaway_msg_id;
@property (nonatomic) int64_t to_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t days;
@property (nonatomic) int32_t used_date;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_connectedStarRefBots : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *connected_bots;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_exportedInvoice : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_payments_giveawayInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t start_date;
@property (nonatomic) int32_t joined_too_early_date;
@property (nonatomic) int64_t admin_disallowed_chat_id;
@property (nonatomic, strong) NSString *disallowed_country;
@end

@interface ModernTL_payments_giveawayInfoResults : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t start_date;
@property (nonatomic, strong) NSString *gift_code_slug;
@property (nonatomic) int64_t stars_prize;
@property (nonatomic) int32_t finish_date;
@property (nonatomic) int32_t winners_count;
@property (nonatomic) int32_t activated_count;
@end

@interface ModernTL_payments_paymentForm : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t form_id;
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> invoice;
@property (nonatomic) int64_t provider_id;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *native_provider;
@property (nonatomic, strong) id<TLObject> native_params;
@property (nonatomic, strong) NSArray *additional_methods;
@property (nonatomic, strong) id<TLObject> saved_info;
@property (nonatomic, strong) NSArray *saved_credentials;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_paymentFormStarGift : ModernTLObject <TLObject>
@property (nonatomic) int64_t form_id;
@property (nonatomic, strong) id<TLObject> invoice;
@end

@interface ModernTL_payments_paymentFormStars : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t form_id;
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> invoice;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_paymentReceipt : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t bot_id;
@property (nonatomic) int64_t provider_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> invoice;
@property (nonatomic, strong) id<TLObject> info;
@property (nonatomic, strong) id<TLObject> shipping;
@property (nonatomic) int64_t tip_amount;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@property (nonatomic, strong) NSString *credentials_title;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_paymentReceiptStars : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> invoice;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t total_amount;
@property (nonatomic, strong) NSString *transaction_id;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_paymentResult : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> updates;
@end

@interface ModernTL_payments_paymentVerificationNeeded : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_payments_resaleStarGifts : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *gifts;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *attributes;
@property (nonatomic) int64_t attributes_hash;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *counters;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_savedInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> saved_info;
@end

@interface ModernTL_payments_savedStarGifts : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic) bool chat_notifications_enabled;
@property (nonatomic, strong) NSArray *gifts;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_starGiftActiveAuctions : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *auctions;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_payments_starGiftActiveAuctionsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_payments_starGiftAuctionAcquiredGifts : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *gifts;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_payments_starGiftAuctionState : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) id<TLObject> state;
@property (nonatomic, strong) id<TLObject> user_state;
@property (nonatomic) int32_t timeout;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSArray *chats;
@end

@interface ModernTL_payments_starGiftCollections : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *collections;
@end

@interface ModernTL_payments_starGiftCollectionsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_payments_starGiftUpgradeAttributes : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *attributes;
@end

@interface ModernTL_payments_starGiftUpgradePreview : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *sample_attributes;
@property (nonatomic, strong) NSArray *prices;
@property (nonatomic, strong) NSArray *next_prices;
@end

@interface ModernTL_payments_starGiftWithdrawalUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_payments_starGifts : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_hash;
@property (nonatomic, strong) NSArray *gifts;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_starGiftsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_payments_starsRevenueAdsAccountUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_payments_starsRevenueStats : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> top_hours_graph;
@property (nonatomic, strong) id<TLObject> revenue_graph;
@property (nonatomic, strong) id<TLObject> status;
@property (nonatomic) double usd_rate;
@end

@interface ModernTL_payments_starsRevenueWithdrawalUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_payments_starsStatus : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> balance;
@property (nonatomic, strong) NSArray *subscriptions;
@property (nonatomic, strong) NSString *subscriptions_next_offset;
@property (nonatomic) int64_t subscriptions_missing_balance;
@property (nonatomic, strong) NSArray *history;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_suggestedStarRefBots : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *suggested_bots;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *next_offset;
@end

@interface ModernTL_payments_uniqueStarGift : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_payments_uniqueStarGiftValueInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic) int64_t value;
@property (nonatomic) int32_t initial_sale_date;
@property (nonatomic) int64_t initial_sale_stars;
@property (nonatomic) int64_t initial_sale_price;
@property (nonatomic) int32_t last_sale_date;
@property (nonatomic) int64_t last_sale_price;
@property (nonatomic) int64_t floor_price;
@property (nonatomic) int64_t average_price;
@property (nonatomic) int32_t listed_count;
@property (nonatomic) int32_t fragment_listed_count;
@property (nonatomic, strong) NSString *fragment_listed_url;
@end

@interface ModernTL_payments_validatedRequestedInfo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSArray *shipping_options;
@end

@interface ModernTL_phone_exportedGroupCallInvite : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *link;
@end

@interface ModernTL_phone_groupCall : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic, strong) NSString *participants_next_offset;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_phone_groupCallStars : ModernTLObject <TLObject>
@property (nonatomic) int64_t total_stars;
@property (nonatomic, strong) NSArray *top_donors;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_phone_groupCallStreamChannels : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *channels;
@end

@interface ModernTL_phone_groupCallStreamRtmpUrl : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *key;
@end

@interface ModernTL_phone_groupParticipants : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_channelAdminLogEventsFilter : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_channelCategory : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_channelLocation : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> geo_point;
@property (nonatomic, strong) NSString *address;
@end

@interface ModernTL_channelLocationEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_channelMessagesFilter : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *ranges;
@end

@interface ModernTL_channelMessagesFilterEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_channelParticipant : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t subscription_until_date;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_channelParticipantAdmin : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t inviter_id;
@property (nonatomic) int64_t promoted_by;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> admin_rights;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_channelParticipantBanned : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t kicked_by;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> banned_rights;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_channelParticipantCreator : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> admin_rights;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_channelParticipantLeft : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_channelParticipantSelf : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t inviter_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t subscription_until_date;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_channelParticipantsAdmins : ModernTLObject <TLObject>
@end

@interface ModernTL_channelParticipantsBanned : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *q;
@end

@interface ModernTL_channelParticipantsBots : ModernTLObject <TLObject>
@end

@interface ModernTL_channelParticipantsContacts : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *q;
@end

@interface ModernTL_channelParticipantsKicked : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *q;
@end

@interface ModernTL_channelParticipantsMentions : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *q;
@property (nonatomic) int32_t top_msg_id;
@end

@interface ModernTL_channelParticipantsRecent : ModernTLObject <TLObject>
@end

@interface ModernTL_channelParticipantsSearch : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *q;
@end

@interface ModernTL_channel : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t flags2;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSArray *restriction_reason;
@property (nonatomic, strong) id<TLObject> admin_rights;
@property (nonatomic, strong) id<TLObject> banned_rights;
@property (nonatomic, strong) id<TLObject> default_banned_rights;
@property (nonatomic) int32_t participants_count;
@property (nonatomic, strong) NSArray *usernames;
@property (nonatomic, strong) id<TLObject> stories_max_id;
@property (nonatomic, strong) id<TLObject> color;
@property (nonatomic, strong) id<TLObject> profile_color;
@property (nonatomic, strong) id<TLObject> emoji_status;
@property (nonatomic) int32_t level;
@property (nonatomic) int32_t subscription_until_date;
@property (nonatomic) int64_t bot_verification_icon;
@property (nonatomic) int64_t send_paid_messages_stars;
@property (nonatomic) int64_t linked_monoforum_id;
@property (nonatomic) int64_t linked_community_id;
@end

@interface ModernTL_channelForbidden : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int32_t until_date;
@end

@interface ModernTL_chat : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic) int32_t participants_count;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t version;
@property (nonatomic, strong) id<TLObject> migrated_to;
@property (nonatomic, strong) id<TLObject> admin_rights;
@property (nonatomic, strong) id<TLObject> default_banned_rights;
@end

@interface ModernTL_chatEmpty : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_chatForbidden : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_community : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t flags2;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> admin_rights;
@property (nonatomic, strong) id<TLObject> default_banned_rights;
@end

@interface ModernTL_communityForbidden : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_chatAdminRights : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_chatAdminWithInvites : ModernTLObject <TLObject>
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int32_t invites_count;
@property (nonatomic) int32_t revoked_invites_count;
@end

@interface ModernTL_chatBannedRights : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t until_date;
@end

@interface ModernTL_channelFull : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t flags2;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *about;
@property (nonatomic) int32_t participants_count;
@property (nonatomic) int32_t admins_count;
@property (nonatomic) int32_t kicked_count;
@property (nonatomic) int32_t banned_count;
@property (nonatomic) int32_t online_count;
@property (nonatomic) int32_t read_inbox_max_id;
@property (nonatomic) int32_t read_outbox_max_id;
@property (nonatomic) int32_t unread_count;
@property (nonatomic, strong) id<TLObject> chat_photo;
@property (nonatomic, strong) id<TLObject> notify_settings;
@property (nonatomic, strong) id<TLObject> exported_invite;
@property (nonatomic, strong) NSArray *bot_info;
@property (nonatomic) int64_t migrated_from_chat_id;
@property (nonatomic) int32_t migrated_from_max_id;
@property (nonatomic) int32_t pinned_msg_id;
@property (nonatomic, strong) id<TLObject> stickerset;
@property (nonatomic) int32_t available_min_id;
@property (nonatomic) int32_t folder_id;
@property (nonatomic) int64_t linked_chat_id;
@property (nonatomic, strong) id<TLObject> location;
@property (nonatomic) int32_t slowmode_seconds;
@property (nonatomic) int32_t slowmode_next_send_date;
@property (nonatomic) int32_t stats_dc;
@property (nonatomic) int32_t pts;
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic) int32_t ttl_period;
@property (nonatomic, strong) NSArray *pending_suggestions;
@property (nonatomic, strong) id<TLObject> groupcall_default_join_as;
@property (nonatomic, strong) NSString *theme_emoticon;
@property (nonatomic) int32_t requests_pending;
@property (nonatomic, strong) NSArray *recent_requesters;
@property (nonatomic, strong) id<TLObject> default_send_as;
@property (nonatomic, strong) id<TLObject> available_reactions;
@property (nonatomic) int32_t reactions_limit;
@property (nonatomic, strong) id<TLObject> stories;
@property (nonatomic, strong) id<TLObject> wallpaper;
@property (nonatomic) int32_t boosts_applied;
@property (nonatomic) int32_t boosts_unrestrict;
@property (nonatomic, strong) id<TLObject> emojiset;
@property (nonatomic, strong) id<TLObject> bot_verification;
@property (nonatomic) int32_t stargifts_count;
@property (nonatomic) int64_t send_paid_messages_stars;
@property (nonatomic, strong) id<TLObject> main_tab;
@property (nonatomic) int64_t guard_bot_id;
@end

@interface ModernTL_chatFull : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *about;
@property (nonatomic, strong) id<TLObject> participants;
@property (nonatomic, strong) id<TLObject> chat_photo;
@property (nonatomic, strong) id<TLObject> notify_settings;
@property (nonatomic, strong) id<TLObject> exported_invite;
@property (nonatomic, strong) NSArray *bot_info;
@property (nonatomic) int32_t pinned_msg_id;
@property (nonatomic) int32_t folder_id;
@property (nonatomic, strong) id<TLObject> call;
@property (nonatomic) int32_t ttl_period;
@property (nonatomic, strong) id<TLObject> groupcall_default_join_as;
@property (nonatomic, strong) NSString *theme_emoticon;
@property (nonatomic) int32_t requests_pending;
@property (nonatomic, strong) NSArray *recent_requesters;
@property (nonatomic, strong) id<TLObject> available_reactions;
@property (nonatomic) int32_t reactions_limit;
@end

@interface ModernTL_communityFull : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic, strong) NSString *about;
@property (nonatomic, strong) id<TLObject> chat_photo;
@property (nonatomic, strong) NSArray *linked_peers;
@property (nonatomic) int32_t admins_count;
@property (nonatomic) int32_t kicked_count;
@property (nonatomic) int32_t peer_link_requests_pending;
@end

@interface ModernTL_phone_joinAsPeers : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *peers;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_phone_phoneCall : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> phone_call;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_photos_photo : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_photos_photos : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *photos;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_photos_photosSlice : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *photos;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_premium_boostsList : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *boosts;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_premium_boostsStatus : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t level;
@property (nonatomic) int32_t current_level_boosts;
@property (nonatomic) int32_t boosts;
@property (nonatomic) int32_t gift_boosts;
@property (nonatomic) int32_t next_level_boosts;
@property (nonatomic, strong) id<TLObject> premium_audience;
@property (nonatomic, strong) NSString *boost_url;
@property (nonatomic, strong) NSArray *prepaid_giveaways;
@property (nonatomic, strong) NSArray *my_boost_slots;
@end

@interface ModernTL_premium_myBoosts : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *my_boosts;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_smsjobs_eligibleToJoin : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *terms_url;
@property (nonatomic) int32_t monthly_sent_sms;
@end

@interface ModernTL_smsjobs_status : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t recent_sent;
@property (nonatomic) int32_t recent_since;
@property (nonatomic) int32_t recent_remains;
@property (nonatomic) int32_t total_sent;
@property (nonatomic) int32_t total_since;
@property (nonatomic, strong) NSString *last_gift_slug;
@property (nonatomic, strong) NSString *terms_url;
@end

@interface ModernTL_stats_broadcastStats : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> period;
@property (nonatomic, strong) id<TLObject> followers;
@property (nonatomic, strong) id<TLObject> views_per_post;
@property (nonatomic, strong) id<TLObject> shares_per_post;
@property (nonatomic, strong) id<TLObject> reactions_per_post;
@property (nonatomic, strong) id<TLObject> views_per_story;
@property (nonatomic, strong) id<TLObject> shares_per_story;
@property (nonatomic, strong) id<TLObject> reactions_per_story;
@property (nonatomic, strong) id<TLObject> enabled_notifications;
@property (nonatomic, strong) id<TLObject> growth_graph;
@property (nonatomic, strong) id<TLObject> followers_graph;
@property (nonatomic, strong) id<TLObject> mute_graph;
@property (nonatomic, strong) id<TLObject> top_hours_graph;
@property (nonatomic, strong) id<TLObject> interactions_graph;
@property (nonatomic, strong) id<TLObject> iv_interactions_graph;
@property (nonatomic, strong) id<TLObject> views_by_source_graph;
@property (nonatomic, strong) id<TLObject> n_new_followers_by_source_graph;
@property (nonatomic, strong) id<TLObject> languages_graph;
@property (nonatomic, strong) id<TLObject> reactions_by_emotion_graph;
@property (nonatomic, strong) id<TLObject> story_interactions_graph;
@property (nonatomic, strong) id<TLObject> story_reactions_by_emotion_graph;
@property (nonatomic, strong) NSArray *recent_posts_interactions;
@end

@interface ModernTL_stats_megagroupStats : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> period;
@property (nonatomic, strong) id<TLObject> members;
@property (nonatomic, strong) id<TLObject> messages;
@property (nonatomic, strong) id<TLObject> viewers;
@property (nonatomic, strong) id<TLObject> posters;
@property (nonatomic, strong) id<TLObject> growth_graph;
@property (nonatomic, strong) id<TLObject> members_graph;
@property (nonatomic, strong) id<TLObject> n_new_members_by_source_graph;
@property (nonatomic, strong) id<TLObject> languages_graph;
@property (nonatomic, strong) id<TLObject> messages_graph;
@property (nonatomic, strong) id<TLObject> actions_graph;
@property (nonatomic, strong) id<TLObject> top_hours_graph;
@property (nonatomic, strong) id<TLObject> weekdays_graph;
@property (nonatomic, strong) NSArray *top_posters;
@property (nonatomic, strong) NSArray *top_admins;
@property (nonatomic, strong) NSArray *top_inviters;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_stats_messageStats : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> views_graph;
@property (nonatomic, strong) id<TLObject> reactions_by_emotion_graph;
@end

@interface ModernTL_stats_pollStats : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> votes_graph;
@end

@interface ModernTL_stats_publicForwards : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *forwards;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_stats_storyStats : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> views_graph;
@property (nonatomic, strong) id<TLObject> reactions_by_emotion_graph;
@end

@interface ModernTL_stickers_suggestedShortName : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *short_name;
@end

@interface ModernTL_storage_fileGif : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_fileJpeg : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_fileMov : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_fileMp3 : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_fileMp4 : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_filePartial : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_filePdf : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_filePng : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_fileUnknown : ModernTLObject <TLObject>
@end

@interface ModernTL_storage_fileWebp : ModernTLObject <TLObject>
@end

@interface ModernTL_stories_albums : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *albums;
@end

@interface ModernTL_stories_albumsNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_stories_allStories : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSArray *peer_stories;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) id<TLObject> stealth_mode;
@end

@interface ModernTL_stories_allStoriesNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) id<TLObject> stealth_mode;
@end

@interface ModernTL_stories_canSendStoryCount : ModernTLObject <TLObject>
@property (nonatomic) int32_t count_remains;
@end

@interface ModernTL_stories_foundStories : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *stories;
@property (nonatomic, strong) NSString *next_offset;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_stories_peerStories : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> stories;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_stories_stories : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *stories;
@property (nonatomic, strong) NSArray *pinned_to_top;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_stories_storyReactionsList : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *reactions;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *next_offset;
@end

@interface ModernTL_stories_storyViews : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *views;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_stories_storyViewsList : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t count;
@property (nonatomic) int32_t views_count;
@property (nonatomic) int32_t forwards_count;
@property (nonatomic) int32_t reactions_count;
@property (nonatomic, strong) NSArray *views;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSString *next_offset;
@end

@interface ModernTL_updates_channelDifference : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t timeout;
@property (nonatomic, strong) NSArray *n_new_messages;
@property (nonatomic, strong) NSArray *other_updates;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_updates_channelDifferenceEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t timeout;
@end

@interface ModernTL_updates_channelDifferenceTooLong : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t timeout;
@property (nonatomic, strong) id<TLObject> dialog;
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_updates_difference : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *n_new_messages;
@property (nonatomic, strong) NSArray *n_new_encrypted_messages;
@property (nonatomic, strong) NSArray *other_updates;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) id<TLObject> state;
@end

@interface ModernTL_updates_differenceEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t seq;
@end

@interface ModernTL_updates_differenceSlice : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *n_new_messages;
@property (nonatomic, strong) NSArray *n_new_encrypted_messages;
@property (nonatomic, strong) NSArray *other_updates;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) id<TLObject> intermediate_state;
@end

@interface ModernTL_updates_differenceTooLong : ModernTLObject <TLObject>
@property (nonatomic) int32_t pts;
@end

@interface ModernTL_updates_state : ModernTLObject <TLObject>
@property (nonatomic) int32_t pts;
@property (nonatomic) int32_t qts;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t seq;
@property (nonatomic) int32_t unread_count;
@end

@interface ModernTL_upload_cdnFile : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_upload_cdnFileReuploadNeeded : ModernTLObject <TLObject>
@property (nonatomic, strong) NSData *request_token;
@end

@interface ModernTL_upload_file : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> type;
@property (nonatomic) int32_t mtime;
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_upload_fileCdnRedirect : ModernTLObject <TLObject>
@property (nonatomic) int32_t dc_id;
@property (nonatomic, strong) NSData *file_token;
@property (nonatomic, strong) NSData *encryption_key;
@property (nonatomic, strong) NSData *encryption_iv;
@property (nonatomic, strong) NSArray *file_hashes;
@end

@interface ModernTL_upload_webFile : ModernTLObject <TLObject>
@property (nonatomic) int32_t size;
@property (nonatomic, strong) NSString *mime_type;
@property (nonatomic, strong) id<TLObject> file_type;
@property (nonatomic) int32_t mtime;
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_users_savedMusic : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *documents;
@end

@interface ModernTL_users_savedMusicNotModified : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@end

@interface ModernTL_users_userFull : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> full_user;
@property (nonatomic, strong) NSArray *chats;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_users_users : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_users_usersSlice : ModernTLObject <TLObject>
@property (nonatomic) int32_t count;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_chatInvite : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *about;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic) int32_t participants_count;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic) int32_t color;
@property (nonatomic, strong) id<TLObject> subscription_pricing;
@property (nonatomic) int64_t subscription_form_id;
@property (nonatomic, strong) id<TLObject> bot_verification;
@end

@interface ModernTL_chatInviteAlready : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> chat;
@end

@interface ModernTL_chatInvitePeek : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> chat;
@property (nonatomic) int32_t expires;
@end

@interface ModernTL_chatInviteImporter : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *about;
@property (nonatomic) int64_t approved_by;
@end

@interface ModernTL_chatOnlines : ModernTLObject <TLObject>
@property (nonatomic) int32_t onlines;
@end

@interface ModernTL_chatParticipant : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t inviter_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_chatParticipantAdmin : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t inviter_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_chatParticipantCreator : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) NSString *rank;
@end

@interface ModernTL_chatParticipants : ModernTLObject <TLObject>
@property (nonatomic) int64_t chat_id;
@property (nonatomic, strong) NSArray *participants;
@property (nonatomic) int32_t version;
@end

@interface ModernTL_chatParticipantsForbidden : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t chat_id;
@property (nonatomic, strong) id<TLObject> self_participant;
@end

@interface ModernTL_chatPhoto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t photo_id;
@property (nonatomic, strong) NSData *stripped_thumb;
@property (nonatomic) int32_t dc_id;
@end

@interface ModernTL_chatPhotoEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_chatReactionsAll : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_chatReactionsNone : ModernTLObject <TLObject>
@end

@interface ModernTL_chatReactionsSome : ModernTLObject <TLObject>
@property (nonatomic, strong) NSArray *reactions;
@end

@interface ModernTL_chatTheme : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@end

@interface ModernTL_chatThemeUniqueGift : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> gift;
@property (nonatomic, strong) NSArray *theme_settings;
@end

@interface ModernTL_codeSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *logout_tokens;
@property (nonatomic, strong) NSString *token;
@property (nonatomic) bool app_sandbox;
@end

@interface ModernTL_communityPeer : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) bool visible;
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_communityPeerRequest : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int64_t requested_by;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_config : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t expires;
@property (nonatomic) bool test_mode;
@property (nonatomic) int32_t this_dc;
@property (nonatomic, strong) NSArray *dc_options;
@property (nonatomic, strong) NSString *dc_txt_domain_name;
@property (nonatomic) int32_t chat_size_max;
@property (nonatomic) int32_t megagroup_size_max;
@property (nonatomic) int32_t forwarded_count_max;
@property (nonatomic) int32_t online_update_period_ms;
@property (nonatomic) int32_t offline_blur_timeout_ms;
@property (nonatomic) int32_t offline_idle_timeout_ms;
@property (nonatomic) int32_t online_cloud_timeout_ms;
@property (nonatomic) int32_t notify_cloud_delay_ms;
@property (nonatomic) int32_t notify_default_delay_ms;
@property (nonatomic) int32_t push_chat_period_ms;
@property (nonatomic) int32_t push_chat_limit;
@property (nonatomic) int32_t edit_time_limit;
@property (nonatomic) int32_t revoke_time_limit;
@property (nonatomic) int32_t revoke_pm_time_limit;
@property (nonatomic) int32_t rating_e_decay;
@property (nonatomic) int32_t stickers_recent_limit;
@property (nonatomic) int32_t channels_read_media_period;
@property (nonatomic) int32_t tmp_sessions;
@property (nonatomic) int32_t call_receive_timeout_ms;
@property (nonatomic) int32_t call_ring_timeout_ms;
@property (nonatomic) int32_t call_connect_timeout_ms;
@property (nonatomic) int32_t call_packet_timeout_ms;
@property (nonatomic, strong) NSString *me_url_prefix;
@property (nonatomic, strong) NSString *autoupdate_url_prefix;
@property (nonatomic, strong) NSString *gif_search_username;
@property (nonatomic, strong) NSString *venue_search_username;
@property (nonatomic, strong) NSString *img_search_username;
@property (nonatomic, strong) NSString *static_maps_provider;
@property (nonatomic) int32_t caption_length_max;
@property (nonatomic) int32_t message_length_max;
@property (nonatomic) int32_t webfile_dc_id;
@property (nonatomic, strong) NSString *suggested_lang_code;
@property (nonatomic) int32_t lang_pack_version;
@property (nonatomic) int32_t base_lang_pack_version;
@property (nonatomic, strong) id<TLObject> reactions_default;
@property (nonatomic, strong) NSString *autologin_token;
@end

@interface ModernTL_connectedBot : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t bot_id;
@property (nonatomic, strong) id<TLObject> recipients;
@property (nonatomic, strong) id<TLObject> rights;
@property (nonatomic, strong) NSString *device;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *location;
@end

@interface ModernTL_connectedBotStarRef : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t bot_id;
@property (nonatomic) int32_t commission_permille;
@property (nonatomic) int32_t duration_months;
@property (nonatomic) int64_t participants;
@property (nonatomic) int64_t revenue;
@end

@interface ModernTL_contact : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) bool mutual;
@end

@interface ModernTL_contactBirthday : ModernTLObject <TLObject>
@property (nonatomic) int64_t contact_id;
@property (nonatomic, strong) id<TLObject> birthday;
@end

@interface ModernTL_contactStatus : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic, strong) id<TLObject> status;
@end

@interface ModernTL_dataJSON : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *data;
@end

@interface ModernTL_dcOption : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) NSString *ip_address;
@property (nonatomic) int32_t port;
@property (nonatomic, strong) NSData *secret;
@end

@interface ModernTL_defaultHistoryTTL : ModernTLObject <TLObject>
@property (nonatomic) int32_t period;
@end

@interface ModernTL_dialog : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_message;
@property (nonatomic) int32_t read_inbox_max_id;
@property (nonatomic) int32_t read_outbox_max_id;
@property (nonatomic) int32_t unread_count;
@property (nonatomic) int32_t unread_mentions_count;
@property (nonatomic) int32_t unread_reactions_count;
@property (nonatomic) int32_t unread_poll_votes_count;
@property (nonatomic, strong) id<TLObject> notify_settings;
@property (nonatomic) int32_t pts;
@property (nonatomic, strong) id<TLObject> draft;
@property (nonatomic) int32_t folder_id;
@property (nonatomic) int32_t ttl_period;
@end

@interface ModernTL_dialogCommunity : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t community_id;
@property (nonatomic, strong) id<TLObject> notify_settings;
@end

@interface ModernTL_dialogFolder : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> folder;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t top_message;
@property (nonatomic) int32_t unread_muted_peers_count;
@property (nonatomic) int32_t unread_unmuted_peers_count;
@property (nonatomic) int32_t unread_muted_messages_count;
@property (nonatomic) int32_t unread_unmuted_messages_count;
@end

@interface ModernTL_dialogFilter : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> title;
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic) int32_t color;
@property (nonatomic, strong) NSArray *pinned_peers;
@property (nonatomic, strong) NSArray *include_peers;
@property (nonatomic, strong) NSArray *exclude_peers;
@end

@interface ModernTL_dialogFilterChatlist : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> title;
@property (nonatomic, strong) NSString *emoticon;
@property (nonatomic) int32_t color;
@property (nonatomic, strong) NSArray *pinned_peers;
@property (nonatomic, strong) NSArray *include_peers;
@end

@interface ModernTL_dialogFilterDefault : ModernTLObject <TLObject>
@end

@interface ModernTL_dialogFilterSuggested : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> filter;
@property (nonatomic, strong) NSString *n_description;
@end

@interface ModernTL_dialogPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_dialogPeerCommunity : ModernTLObject <TLObject>
@property (nonatomic) int64_t community_id;
@end

@interface ModernTL_dialogPeerFolder : ModernTLObject <TLObject>
@property (nonatomic) int32_t folder_id;
@end

@interface ModernTL_disallowedGiftsSettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@end

@interface ModernTL_document : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *mime_type;
@property (nonatomic) int64_t size;
@property (nonatomic, strong) NSArray *thumbs;
@property (nonatomic, strong) NSArray *video_thumbs;
@property (nonatomic) int32_t dc_id;
@property (nonatomic, strong) NSArray *attributes;
@end

@interface ModernTL_documentEmpty : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@end

@interface ModernTL_documentAttributeAnimated : ModernTLObject <TLObject>
@end

@interface ModernTL_documentAttributeAudio : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t duration;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *performer;
@property (nonatomic, strong) NSData *waveform;
@end

@interface ModernTL_documentAttributeCustomEmoji : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *alt;
@property (nonatomic, strong) id<TLObject> stickerset;
@end

@interface ModernTL_documentAttributeFilename : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *file_name;
@end

@interface ModernTL_documentAttributeHasStickers : ModernTLObject <TLObject>
@end

@interface ModernTL_documentAttributeImageSize : ModernTLObject <TLObject>
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@end

@interface ModernTL_documentAttributeSticker : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *alt;
@property (nonatomic, strong) id<TLObject> stickerset;
@property (nonatomic, strong) id<TLObject> mask_coords;
@end

@interface ModernTL_documentAttributeVideo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) double duration;
@property (nonatomic) int32_t w;
@property (nonatomic) int32_t h;
@property (nonatomic) int32_t preload_prefix_size;
@property (nonatomic) double video_start_ts;
@property (nonatomic, strong) NSString *video_codec;
@end

@interface ModernTL_draftMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> reply_to;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t effect;
@property (nonatomic, strong) id<TLObject> suggested_post;
@property (nonatomic, strong) id<TLObject> rich_message;
@end

@interface ModernTL_draftMessageEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t date;
@end

@interface ModernTL_emailVerificationApple : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *token;
@end

@interface ModernTL_emailVerificationCode : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *code;
@end

@interface ModernTL_emailVerificationGoogle : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *token;
@end

@interface ModernTL_emailVerifyPurposeLoginChange : ModernTLObject <TLObject>
@end

@interface ModernTL_emailVerifyPurposeLoginSetup : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *phone_code_hash;
@end

@interface ModernTL_emailVerifyPurposePassport : ModernTLObject <TLObject>
@end

@interface ModernTL_emojiGroup : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int64_t icon_emoji_id;
@property (nonatomic, strong) NSArray *emoticons;
@end

@interface ModernTL_emojiGroupGreeting : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int64_t icon_emoji_id;
@property (nonatomic, strong) NSArray *emoticons;
@end

@interface ModernTL_emojiGroupPremium : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int64_t icon_emoji_id;
@end

@interface ModernTL_emojiKeyword : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *keyword;
@property (nonatomic, strong) NSArray *emoticons;
@end

@interface ModernTL_emojiKeywordDeleted : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *keyword;
@property (nonatomic, strong) NSArray *emoticons;
@end

@interface ModernTL_emojiKeywordsDifference : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *lang_code;
@property (nonatomic) int32_t from_version;
@property (nonatomic) int32_t version;
@property (nonatomic, strong) NSArray *keywords;
@end

@interface ModernTL_emojiLanguage : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *lang_code;
@end

@interface ModernTL_emojiList : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_hash;
@property (nonatomic, strong) NSArray *document_id;
@end

@interface ModernTL_emojiListNotModified : ModernTLObject <TLObject>
@end

@interface ModernTL_emojiStatus : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t document_id;
@property (nonatomic) int32_t until;
@end

@interface ModernTL_emojiStatusCollectible : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t collectible_id;
@property (nonatomic) int64_t document_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic) int64_t pattern_document_id;
@property (nonatomic) int32_t center_color;
@property (nonatomic) int32_t edge_color;
@property (nonatomic) int32_t pattern_color;
@property (nonatomic) int32_t text_color;
@property (nonatomic) int32_t until;
@end

@interface ModernTL_emojiStatusEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputEmojiStatusCollectible : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t collectible_id;
@property (nonatomic) int32_t until;
@end

@interface ModernTL_emojiURL : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_encryptedChat : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int64_t participant_id;
@property (nonatomic, strong) NSData *g_a_or_b;
@property (nonatomic) int64_t key_fingerprint;
@end

@interface ModernTL_encryptedChatDiscarded : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_encryptedChatEmpty : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_encryptedChatRequested : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t folder_id;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int64_t participant_id;
@property (nonatomic, strong) NSData *g_a;
@end

@interface ModernTL_encryptedChatWaiting : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t date;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int64_t participant_id;
@end

@interface ModernTL_encryptedFile : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int64_t size;
@property (nonatomic) int32_t dc_id;
@property (nonatomic) int32_t key_fingerprint;
@end

@interface ModernTL_encryptedFileEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_encryptedMessage : ModernTLObject <TLObject>
@property (nonatomic) int64_t random_id;
@property (nonatomic) int32_t chat_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSData *bytes;
@property (nonatomic, strong) id<TLObject> file;
@end

@interface ModernTL_encryptedMessageService : ModernTLObject <TLObject>
@property (nonatomic) int64_t random_id;
@property (nonatomic) int32_t chat_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSData *bytes;
@end

@interface ModernTL_ephemeralMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic) int64_t receiver_id;
@property (nonatomic) int32_t top_msg_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> media;
@property (nonatomic, strong) id<TLObject> reply_markup;
@property (nonatomic, strong) id<TLObject> reply_to;
@end

@interface ModernTL_chatInviteExported : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *link;
@property (nonatomic) int64_t admin_id;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t start_date;
@property (nonatomic) int32_t expire_date;
@property (nonatomic) int32_t usage_limit;
@property (nonatomic) int32_t usage;
@property (nonatomic) int32_t requested;
@property (nonatomic) int32_t subscription_expired;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> subscription_pricing;
@end

@interface ModernTL_chatInvitePublicJoinRequests : ModernTLObject <TLObject>
@end

@interface ModernTL_exportedChatlistInvite : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSArray *peers;
@end

@interface ModernTL_exportedContactToken : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *url;
@property (nonatomic) int32_t expires;
@end

@interface ModernTL_exportedMessageLink : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *html;
@end

@interface ModernTL_exportedStoryLink : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *link;
@end

@interface ModernTL_factCheck : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) id<TLObject> text;
@property (nonatomic) int64_t n_hash;
@end

@interface ModernTL_fileHash : ModernTLObject <TLObject>
@property (nonatomic) int64_t offset;
@property (nonatomic) int32_t limit;
@property (nonatomic, strong) NSData *n_hash;
@end

@interface ModernTL_folder : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id<TLObject> photo;
@end

@interface ModernTL_folderPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t folder_id;
@end

@interface ModernTL_forumTopic : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int32_t icon_color;
@property (nonatomic) int64_t icon_emoji_id;
@property (nonatomic) int32_t top_message;
@property (nonatomic) int32_t read_inbox_max_id;
@property (nonatomic) int32_t read_outbox_max_id;
@property (nonatomic) int32_t unread_count;
@property (nonatomic) int32_t unread_mentions_count;
@property (nonatomic) int32_t unread_reactions_count;
@property (nonatomic) int32_t unread_poll_votes_count;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic, strong) id<TLObject> notify_settings;
@property (nonatomic, strong) id<TLObject> draft;
@end

@interface ModernTL_forumTopicDeleted : ModernTLObject <TLObject>
@property (nonatomic) int32_t n_id;
@end

@interface ModernTL_foundStory : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic, strong) id<TLObject> story;
@end

@interface ModernTL_game : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSString *short_name;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> document;
@end

@interface ModernTL_geoPoint : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) double n_long;
@property (nonatomic) double lat;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t accuracy_radius;
@end

@interface ModernTL_geoPointEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_geoPointAddress : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *country_iso2;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *street;
@end

@interface ModernTL_globalPrivacySettings : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t noncontact_peers_paid_stars;
@property (nonatomic, strong) id<TLObject> disallowed_gifts;
@end

@interface ModernTL_groupCall : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t participants_count;
@property (nonatomic, strong) NSString *title;
@property (nonatomic) int32_t stream_dc_id;
@property (nonatomic) int32_t record_start_date;
@property (nonatomic) int32_t schedule_date;
@property (nonatomic) int32_t unmuted_video_count;
@property (nonatomic) int32_t unmuted_video_limit;
@property (nonatomic) int32_t version;
@property (nonatomic, strong) NSString *invite_link;
@property (nonatomic) int64_t send_paid_messages_stars;
@property (nonatomic, strong) id<TLObject> default_send_as;
@end

@interface ModernTL_groupCallDiscarded : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic) int32_t duration;
@end

@interface ModernTL_groupCallDonor : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer_id;
@property (nonatomic) int64_t stars;
@end

@interface ModernTL_groupCallMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t n_id;
@property (nonatomic, strong) id<TLObject> from_id;
@property (nonatomic) int32_t date;
@property (nonatomic, strong) id<TLObject> message;
@property (nonatomic) int64_t paid_message_stars;
@end

@interface ModernTL_groupCallParticipant : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t date;
@property (nonatomic) int32_t active_date;
@property (nonatomic) int32_t source;
@property (nonatomic) int32_t volume;
@property (nonatomic, strong) NSString *about;
@property (nonatomic) int64_t raise_hand_rating;
@property (nonatomic, strong) id<TLObject> video;
@property (nonatomic, strong) id<TLObject> presentation;
@property (nonatomic) int64_t paid_stars_total;
@end

@interface ModernTL_groupCallParticipantVideo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *endpoint;
@property (nonatomic, strong) NSArray *source_groups;
@property (nonatomic) int32_t audio_source;
@end

@interface ModernTL_groupCallParticipantVideoSourceGroup : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *semantics;
@property (nonatomic, strong) NSArray *sources;
@end

@interface ModernTL_groupCallStreamChannel : ModernTLObject <TLObject>
@property (nonatomic) int32_t channel;
@property (nonatomic) int32_t scale;
@property (nonatomic) int64_t last_timestamp_ms;
@end

@interface ModernTL_highScore : ModernTLObject <TLObject>
@property (nonatomic) int32_t pos;
@property (nonatomic) int64_t user_id;
@property (nonatomic) int32_t score;
@end

@interface ModernTL_importedContact : ModernTLObject <TLObject>
@property (nonatomic) int64_t user_id;
@property (nonatomic) int64_t client_id;
@end

@interface ModernTL_inlineBotSwitchPM : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *start_param;
@end

@interface ModernTL_inlineBotWebView : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *url;
@end

@interface ModernTL_inlineQueryPeerTypeBotPM : ModernTLObject <TLObject>
@end

@interface ModernTL_inlineQueryPeerTypeBroadcast : ModernTLObject <TLObject>
@end

@interface ModernTL_inlineQueryPeerTypeChat : ModernTLObject <TLObject>
@end

@interface ModernTL_inlineQueryPeerTypeMegagroup : ModernTLObject <TLObject>
@end

@interface ModernTL_inlineQueryPeerTypePM : ModernTLObject <TLObject>
@end

@interface ModernTL_inlineQueryPeerTypeSameBotPM : ModernTLObject <TLObject>
@end

@interface ModernTL_inputAiComposeToneDefault : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *tone;
@end

@interface ModernTL_inputAiComposeToneID : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputAiComposeToneSingleUse : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *custom_prompt;
@end

@interface ModernTL_inputAiComposeToneSlug : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputAppEvent : ModernTLObject <TLObject>
@property (nonatomic) double time;
@property (nonatomic, strong) NSString *type;
@property (nonatomic) int64_t peer;
@property (nonatomic, strong) id<TLObject> data;
@end

@interface ModernTL_inputBotAppID : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputBotAppShortName : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> bot_id;
@property (nonatomic, strong) NSString *short_name;
@end

@interface ModernTL_inputBotInlineMessageGame : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageMediaAuto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageMediaContact : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *phone_number;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) NSString *vcard;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageMediaGeo : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> geo_point;
@property (nonatomic) int32_t heading;
@property (nonatomic) int32_t period;
@property (nonatomic) int32_t proximity_notification_radius;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageMediaInvoice : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> invoice;
@property (nonatomic, strong) NSData *payload;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) id<TLObject> provider_data;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageMediaVenue : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> geo_point;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *provider;
@property (nonatomic, strong) NSString *venue_id;
@property (nonatomic, strong) NSString *venue_type;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageMediaWebPage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageRichMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> reply_markup;
@property (nonatomic, strong) id<TLObject> rich_message;
@end

@interface ModernTL_inputBotInlineMessageText : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) id<TLObject> reply_markup;
@end

@interface ModernTL_inputBotInlineMessageID : ModernTLObject <TLObject>
@property (nonatomic) int32_t dc_id;
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputBotInlineMessageID64 : ModernTLObject <TLObject>
@property (nonatomic) int32_t dc_id;
@property (nonatomic) int64_t owner_id;
@property (nonatomic) int32_t n_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputBotInlineResult : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) id<TLObject> thumb;
@property (nonatomic, strong) id<TLObject> content;
@property (nonatomic, strong) id<TLObject> send_message;
@end

@interface ModernTL_inputBotInlineResultDocument : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> document;
@property (nonatomic, strong) id<TLObject> send_message;
@end

@interface ModernTL_inputBotInlineResultGame : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *short_name;
@property (nonatomic, strong) id<TLObject> send_message;
@end

@interface ModernTL_inputBotInlineResultPhoto : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *n_id;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) id<TLObject> photo;
@property (nonatomic, strong) id<TLObject> send_message;
@end

@interface ModernTL_inputBusinessAwayMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int32_t shortcut_id;
@property (nonatomic, strong) id<TLObject> schedule;
@property (nonatomic, strong) id<TLObject> recipients;
@end

@interface ModernTL_inputBusinessBotRecipients : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, strong) NSArray *exclude_users;
@end

@interface ModernTL_inputBusinessChatLink : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *entities;
@property (nonatomic, strong) NSString *title;
@end

@interface ModernTL_inputBusinessGreetingMessage : ModernTLObject <TLObject>
@property (nonatomic) int32_t shortcut_id;
@property (nonatomic, strong) id<TLObject> recipients;
@property (nonatomic) int32_t no_activity_days;
@end

@interface ModernTL_inputBusinessIntro : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *n_description;
@property (nonatomic, strong) id<TLObject> sticker;
@end

@interface ModernTL_inputBusinessRecipients : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) NSArray *users;
@end

@interface ModernTL_inputChannel : ModernTLObject <TLObject>
@property (nonatomic) int64_t channel_id;
@property (nonatomic) int64_t access_hash;
@end

@interface ModernTL_inputChannelEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputChannelFromMessage : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@property (nonatomic) int32_t msg_id;
@property (nonatomic) int64_t channel_id;
@end

@interface ModernTL_inputChatPhoto : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> n_id;
@end

@interface ModernTL_inputChatPhotoEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputChatUploadedPhoto : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic, strong) id<TLObject> file;
@property (nonatomic, strong) id<TLObject> video;
@property (nonatomic) double video_start_ts;
@property (nonatomic, strong) id<TLObject> video_emoji_markup;
@end

@interface ModernTL_inputChatTheme : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *emoticon;
@end

@interface ModernTL_inputChatThemeEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputChatThemeUniqueGift : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *slug;
@end

@interface ModernTL_inputChatlistDialogFilter : ModernTLObject <TLObject>
@property (nonatomic) int32_t filter_id;
@end

@interface ModernTL_inputCheckPasswordEmpty : ModernTLObject <TLObject>
@end

@interface ModernTL_inputCheckPasswordSRP : ModernTLObject <TLObject>
@property (nonatomic) int64_t srp_id;
@property (nonatomic, strong) NSData *a;
@property (nonatomic, strong) NSData *m1;
@end

@interface ModernTL_inputClientProxy : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *address;
@property (nonatomic) int32_t port;
@end

@interface ModernTL_inputCollectiblePhone : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *phone;
@end

@interface ModernTL_inputCollectibleUsername : ModernTLObject <TLObject>
@property (nonatomic, strong) NSString *username;
@end

@interface ModernTL_inputPhoneContact : ModernTLObject <TLObject>
@property (nonatomic) int32_t flags;
@property (nonatomic) int64_t client_id;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *first_name;
@property (nonatomic, strong) NSString *last_name;
@property (nonatomic, strong) id<TLObject> note;
@end

@interface ModernTL_inputDialogPeer : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> peer;
@end

@interface ModernTL_inputDialogPeerCommunity : ModernTLObject <TLObject>
@property (nonatomic, strong) id<TLObject> community;
@end

@interface ModernTL_inputDialogPeerFolder : ModernTLObject <TLObject>
@property (nonatomic) int32_t folder_id;
@end

@interface ModernTL_inputDocument : ModernTLObject <TLObject>
@property (nonatomic) int64_t n_id;
@property (nonatomic) int64_t access_hash;
@property (nonatomic, strong) NSData *file_reference;
@end

@interface ModernTL_inputDocumentEmpty : ModernTLObject <TLObject>
@end

NSArray *ModernTLAllParsers(void);
