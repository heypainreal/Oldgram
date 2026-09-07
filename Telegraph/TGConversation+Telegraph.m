#import "TGConversation+Telegraph.h"

#import <LegacyComponents/LegacyComponents.h>

#import "TGImageInfo+Telegraph.h"

#import "TGTelegraph.h"
#import "TGDatabase.h"

#import "TLChat$channel.h"
#import "TLChat$chat.h"
#import "TLChat$channelForbidden.h"

#import "TGChannelAdminRights+Telegraph.h"
#import "TGChannelBannedRights+Telegraph.h"

@implementation TGConversationParticipantsData (Telegraph)

- (id)initWithTelegraphParticipantsDesc:(TLChatParticipants *)participantsDesc
{
    self = [super init];
    if (self != nil)
    {
        _serializedData = nil;
        
        if ([participantsDesc isKindOfClass:[TLChatParticipants$chatParticipants class]])
        {
            TLChatParticipants$chatParticipants *concreteParticipants = (TLChatParticipants$chatParticipants *)participantsDesc;
            
            NSMutableArray *participants = [[NSMutableArray alloc] init];
            NSMutableDictionary *invitedBy = [[NSMutableDictionary alloc] init];
            NSMutableDictionary *invitedDates = [[NSMutableDictionary alloc] init];
            NSMutableSet *chatAdminUids = [[NSMutableSet alloc] init];
            
            for (TLChatParticipant *chatParticipant in concreteParticipants.participants)
            {
                int64_t uid = chatParticipant.user_id;
                [participants addObject:[NSNumber numberWithLongLong:uid]];
                
                if ([chatParticipant isKindOfClass:[TLChatParticipant$chatParticipant class]]) {
                    TLChatParticipant$chatParticipant *concreteParticipant = (TLChatParticipant$chatParticipant *)chatParticipant;

                    int64_t inviterUid = concreteParticipant.inviter_id;
                    [invitedBy setObject:@(inviterUid) forKey:@(uid)];
                    [invitedDates setObject:@(concreteParticipant.date) forKey:@(uid)];
                } else if ([chatParticipant isKindOfClass:[TLChatParticipant$chatParticipantAdmin class]]) {
                    TLChatParticipant$chatParticipantAdmin *concreteParticipant = (TLChatParticipant$chatParticipantAdmin *)chatParticipant;
                    
                    int64_t inviterUid = concreteParticipant.inviter_id;
                    [invitedBy setObject:@(inviterUid) forKey:@(uid)];
                    [invitedDates setObject:@(concreteParticipant.date) forKey:@(uid)];
                    [chatAdminUids addObject:@(uid)];
                } else if ([chatParticipant isKindOfClass:[TLChatParticipant$chatParticipantCreator class]]) {
                    self.chatAdminId = uid;
                }
            }
            
            self.version = concreteParticipants.version;
            
            self.chatParticipantUids = participants;
            self.chatInvitedBy = invitedBy;
            self.chatInvitedDates = invitedDates;
            self.chatAdminUids = chatAdminUids;
        }
    }
    return self;
}

@end


/// Адреса аватарки пира по описанию фото.
///
/// В схеме 228 chatPhoto/userProfilePhoto несут только photo_id и датацентр:
/// координат файла больше нет, поэтому адрес собираем из пира и photo_id.
/// Старый формат (photo_small/photo_big) оставлен для данных из локальной базы.
static void TGApplyChatPhoto(TGConversation *conversation, TLChatPhoto *photo)
{
    if (![photo isKindOfClass:[TLChatPhoto$chatPhoto class]])
    {
        conversation.chatPhotoSmall = nil;
        conversation.chatPhotoMedium = nil;
        conversation.chatPhotoBig = nil;
        return;
    }

    TLChatPhoto$chatPhoto *concretePhoto = (TLChatPhoto$chatPhoto *)photo;

    if (concretePhoto.photo_small == nil)
    {
        if (concretePhoto.photo_id == 0)
        {
            conversation.chatPhotoSmall = nil;
            conversation.chatPhotoMedium = nil;
            conversation.chatPhotoBig = nil;
            return;
        }

        conversation.chatPhotoSmall = TGPeerPhotoUrl(concretePhoto.dc_id, conversation.conversationId, conversation.accessHash, concretePhoto.photo_id, false);
        conversation.chatPhotoMedium = nil;
        conversation.chatPhotoBig = TGPeerPhotoUrl(concretePhoto.dc_id, conversation.conversationId, conversation.accessHash, concretePhoto.photo_id, true);
        return;
    }

    conversation.chatPhotoSmall = extractFileUrl(concretePhoto.photo_small);
    conversation.chatPhotoMedium = nil;
    conversation.chatPhotoBig = extractFileUrl(concretePhoto.photo_big);

    if ([concretePhoto.photo_small isKindOfClass:[TLFileLocation$fileLocation class]])
        conversation.chatPhotoFileReferenceSmall = ((TLFileLocation$fileLocation *)concretePhoto.photo_small).file_reference;

    if ([concretePhoto.photo_big isKindOfClass:[TLFileLocation$fileLocation class]])
        conversation.chatPhotoFileReferenceBig = ((TLFileLocation$fileLocation *)concretePhoto.photo_big).file_reference;
}

@implementation TGConversation (Telegraph)

- (id)initWithTelegraphChatDesc:(TLChat *)chatDesc
{
    self = [super init];
    if (self != nil)
    {
        self.conversationId = -chatDesc.n_id;
        
        self.isChat = true;
        
        if ([chatDesc isKindOfClass:[TLChat$chat class]])
        {
            TLChat$chat *concreteChat = (TLChat$chat *)chatDesc;
            
            self.chatTitle = concreteChat.title;
            self.leftChat = concreteChat.flags & (1 << 2);
            self.kickedFromChat = concreteChat.flags & (1 << 1);
            
            TGApplyChatPhoto(self, concreteChat.photo);
            
            self.chatParticipantCount = concreteChat.participants_count;
            self.chatVersion = concreteChat.version;
            self.hasAdmins = concreteChat.flags & (1 << 3);
            self.isAdmin = concreteChat.flags & (1 << 4);
            self.isCreator = concreteChat.flags & (1 << 0);
            self.isDeactivated = concreteChat.deactivated;
            if (concreteChat.flags & (1 << 6)) {
                self.isMigrated = true;
                if ([concreteChat.migrated_to isKindOfClass:[TLInputChannel$inputChannel class]]) {
                    TLInputChannel$inputChannel *inputChannel = (TLInputChannel$inputChannel *)concreteChat.migrated_to;
                    self.migratedToChannelId = inputChannel.channel_id;
                    self.migratedToChannelAccessHash = inputChannel.access_hash;
                }
            }
            self.chatCreationDate = concreteChat.date;
        }
        else if ([chatDesc isKindOfClass:[TLChat$channel class]])
        {
            self.conversationId = TGPeerIdFromChannelId(chatDesc.n_id);
            
            TLChat$channel *channel = (TLChat$channel *)chatDesc;
            
            self.isChannel = true;
            self.accessHash = channel.access_hash;
            self.chatTitle = channel.title;
            TGApplyChatPhoto(self, channel.photo);
            self.chatCreationDate = channel.date;
            self.chatVersion = channel.version;
            self.importantSortKey = TGConversationSortKeyMake(self.kind, channel.date, 0);
            self.unimportantSortKey = TGConversationSortKeyMake(self.kind, channel.date, 0);
            self.variantSortKey = TGConversationSortKeyMake(self.kind, channel.date, 0);
            self.chatIsAdmin = channel.flags & (1 << 0);
            if (channel.flags & (1 << 0)) {
                self.channelRole = TGChannelRoleCreator;
            } else if (channel.flags & (1 << 3)) {
                self.channelRole = TGChannelRolePublisher;
            } else if (channel.flags & (1 << 4)) {
                self.channelRole = TGChannelRoleModerator;
            }
            self.username = channel.username;
            self.leftChat = channel.flags & (1 << 2);
            self.channelIsReadOnly = channel.flags & (1 << 5);
            self.kickedFromChat = channel.flags & (1 << 1);
            
            self.isVerified = channel.flags & (1 << 7);
            self.isChannelGroup = channel.flags & (1 << 8);
            self.everybodyCanAddMembers = channel.flags & (1 << 10);
            self.signaturesEnabled = channel.flags & (1 << 11);
            self.isMin = channel.flags & (1 << 12);
            self.canNotSetUsername = (channel.flags & (1 << 6)) == 0;
            
            self.displayVariant = self.isChannelGroup ? TGChannelDisplayVariantAll : TGChannelDisplayVariantImportant;
            
            self.postAsChannel = self.channelRole == TGChannelRoleCreator || self.channelRole == TGChannelRolePublisher;
            
            self.hasExplicitContent = channel.flags & (1 << 9);
            self.restrictionReason = channel.restriction_reason;
            
            self.kind = (self.leftChat || self.kickedFromChat) ? TGConversationKindTemporaryChannel : TGConversationKindPersistentChannel;
            
            if (channel.admin_rights != nil) {
                self.channelAdminRights = [[TGChannelAdminRights alloc] initWithTL:channel.admin_rights];
            }
            
            if (channel.banned_rights == nil && channel.default_banned_rights != nil) {
                // В схеме 228 общие ограничения приходят отдельным полем.
                self.channelBannedRights = [[TGChannelBannedRights alloc] initWithTL:channel.default_banned_rights];
            }
            
            if (channel.banned_rights != nil) {
                self.channelBannedRights = [[TGChannelBannedRights alloc] initWithTL:channel.banned_rights];
            }
        }
        else if ([chatDesc isKindOfClass:[TLChat$channelForbidden class]])
        {
            TLChat$channelForbidden *channelForbidden = (TLChat$channelForbidden *)chatDesc;
            self.conversationId = TGPeerIdFromChannelId(channelForbidden.n_id);
            self.accessHash = channelForbidden.access_hash;
            self.leftChat = false;
            self.kickedFromChat = true;
            self.chatTitle = channelForbidden.title;
            self.channelBannedRights = [[TGChannelBannedRights alloc] initWithBanReadMessages:true banSendMessages:true banSendMedia:true banSendStickers:true banSendGifs:true banSendGames:true banSendInline:true banEmbedLinks:true timeout:channelForbidden.until_date == 0 ? INT32_MAX : channelForbidden.until_date];
            self.kind = TGConversationKindTemporaryChannel;
        }
        else if ([chatDesc isKindOfClass:[TLChat$chatForbidden class]])
        {
            TLChat$chatForbidden *concreteChat = (TLChat$chatForbidden *)chatDesc;
            self.chatTitle = concreteChat.title;
            
            self.kickedFromChat = true;
        }
    }
    return self;
}

- (id)initWithTelegraphEncryptedChatDesc:(TLEncryptedChat *)chatDesc
{
    self = [super init];
    if (self != nil)
    {
        self.conversationId = [TGDatabaseInstance() peerIdForEncryptedConversationId:chatDesc.n_id];
        
        self.isChat = true;
        
        int64_t participantUid = 0;
        int64_t adminUid = 0;
        
        int64_t accessHash = 0;
        int64_t keyFingerprint = 0;
        
        if ([chatDesc isKindOfClass:[TLEncryptedChat$encryptedChatWaiting class]])
        {
            TLEncryptedChat$encryptedChatWaiting *concreteChat = (TLEncryptedChat$encryptedChatWaiting *)chatDesc;
            
            adminUid = concreteChat.admin_id;
            participantUid = concreteChat.participant_id;
            accessHash = concreteChat.access_hash;
        }
        else if ([chatDesc isKindOfClass:[TLEncryptedChat$encryptedChatRequested class]])
        {
            TLEncryptedChat$encryptedChatRequested *concreteChat = (TLEncryptedChat$encryptedChatRequested *)chatDesc;
            
            adminUid = concreteChat.admin_id;
            participantUid = concreteChat.participant_id;
            accessHash = concreteChat.access_hash;
        }
        else if ([chatDesc isKindOfClass:[TLEncryptedChat$encryptedChat class]])
        {
            TLEncryptedChat$encryptedChat *concreteChat = (TLEncryptedChat$encryptedChat *)chatDesc;
            
            adminUid = concreteChat.admin_id;
            participantUid = concreteChat.participant_id;
            accessHash = concreteChat.access_hash;
            keyFingerprint = concreteChat.key_fingerprint;
        }
        
        if (participantUid != 0)
        {
            int64_t selfUid = TGTelegraphInstance.clientUserId;
            if (selfUid == participantUid)
                participantUid = adminUid;
            
            TGConversationParticipantsData *participantsData = [[TGConversationParticipantsData alloc] init];
            participantsData.chatParticipantUids = @[@(participantUid)];
            participantsData.chatAdminId = adminUid;
            participantsData.chatInvitedDates = @{@(participantUid): @0};
            participantsData.chatInvitedBy = @{@(participantUid): @(adminUid)};
            self.chatParticipants = participantsData;
        }
        
        TGEncryptedConversationData *encryptedData = [[TGEncryptedConversationData alloc] init];
        encryptedData.encryptedConversationId = chatDesc.n_id;
        encryptedData.accessHash = accessHash;
        encryptedData.keyFingerprint = keyFingerprint;
        self.encryptedData = encryptedData;
    }
    return self;
}

@end
