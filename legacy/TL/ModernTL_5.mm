// Сгенерировано tools/generate_modern_tl.py — не редактировать вручную.
#import "ModernTL.h"
#import <objc/runtime.h>
#import "NSInputStream+TL.h"
#import "NSOutputStream+TL.h"
#import "TLMetaClassStore.h"

@implementation ModernTL_channelAdminLogEventActionCreateTopic
- (int32_t)TLconstructorSignature { return (int32_t)0x58707d28; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionCreateTopic *obj = [[ModernTL_channelAdminLogEventActionCreateTopic alloc] init];
    obj.topic = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.topic, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionDefaultBannedRights
- (int32_t)TLconstructorSignature { return (int32_t)0x2df5fc0a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionDefaultBannedRights *obj = [[ModernTL_channelAdminLogEventActionDefaultBannedRights alloc] init];
    obj.prev_banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_banned_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_banned_rights, true);
    TLMetaClassStore::serializeObject(os, self.n_new_banned_rights, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionDeleteMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x42e047bb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionDeleteMessage *obj = [[ModernTL_channelAdminLogEventActionDeleteMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionDeleteTopic
- (int32_t)TLconstructorSignature { return (int32_t)0xae168909; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionDeleteTopic *obj = [[ModernTL_channelAdminLogEventActionDeleteTopic alloc] init];
    obj.topic = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.topic, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionDiscardGroupCall
- (int32_t)TLconstructorSignature { return (int32_t)0xdb9f9140; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionDiscardGroupCall *obj = [[ModernTL_channelAdminLogEventActionDiscardGroupCall alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionEditMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x709b2405; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionEditMessage *obj = [[ModernTL_channelAdminLogEventActionEditMessage alloc] init];
    obj.prev_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_message, true);
    TLMetaClassStore::serializeObject(os, self.n_new_message, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionEditTopic
- (int32_t)TLconstructorSignature { return (int32_t)0xf06fe208; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionEditTopic *obj = [[ModernTL_channelAdminLogEventActionEditTopic alloc] init];
    obj.prev_topic = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_topic = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_topic, true);
    TLMetaClassStore::serializeObject(os, self.n_new_topic, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionExportedInviteDelete
- (int32_t)TLconstructorSignature { return (int32_t)0x5a50fca4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionExportedInviteDelete *obj = [[ModernTL_channelAdminLogEventActionExportedInviteDelete alloc] init];
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.invite, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionExportedInviteEdit
- (int32_t)TLconstructorSignature { return (int32_t)0xe90ebb59; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionExportedInviteEdit *obj = [[ModernTL_channelAdminLogEventActionExportedInviteEdit alloc] init];
    obj.prev_invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_invite, true);
    TLMetaClassStore::serializeObject(os, self.n_new_invite, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionExportedInviteRevoke
- (int32_t)TLconstructorSignature { return (int32_t)0x410a134e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionExportedInviteRevoke *obj = [[ModernTL_channelAdminLogEventActionExportedInviteRevoke alloc] init];
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.invite, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantEditRank
- (int32_t)TLconstructorSignature { return (int32_t)0x5806b4ec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantEditRank *obj = [[ModernTL_channelAdminLogEventActionParticipantEditRank alloc] init];
    obj.user_id = [is readInt64];
    obj.prev_rank = [is readString];
    obj.n_new_rank = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.user_id];
    [os writeString:self.prev_rank == nil ? @"" : self.prev_rank];
    [os writeString:self.n_new_rank == nil ? @"" : self.n_new_rank];
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantInvite
- (int32_t)TLconstructorSignature { return (int32_t)0xe31c34d8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantInvite *obj = [[ModernTL_channelAdminLogEventActionParticipantInvite alloc] init];
    obj.participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.participant, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantJoin
- (int32_t)TLconstructorSignature { return (int32_t)0x183040d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantJoin *obj = [[ModernTL_channelAdminLogEventActionParticipantJoin alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantJoinByInvite
- (int32_t)TLconstructorSignature { return (int32_t)0xfe9fc158; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantJoinByInvite *obj = [[ModernTL_channelAdminLogEventActionParticipantJoinByInvite alloc] init];
    obj.flags = [is readInt32];
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.invite, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantJoinByRequest
- (int32_t)TLconstructorSignature { return (int32_t)0xafb6144a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantJoinByRequest *obj = [[ModernTL_channelAdminLogEventActionParticipantJoinByRequest alloc] init];
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.approved_by = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.invite, true);
    [os writeInt64:self.approved_by];
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantLeave
- (int32_t)TLconstructorSignature { return (int32_t)0xf89777f2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantLeave *obj = [[ModernTL_channelAdminLogEventActionParticipantLeave alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantMute
- (int32_t)TLconstructorSignature { return (int32_t)0xf92424d2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantMute *obj = [[ModernTL_channelAdminLogEventActionParticipantMute alloc] init];
    obj.participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.participant, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantSubExtend
- (int32_t)TLconstructorSignature { return (int32_t)0x64642db3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantSubExtend *obj = [[ModernTL_channelAdminLogEventActionParticipantSubExtend alloc] init];
    obj.prev_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_participant, true);
    TLMetaClassStore::serializeObject(os, self.n_new_participant, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantToggleAdmin
- (int32_t)TLconstructorSignature { return (int32_t)0xd5676710; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantToggleAdmin *obj = [[ModernTL_channelAdminLogEventActionParticipantToggleAdmin alloc] init];
    obj.prev_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_participant, true);
    TLMetaClassStore::serializeObject(os, self.n_new_participant, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantToggleBan
- (int32_t)TLconstructorSignature { return (int32_t)0xe6d83d7e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantToggleBan *obj = [[ModernTL_channelAdminLogEventActionParticipantToggleBan alloc] init];
    obj.prev_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.prev_participant, true);
    TLMetaClassStore::serializeObject(os, self.n_new_participant, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantUnmute
- (int32_t)TLconstructorSignature { return (int32_t)0xe64429c0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantUnmute *obj = [[ModernTL_channelAdminLogEventActionParticipantUnmute alloc] init];
    obj.participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.participant, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionParticipantVolume
- (int32_t)TLconstructorSignature { return (int32_t)0x3e7f6847; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionParticipantVolume *obj = [[ModernTL_channelAdminLogEventActionParticipantVolume alloc] init];
    obj.participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.participant, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionPinTopic
- (int32_t)TLconstructorSignature { return (int32_t)0x5d8d353b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionPinTopic *obj = [[ModernTL_channelAdminLogEventActionPinTopic alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.prev_topic = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 1)) {
        obj.n_new_topic = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.prev_topic, true);
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.n_new_topic, true);
    }
}
@end

@implementation ModernTL_channelAdminLogEventActionSendMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x278f2868; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionSendMessage *obj = [[ModernTL_channelAdminLogEventActionSendMessage alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionStartGroupCall
- (int32_t)TLconstructorSignature { return (int32_t)0x23209745; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionStartGroupCall *obj = [[ModernTL_channelAdminLogEventActionStartGroupCall alloc] init];
    obj.call = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.call, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionStopPoll
- (int32_t)TLconstructorSignature { return (int32_t)0x8f079643; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionStopPoll *obj = [[ModernTL_channelAdminLogEventActionStopPoll alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleAntiSpam
- (int32_t)TLconstructorSignature { return (int32_t)0x64f36dfc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleAntiSpam *obj = [[ModernTL_channelAdminLogEventActionToggleAntiSpam alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleAutotranslation
- (int32_t)TLconstructorSignature { return (int32_t)0xc517f77e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleAutotranslation *obj = [[ModernTL_channelAdminLogEventActionToggleAutotranslation alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleForum
- (int32_t)TLconstructorSignature { return (int32_t)0x02cc6383; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleForum *obj = [[ModernTL_channelAdminLogEventActionToggleForum alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleGroupCallSetting
- (int32_t)TLconstructorSignature { return (int32_t)0x56d6a247; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleGroupCallSetting *obj = [[ModernTL_channelAdminLogEventActionToggleGroupCallSetting alloc] init];
    obj.join_muted = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.join_muted ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleInvites
- (int32_t)TLconstructorSignature { return (int32_t)0x1b7907ae; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleInvites *obj = [[ModernTL_channelAdminLogEventActionToggleInvites alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleNoForwards
- (int32_t)TLconstructorSignature { return (int32_t)0xcb2ac766; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleNoForwards *obj = [[ModernTL_channelAdminLogEventActionToggleNoForwards alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionTogglePreHistoryHidden
- (int32_t)TLconstructorSignature { return (int32_t)0x5f5c95f1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionTogglePreHistoryHidden *obj = [[ModernTL_channelAdminLogEventActionTogglePreHistoryHidden alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleSignatureProfiles
- (int32_t)TLconstructorSignature { return (int32_t)0x60a79c79; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleSignatureProfiles *obj = [[ModernTL_channelAdminLogEventActionToggleSignatureProfiles alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleSignatures
- (int32_t)TLconstructorSignature { return (int32_t)0x26ae0971; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleSignatures *obj = [[ModernTL_channelAdminLogEventActionToggleSignatures alloc] init];
    obj.n_new_value = [is readInt32] == TL_BOOL_TRUE_CONSTRUCTOR;
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_new_value ? TL_BOOL_TRUE_CONSTRUCTOR : TL_BOOL_FALSE_CONSTRUCTOR];
}
@end

@implementation ModernTL_channelAdminLogEventActionToggleSlowMode
- (int32_t)TLconstructorSignature { return (int32_t)0x53909779; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionToggleSlowMode *obj = [[ModernTL_channelAdminLogEventActionToggleSlowMode alloc] init];
    obj.prev_value = [is readInt32];
    obj.n_new_value = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.prev_value];
    [os writeInt32:self.n_new_value];
}
@end

@implementation ModernTL_channelAdminLogEventActionUpdatePinned
- (int32_t)TLconstructorSignature { return (int32_t)0xe9e82c18; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channelAdminLogEventActionUpdatePinned *obj = [[ModernTL_channelAdminLogEventActionUpdatePinned alloc] init];
    obj.message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.message, true);
}
@end

@implementation ModernTL_updateShort
- (int32_t)TLconstructorSignature { return (int32_t)0x78d4dec1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateShort *obj = [[ModernTL_updateShort alloc] init];
    obj.update = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.update, true);
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_updateShortChatMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x4d6deea5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateShortChatMessage *obj = [[ModernTL_updateShortChatMessage alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt32];
    obj.from_id = [is readInt64];
    obj.chat_id = [is readInt64];
    obj.message = [is readString];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    obj.date = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.fwd_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 11)) {
        obj.via_bot_id = [is readInt64];
    }
    if (obj.flags & (1 << 3)) {
        obj.reply_to = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.entities = items;
        }
    }
    if (obj.flags & (1 << 25)) {
        obj.ttl_period = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.n_id];
    [os writeInt64:self.from_id];
    [os writeInt64:self.chat_id];
    [os writeString:self.message == nil ? @"" : self.message];
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
    [os writeInt32:self.date];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.fwd_from, true);
    }
    if (self.flags & (1 << 11)) {
        [os writeInt64:self.via_bot_id];
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.reply_to, true);
    }
    if (self.flags & (1 << 7)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 25)) {
        [os writeInt32:self.ttl_period];
    }
}
@end

@implementation ModernTL_updateShortMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x313bc7f8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateShortMessage *obj = [[ModernTL_updateShortMessage alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt32];
    obj.user_id = [is readInt64];
    obj.message = [is readString];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    obj.date = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.fwd_from = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 11)) {
        obj.via_bot_id = [is readInt64];
    }
    if (obj.flags & (1 << 3)) {
        obj.reply_to = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.entities = items;
        }
    }
    if (obj.flags & (1 << 25)) {
        obj.ttl_period = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.n_id];
    [os writeInt64:self.user_id];
    [os writeString:self.message == nil ? @"" : self.message];
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
    [os writeInt32:self.date];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.fwd_from, true);
    }
    if (self.flags & (1 << 11)) {
        [os writeInt64:self.via_bot_id];
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.reply_to, true);
    }
    if (self.flags & (1 << 7)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 25)) {
        [os writeInt32:self.ttl_period];
    }
}
@end

@implementation ModernTL_updateShortSentMessage
- (int32_t)TLconstructorSignature { return (int32_t)0x9015e101; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updateShortSentMessage *obj = [[ModernTL_updateShortSentMessage alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt32];
    obj.pts = [is readInt32];
    obj.pts_count = [is readInt32];
    obj.date = [is readInt32];
    if (obj.flags & (1 << 9)) {
        obj.media = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 7)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.entities = items;
        }
    }
    if (obj.flags & (1 << 25)) {
        obj.ttl_period = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.n_id];
    [os writeInt32:self.pts];
    [os writeInt32:self.pts_count];
    [os writeInt32:self.date];
    if (self.flags & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.media, true);
    }
    if (self.flags & (1 << 7)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 25)) {
        [os writeInt32:self.ttl_period];
    }
}
@end

@implementation ModernTL_updates
- (int32_t)TLconstructorSignature { return (int32_t)0x74ae4240; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updates *obj = [[ModernTL_updates alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.updates = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    obj.date = [is readInt32];
    obj.seq = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.updates.count];
        for (id item in self.updates) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.date];
    [os writeInt32:self.seq];
}
@end

@implementation ModernTL_updatesCombined
- (int32_t)TLconstructorSignature { return (int32_t)0x725b04c3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatesCombined *obj = [[ModernTL_updatesCombined alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.updates = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    obj.date = [is readInt32];
    obj.seq_start = [is readInt32];
    obj.seq = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.updates.count];
        for (id item in self.updates) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.date];
    [os writeInt32:self.seq_start];
    [os writeInt32:self.seq];
}
@end

@implementation ModernTL_updatesTooLong
- (int32_t)TLconstructorSignature { return (int32_t)0xe317af7e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_updatesTooLong *obj = [[ModernTL_updatesTooLong alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_urlAuthResultAccepted
- (int32_t)TLconstructorSignature { return (int32_t)0x623a8fa0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_urlAuthResultAccepted *obj = [[ModernTL_urlAuthResultAccepted alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.url = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
}
@end

@implementation ModernTL_urlAuthResultDefault
- (int32_t)TLconstructorSignature { return (int32_t)0xa9d6db1f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_urlAuthResultDefault *obj = [[ModernTL_urlAuthResultDefault alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_urlAuthResultRequest
- (int32_t)TLconstructorSignature { return (int32_t)0x3cd623ec; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_urlAuthResultRequest *obj = [[ModernTL_urlAuthResultRequest alloc] init];
    obj.flags = [is readInt32];
    obj.bot = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.domain = [is readString];
    if (obj.flags & (1 << 2)) {
        obj.browser = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.platform = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.ip = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.region = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                NSString *item = [is readString];
                [items addObject:item == nil ? @"" : item];
            }
            obj.match_codes = items;
        }
    }
    if (obj.flags & (1 << 4)) {
        obj.user_id_hint = [is readInt64];
    }
    if (obj.flags & (1 << 7)) {
        obj.verified_app_name = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.bot, true);
    [os writeString:self.domain == nil ? @"" : self.domain];
    if (self.flags & (1 << 2)) {
        [os writeString:self.browser == nil ? @"" : self.browser];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.platform == nil ? @"" : self.platform];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.ip == nil ? @"" : self.ip];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.region == nil ? @"" : self.region];
    }
    if (self.flags & (1 << 3)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.match_codes.count];
            for (id item in self.match_codes) {
                [os writeString:item];
            }
        }
    }
    if (self.flags & (1 << 4)) {
        [os writeInt64:self.user_id_hint];
    }
    if (self.flags & (1 << 7)) {
        [os writeString:self.verified_app_name == nil ? @"" : self.verified_app_name];
    }
}
@end

@implementation ModernTL_user
- (int32_t)TLconstructorSignature { return (int32_t)0xb1b8cc83; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_user *obj = [[ModernTL_user alloc] init];
    obj.flags = [is readInt32];
    obj.flags2 = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.access_hash = [is readInt64];
    }
    if (obj.flags & (1 << 1)) {
        obj.first_name = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.last_name = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.username = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.phone = [is readString];
    }
    if (obj.flags & (1 << 5)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 6)) {
        obj.status = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 14)) {
        obj.bot_info_version = [is readInt32];
    }
    if (obj.flags & (1 << 18)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.restriction_reason = items;
        }
    }
    if (obj.flags & (1 << 19)) {
        obj.bot_inline_placeholder = [is readString];
    }
    if (obj.flags & (1 << 22)) {
        obj.lang_code = [is readString];
    }
    if (obj.flags & (1 << 30)) {
        obj.emoji_status = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.usernames = items;
        }
    }
    if (obj.flags2 & (1 << 5)) {
        obj.stories_max_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 8)) {
        obj.color = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 9)) {
        obj.profile_color = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 12)) {
        obj.bot_active_users = [is readInt32];
    }
    if (obj.flags2 & (1 << 14)) {
        obj.bot_verification_icon = [is readInt64];
    }
    if (obj.flags2 & (1 << 15)) {
        obj.send_paid_messages_stars = [is readInt64];
    }
    if (obj.flags2 & (1 << 21)) {
        obj.linked_community_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.flags2];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.access_hash];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.first_name == nil ? @"" : self.first_name];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.last_name == nil ? @"" : self.last_name];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.username == nil ? @"" : self.username];
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.phone == nil ? @"" : self.phone];
    }
    if (self.flags & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    if (self.flags & (1 << 6)) {
        TLMetaClassStore::serializeObject(os, self.status, true);
    }
    if (self.flags & (1 << 14)) {
        [os writeInt32:self.bot_info_version];
    }
    if (self.flags & (1 << 18)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.restriction_reason.count];
            for (id item in self.restriction_reason) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 19)) {
        [os writeString:self.bot_inline_placeholder == nil ? @"" : self.bot_inline_placeholder];
    }
    if (self.flags & (1 << 22)) {
        [os writeString:self.lang_code == nil ? @"" : self.lang_code];
    }
    if (self.flags & (1 << 30)) {
        TLMetaClassStore::serializeObject(os, self.emoji_status, true);
    }
    if (self.flags2 & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.usernames.count];
            for (id item in self.usernames) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags2 & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.stories_max_id, true);
    }
    if (self.flags2 & (1 << 8)) {
        TLMetaClassStore::serializeObject(os, self.color, true);
    }
    if (self.flags2 & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.profile_color, true);
    }
    if (self.flags2 & (1 << 12)) {
        [os writeInt32:self.bot_active_users];
    }
    if (self.flags2 & (1 << 14)) {
        [os writeInt64:self.bot_verification_icon];
    }
    if (self.flags2 & (1 << 15)) {
        [os writeInt64:self.send_paid_messages_stars];
    }
    if (self.flags2 & (1 << 21)) {
        [os writeInt64:self.linked_community_id];
    }
}
@end

@implementation ModernTL_userEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xd3bc4b7a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userEmpty *obj = [[ModernTL_userEmpty alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_userFull
- (int32_t)TLconstructorSignature { return (int32_t)0x06cbe645; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userFull *obj = [[ModernTL_userFull alloc] init];
    obj.flags = [is readInt32];
    obj.flags2 = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.about = [is readString];
    }
    obj.settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 21)) {
        obj.personal_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.profile_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 22)) {
        obj.fallback_photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    obj.notify_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 3)) {
        obj.bot_info = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 6)) {
        obj.pinned_msg_id = [is readInt32];
    }
    obj.common_chats_count = [is readInt32];
    if (obj.flags & (1 << 11)) {
        obj.folder_id = [is readInt32];
    }
    if (obj.flags & (1 << 14)) {
        obj.ttl_period = [is readInt32];
    }
    if (obj.flags & (1 << 15)) {
        obj.theme = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 16)) {
        obj.private_forward_name = [is readString];
    }
    if (obj.flags & (1 << 17)) {
        obj.bot_group_admin_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 18)) {
        obj.bot_broadcast_admin_rights = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 24)) {
        obj.wallpaper = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 25)) {
        obj.stories = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 0)) {
        obj.business_work_hours = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 1)) {
        obj.business_location = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 2)) {
        obj.business_greeting_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 3)) {
        obj.business_away_message = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 4)) {
        obj.business_intro = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 5)) {
        obj.birthday = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 6)) {
        obj.personal_channel_id = [is readInt64];
    }
    if (obj.flags2 & (1 << 6)) {
        obj.personal_channel_message = [is readInt32];
    }
    if (obj.flags2 & (1 << 8)) {
        obj.stargifts_count = [is readInt32];
    }
    if (obj.flags2 & (1 << 11)) {
        obj.starref_program = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 12)) {
        obj.bot_verification = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 14)) {
        obj.send_paid_messages_stars = [is readInt64];
    }
    if (obj.flags2 & (1 << 15)) {
        obj.disallowed_gifts = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 17)) {
        obj.stars_rating = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 18)) {
        obj.stars_my_pending_rating = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 18)) {
        obj.stars_my_pending_rating_date = [is readInt32];
    }
    if (obj.flags2 & (1 << 20)) {
        obj.main_tab = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 21)) {
        obj.saved_music = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 22)) {
        obj.note = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags2 & (1 << 25)) {
        obj.bot_manager_id = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.flags2];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 1)) {
        [os writeString:self.about == nil ? @"" : self.about];
    }
    TLMetaClassStore::serializeObject(os, self.settings, true);
    if (self.flags & (1 << 21)) {
        TLMetaClassStore::serializeObject(os, self.personal_photo, true);
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.profile_photo, true);
    }
    if (self.flags & (1 << 22)) {
        TLMetaClassStore::serializeObject(os, self.fallback_photo, true);
    }
    TLMetaClassStore::serializeObject(os, self.notify_settings, true);
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.bot_info, true);
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.pinned_msg_id];
    }
    [os writeInt32:self.common_chats_count];
    if (self.flags & (1 << 11)) {
        [os writeInt32:self.folder_id];
    }
    if (self.flags & (1 << 14)) {
        [os writeInt32:self.ttl_period];
    }
    if (self.flags & (1 << 15)) {
        TLMetaClassStore::serializeObject(os, self.theme, true);
    }
    if (self.flags & (1 << 16)) {
        [os writeString:self.private_forward_name == nil ? @"" : self.private_forward_name];
    }
    if (self.flags & (1 << 17)) {
        TLMetaClassStore::serializeObject(os, self.bot_group_admin_rights, true);
    }
    if (self.flags & (1 << 18)) {
        TLMetaClassStore::serializeObject(os, self.bot_broadcast_admin_rights, true);
    }
    if (self.flags & (1 << 24)) {
        TLMetaClassStore::serializeObject(os, self.wallpaper, true);
    }
    if (self.flags & (1 << 25)) {
        TLMetaClassStore::serializeObject(os, self.stories, true);
    }
    if (self.flags2 & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.business_work_hours, true);
    }
    if (self.flags2 & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.business_location, true);
    }
    if (self.flags2 & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.business_greeting_message, true);
    }
    if (self.flags2 & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.business_away_message, true);
    }
    if (self.flags2 & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.business_intro, true);
    }
    if (self.flags2 & (1 << 5)) {
        TLMetaClassStore::serializeObject(os, self.birthday, true);
    }
    if (self.flags2 & (1 << 6)) {
        [os writeInt64:self.personal_channel_id];
    }
    if (self.flags2 & (1 << 6)) {
        [os writeInt32:self.personal_channel_message];
    }
    if (self.flags2 & (1 << 8)) {
        [os writeInt32:self.stargifts_count];
    }
    if (self.flags2 & (1 << 11)) {
        TLMetaClassStore::serializeObject(os, self.starref_program, true);
    }
    if (self.flags2 & (1 << 12)) {
        TLMetaClassStore::serializeObject(os, self.bot_verification, true);
    }
    if (self.flags2 & (1 << 14)) {
        [os writeInt64:self.send_paid_messages_stars];
    }
    if (self.flags2 & (1 << 15)) {
        TLMetaClassStore::serializeObject(os, self.disallowed_gifts, true);
    }
    if (self.flags2 & (1 << 17)) {
        TLMetaClassStore::serializeObject(os, self.stars_rating, true);
    }
    if (self.flags2 & (1 << 18)) {
        TLMetaClassStore::serializeObject(os, self.stars_my_pending_rating, true);
    }
    if (self.flags2 & (1 << 18)) {
        [os writeInt32:self.stars_my_pending_rating_date];
    }
    if (self.flags2 & (1 << 20)) {
        TLMetaClassStore::serializeObject(os, self.main_tab, true);
    }
    if (self.flags2 & (1 << 21)) {
        TLMetaClassStore::serializeObject(os, self.saved_music, true);
    }
    if (self.flags2 & (1 << 22)) {
        TLMetaClassStore::serializeObject(os, self.note, true);
    }
    if (self.flags2 & (1 << 25)) {
        [os writeInt64:self.bot_manager_id];
    }
}
@end

@implementation ModernTL_userProfilePhoto
- (int32_t)TLconstructorSignature { return (int32_t)0x82d1f706; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userProfilePhoto *obj = [[ModernTL_userProfilePhoto alloc] init];
    obj.flags = [is readInt32];
    obj.photo_id = [is readInt64];
    if (obj.flags & (1 << 1)) {
        obj.stripped_thumb = [is readBytes];
    }
    obj.dc_id = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.photo_id];
    if (self.flags & (1 << 1)) {
        [os writeBytes:self.stripped_thumb == nil ? [NSData data] : self.stripped_thumb];
    }
    [os writeInt32:self.dc_id];
}
@end

@implementation ModernTL_userProfilePhotoEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x4f11bae1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userProfilePhotoEmpty *obj = [[ModernTL_userProfilePhotoEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_userStatusEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x09d05049; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userStatusEmpty *obj = [[ModernTL_userStatusEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_userStatusLastMonth
- (int32_t)TLconstructorSignature { return (int32_t)0x65899777; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userStatusLastMonth *obj = [[ModernTL_userStatusLastMonth alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_userStatusLastWeek
- (int32_t)TLconstructorSignature { return (int32_t)0x541a1d1a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userStatusLastWeek *obj = [[ModernTL_userStatusLastWeek alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_userStatusOffline
- (int32_t)TLconstructorSignature { return (int32_t)0x008c703f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userStatusOffline *obj = [[ModernTL_userStatusOffline alloc] init];
    obj.was_online = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.was_online];
}
@end

@implementation ModernTL_userStatusOnline
- (int32_t)TLconstructorSignature { return (int32_t)0xedb93949; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userStatusOnline *obj = [[ModernTL_userStatusOnline alloc] init];
    obj.expires = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.expires];
}
@end

@implementation ModernTL_userStatusRecently
- (int32_t)TLconstructorSignature { return (int32_t)0x7b197dc8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_userStatusRecently *obj = [[ModernTL_userStatusRecently alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_username
- (int32_t)TLconstructorSignature { return (int32_t)0xb4073647; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_username *obj = [[ModernTL_username alloc] init];
    obj.flags = [is readInt32];
    obj.username = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.username == nil ? @"" : self.username];
}
@end

@implementation ModernTL_videoSize
- (int32_t)TLconstructorSignature { return (int32_t)0xde33b094; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_videoSize *obj = [[ModernTL_videoSize alloc] init];
    obj.flags = [is readInt32];
    obj.type = [is readString];
    obj.w = [is readInt32];
    obj.h = [is readInt32];
    obj.size = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.video_start_ts = [is readDouble];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.type == nil ? @"" : self.type];
    [os writeInt32:self.w];
    [os writeInt32:self.h];
    [os writeInt32:self.size];
    if (self.flags & (1 << 0)) {
        [os writeDouble:self.video_start_ts];
    }
}
@end

@implementation ModernTL_videoSizeEmojiMarkup
- (int32_t)TLconstructorSignature { return (int32_t)0xf85c413c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_videoSizeEmojiMarkup *obj = [[ModernTL_videoSizeEmojiMarkup alloc] init];
    obj.emoji_id = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.background_colors = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.emoji_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.background_colors.count];
        for (id item in self.background_colors) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_videoSizeStickerMarkup
- (int32_t)TLconstructorSignature { return (int32_t)0x0da082fe; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_videoSizeStickerMarkup *obj = [[ModernTL_videoSizeStickerMarkup alloc] init];
    obj.stickerset = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.sticker_id = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.background_colors = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.stickerset, true);
    [os writeInt64:self.sticker_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.background_colors.count];
        for (id item in self.background_colors) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_wallPaper
- (int32_t)TLconstructorSignature { return (int32_t)0xa437c3ed; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_wallPaper *obj = [[ModernTL_wallPaper alloc] init];
    obj.n_id = [is readInt64];
    obj.flags = [is readInt32];
    obj.access_hash = [is readInt64];
    obj.slug = [is readString];
    obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 2)) {
        obj.settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.flags];
    [os writeInt64:self.access_hash];
    [os writeString:self.slug == nil ? @"" : self.slug];
    TLMetaClassStore::serializeObject(os, self.document, true);
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.settings, true);
    }
}
@end

@implementation ModernTL_wallPaperNoFile
- (int32_t)TLconstructorSignature { return (int32_t)0xe0804116; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_wallPaperNoFile *obj = [[ModernTL_wallPaperNoFile alloc] init];
    obj.n_id = [is readInt64];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.settings, true);
    }
}
@end

@implementation ModernTL_wallPaperSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x372efcd0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_wallPaperSettings *obj = [[ModernTL_wallPaperSettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.background_color = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.second_background_color = [is readInt32];
    }
    if (obj.flags & (1 << 5)) {
        obj.third_background_color = [is readInt32];
    }
    if (obj.flags & (1 << 6)) {
        obj.fourth_background_color = [is readInt32];
    }
    if (obj.flags & (1 << 3)) {
        obj.intensity = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.rotation = [is readInt32];
    }
    if (obj.flags & (1 << 7)) {
        obj.emoticon = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.background_color];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.second_background_color];
    }
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.third_background_color];
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.fourth_background_color];
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.intensity];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.rotation];
    }
    if (self.flags & (1 << 7)) {
        [os writeString:self.emoticon == nil ? @"" : self.emoticon];
    }
}
@end

@implementation ModernTL_webAuthorization
- (int32_t)TLconstructorSignature { return (int32_t)0xa6f8f452; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webAuthorization *obj = [[ModernTL_webAuthorization alloc] init];
    obj.n_hash = [is readInt64];
    obj.bot_id = [is readInt64];
    obj.domain = [is readString];
    obj.browser = [is readString];
    obj.platform = [is readString];
    obj.date_created = [is readInt32];
    obj.date_active = [is readInt32];
    obj.ip = [is readString];
    obj.region = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    [os writeInt64:self.bot_id];
    [os writeString:self.domain == nil ? @"" : self.domain];
    [os writeString:self.browser == nil ? @"" : self.browser];
    [os writeString:self.platform == nil ? @"" : self.platform];
    [os writeInt32:self.date_created];
    [os writeInt32:self.date_active];
    [os writeString:self.ip == nil ? @"" : self.ip];
    [os writeString:self.region == nil ? @"" : self.region];
}
@end

@implementation ModernTL_webDocument
- (int32_t)TLconstructorSignature { return (int32_t)0x1c570ed1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webDocument *obj = [[ModernTL_webDocument alloc] init];
    obj.url = [is readString];
    obj.access_hash = [is readInt64];
    obj.size = [is readInt32];
    obj.mime_type = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.attributes = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt64:self.access_hash];
    [os writeInt32:self.size];
    [os writeString:self.mime_type == nil ? @"" : self.mime_type];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.attributes.count];
        for (id item in self.attributes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_webDocumentNoProxy
- (int32_t)TLconstructorSignature { return (int32_t)0xf9c8bcc6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webDocumentNoProxy *obj = [[ModernTL_webDocumentNoProxy alloc] init];
    obj.url = [is readString];
    obj.size = [is readInt32];
    obj.mime_type = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.attributes = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt32:self.size];
    [os writeString:self.mime_type == nil ? @"" : self.mime_type];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.attributes.count];
        for (id item in self.attributes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_webDomainException
- (int32_t)TLconstructorSignature { return (int32_t)0x933ca597; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webDomainException *obj = [[ModernTL_webDomainException alloc] init];
    obj.flags = [is readInt32];
    obj.domain = [is readString];
    obj.url = [is readString];
    obj.title = [is readString];
    if (obj.flags & (1 << 0)) {
        obj.favicon = [is readInt64];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.domain == nil ? @"" : self.domain];
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeString:self.title == nil ? @"" : self.title];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.favicon];
    }
}
@end

@implementation ModernTL_webPage
- (int32_t)TLconstructorSignature { return (int32_t)0xe89c45b2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPage *obj = [[ModernTL_webPage alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    obj.url = [is readString];
    obj.display_url = [is readString];
    obj.n_hash = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.type = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.site_name = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.title = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.n_description = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.photo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 5)) {
        obj.embed_url = [is readString];
    }
    if (obj.flags & (1 << 5)) {
        obj.embed_type = [is readString];
    }
    if (obj.flags & (1 << 6)) {
        obj.embed_width = [is readInt32];
    }
    if (obj.flags & (1 << 6)) {
        obj.embed_height = [is readInt32];
    }
    if (obj.flags & (1 << 7)) {
        obj.duration = [is readInt32];
    }
    if (obj.flags & (1 << 8)) {
        obj.author = [is readString];
    }
    if (obj.flags & (1 << 9)) {
        obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 10)) {
        obj.cached_page = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 12)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.attributes = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeString:self.display_url == nil ? @"" : self.display_url];
    [os writeInt32:self.n_hash];
    if (self.flags & (1 << 0)) {
        [os writeString:self.type == nil ? @"" : self.type];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.site_name == nil ? @"" : self.site_name];
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.title == nil ? @"" : self.title];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.n_description == nil ? @"" : self.n_description];
    }
    if (self.flags & (1 << 4)) {
        TLMetaClassStore::serializeObject(os, self.photo, true);
    }
    if (self.flags & (1 << 5)) {
        [os writeString:self.embed_url == nil ? @"" : self.embed_url];
    }
    if (self.flags & (1 << 5)) {
        [os writeString:self.embed_type == nil ? @"" : self.embed_type];
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.embed_width];
    }
    if (self.flags & (1 << 6)) {
        [os writeInt32:self.embed_height];
    }
    if (self.flags & (1 << 7)) {
        [os writeInt32:self.duration];
    }
    if (self.flags & (1 << 8)) {
        [os writeString:self.author == nil ? @"" : self.author];
    }
    if (self.flags & (1 << 9)) {
        TLMetaClassStore::serializeObject(os, self.document, true);
    }
    if (self.flags & (1 << 10)) {
        TLMetaClassStore::serializeObject(os, self.cached_page, true);
    }
    if (self.flags & (1 << 12)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.attributes.count];
            for (id item in self.attributes) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_webPageEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x211a1788; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageEmpty *obj = [[ModernTL_webPageEmpty alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.url = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 0)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
}
@end

@implementation ModernTL_webPageNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x7311ca11; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageNotModified *obj = [[ModernTL_webPageNotModified alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.cached_page_views = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.cached_page_views];
    }
}
@end

@implementation ModernTL_webPagePending
- (int32_t)TLconstructorSignature { return (int32_t)0xb0d13e47; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPagePending *obj = [[ModernTL_webPagePending alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt64];
    if (obj.flags & (1 << 0)) {
        obj.url = [is readString];
    }
    obj.date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_id];
    if (self.flags & (1 << 0)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
    [os writeInt32:self.date];
}
@end

@implementation ModernTL_webPageAttributeAiComposeTone
- (int32_t)TLconstructorSignature { return (int32_t)0x7781fe18; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageAttributeAiComposeTone *obj = [[ModernTL_webPageAttributeAiComposeTone alloc] init];
    obj.emoji_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.emoji_id];
}
@end

@implementation ModernTL_webPageAttributeStarGiftAuction
- (int32_t)TLconstructorSignature { return (int32_t)0x01c641c2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageAttributeStarGiftAuction *obj = [[ModernTL_webPageAttributeStarGiftAuction alloc] init];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.end_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.gift, true);
    [os writeInt32:self.end_date];
}
@end

@implementation ModernTL_webPageAttributeStarGiftCollection
- (int32_t)TLconstructorSignature { return (int32_t)0x31cad303; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageAttributeStarGiftCollection *obj = [[ModernTL_webPageAttributeStarGiftCollection alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.icons = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.icons.count];
        for (id item in self.icons) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_webPageAttributeStickerSet
- (int32_t)TLconstructorSignature { return (int32_t)0x50cc03d3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageAttributeStickerSet *obj = [[ModernTL_webPageAttributeStickerSet alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.stickers = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.stickers.count];
        for (id item in self.stickers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_webPageAttributeStory
- (int32_t)TLconstructorSignature { return (int32_t)0x2e94c3e7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageAttributeStory *obj = [[ModernTL_webPageAttributeStory alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_id = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.story = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeInt32:self.n_id];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.story, true);
    }
}
@end

@implementation ModernTL_webPageAttributeTheme
- (int32_t)TLconstructorSignature { return (int32_t)0x54b56617; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageAttributeTheme *obj = [[ModernTL_webPageAttributeTheme alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.documents = items;
        }
    }
    if (obj.flags & (1 << 1)) {
        obj.settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.documents.count];
            for (id item in self.documents) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.settings, true);
    }
}
@end

@implementation ModernTL_webPageAttributeUniqueStarGift
- (int32_t)TLconstructorSignature { return (int32_t)0xcf6f6db8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webPageAttributeUniqueStarGift *obj = [[ModernTL_webPageAttributeUniqueStarGift alloc] init];
    obj.gift = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.gift, true);
}
@end

@implementation ModernTL_webViewMessageSent
- (int32_t)TLconstructorSignature { return (int32_t)0x0c94511c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webViewMessageSent *obj = [[ModernTL_webViewMessageSent alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.msg_id = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.msg_id, true);
    }
}
@end

@implementation ModernTL_webViewResultUrl
- (int32_t)TLconstructorSignature { return (int32_t)0x4d22ff98; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_webViewResultUrl *obj = [[ModernTL_webViewResultUrl alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.query_id = [is readInt64];
    }
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeInt64:self.query_id];
    }
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_account_authorizationForm
- (int32_t)TLconstructorSignature { return (int32_t)0xad2e1cd8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_authorizationForm *obj = [[ModernTL_account_authorizationForm alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.required_types = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.values = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.errors = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.privacy_policy_url = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.required_types.count];
        for (id item in self.required_types) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.values.count];
        for (id item in self.values) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.errors.count];
        for (id item in self.errors) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.privacy_policy_url == nil ? @"" : self.privacy_policy_url];
    }
}
@end

@implementation ModernTL_account_authorizations
- (int32_t)TLconstructorSignature { return (int32_t)0x4bff8ea0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_authorizations *obj = [[ModernTL_account_authorizations alloc] init];
    obj.authorization_ttl_days = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.authorizations = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.authorization_ttl_days];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.authorizations.count];
        for (id item in self.authorizations) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_autoDownloadSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x63cacf26; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_autoDownloadSettings *obj = [[ModernTL_account_autoDownloadSettings alloc] init];
    obj.low = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.medium = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.high = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.low, true);
    TLMetaClassStore::serializeObject(os, self.medium, true);
    TLMetaClassStore::serializeObject(os, self.high, true);
}
@end

@implementation ModernTL_account_autoSaveSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x4c3e069d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_autoSaveSettings *obj = [[ModernTL_account_autoSaveSettings alloc] init];
    obj.users_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.chats_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.broadcasts_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.exceptions = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.users_settings, true);
    TLMetaClassStore::serializeObject(os, self.chats_settings, true);
    TLMetaClassStore::serializeObject(os, self.broadcasts_settings, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.exceptions.count];
        for (id item in self.exceptions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_businessChatLinks
- (int32_t)TLconstructorSignature { return (int32_t)0xec43a2d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_businessChatLinks *obj = [[ModernTL_account_businessChatLinks alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.links = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.links.count];
        for (id item in self.links) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_chatThemes
- (int32_t)TLconstructorSignature { return (int32_t)0xbe098173; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_chatThemes *obj = [[ModernTL_account_chatThemes alloc] init];
    obj.flags = [is readInt32];
    obj.n_hash = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.themes = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.themes.count];
        for (id item in self.themes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
}
@end

@implementation ModernTL_account_chatThemesNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xe011e1c4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_chatThemesNotModified *obj = [[ModernTL_account_chatThemesNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_connectedBots
- (int32_t)TLconstructorSignature { return (int32_t)0x17d7f87b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_connectedBots *obj = [[ModernTL_account_connectedBots alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.connected_bots = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.connected_bots.count];
        for (id item in self.connected_bots) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_contentSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x57e28221; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_contentSettings *obj = [[ModernTL_account_contentSettings alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_account_emailVerified
- (int32_t)TLconstructorSignature { return (int32_t)0x2b96cd1b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_emailVerified *obj = [[ModernTL_account_emailVerified alloc] init];
    obj.email = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.email == nil ? @"" : self.email];
}
@end

@implementation ModernTL_account_emailVerifiedLogin
- (int32_t)TLconstructorSignature { return (int32_t)0xe1bb0d61; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_emailVerifiedLogin *obj = [[ModernTL_account_emailVerifiedLogin alloc] init];
    obj.email = [is readString];
    obj.sent_code = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.email == nil ? @"" : self.email];
    TLMetaClassStore::serializeObject(os, self.sent_code, true);
}
@end

@implementation ModernTL_account_emojiStatuses
- (int32_t)TLconstructorSignature { return (int32_t)0x90c467d1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_emojiStatuses *obj = [[ModernTL_account_emojiStatuses alloc] init];
    obj.n_hash = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.statuses = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.statuses.count];
        for (id item in self.statuses) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_emojiStatusesNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xd08ce645; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_emojiStatusesNotModified *obj = [[ModernTL_account_emojiStatusesNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_paidMessagesRevenue
- (int32_t)TLconstructorSignature { return (int32_t)0x1e109708; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_paidMessagesRevenue *obj = [[ModernTL_account_paidMessagesRevenue alloc] init];
    obj.stars_amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.stars_amount];
}
@end

@implementation ModernTL_account_passkeyRegistrationOptions
- (int32_t)TLconstructorSignature { return (int32_t)0xe16b5ce1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_passkeyRegistrationOptions *obj = [[ModernTL_account_passkeyRegistrationOptions alloc] init];
    obj.options = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.options, true);
}
@end

@implementation ModernTL_account_passkeys
- (int32_t)TLconstructorSignature { return (int32_t)0xf8e0aa1c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_passkeys *obj = [[ModernTL_account_passkeys alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.passkeys = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.passkeys.count];
        for (id item in self.passkeys) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_password
- (int32_t)TLconstructorSignature { return (int32_t)0x957b50fb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_password *obj = [[ModernTL_account_password alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 2)) {
        obj.current_algo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.srp_b = [is readBytes];
    }
    if (obj.flags & (1 << 2)) {
        obj.srp_id = [is readInt64];
    }
    if (obj.flags & (1 << 3)) {
        obj.hint = [is readString];
    }
    if (obj.flags & (1 << 4)) {
        obj.email_unconfirmed_pattern = [is readString];
    }
    obj.n_new_algo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.n_new_secure_algo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.secure_random = [is readBytes];
    if (obj.flags & (1 << 5)) {
        obj.pending_reset_date = [is readInt32];
    }
    if (obj.flags & (1 << 6)) {
        obj.login_email_pattern = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.current_algo, true);
    }
    if (self.flags & (1 << 2)) {
        [os writeBytes:self.srp_b == nil ? [NSData data] : self.srp_b];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt64:self.srp_id];
    }
    if (self.flags & (1 << 3)) {
        [os writeString:self.hint == nil ? @"" : self.hint];
    }
    if (self.flags & (1 << 4)) {
        [os writeString:self.email_unconfirmed_pattern == nil ? @"" : self.email_unconfirmed_pattern];
    }
    TLMetaClassStore::serializeObject(os, self.n_new_algo, true);
    TLMetaClassStore::serializeObject(os, self.n_new_secure_algo, true);
    [os writeBytes:self.secure_random == nil ? [NSData data] : self.secure_random];
    if (self.flags & (1 << 5)) {
        [os writeInt32:self.pending_reset_date];
    }
    if (self.flags & (1 << 6)) {
        [os writeString:self.login_email_pattern == nil ? @"" : self.login_email_pattern];
    }
}
@end

@implementation ModernTL_account_passwordInputSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xc23727c9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_passwordInputSettings *obj = [[ModernTL_account_passwordInputSettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.n_new_algo = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 0)) {
        obj.n_new_password_hash = [is readBytes];
    }
    if (obj.flags & (1 << 0)) {
        obj.hint = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.email = [is readString];
    }
    if (obj.flags & (1 << 2)) {
        obj.n_new_secure_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.n_new_algo, true);
    }
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.n_new_password_hash == nil ? [NSData data] : self.n_new_password_hash];
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.hint == nil ? @"" : self.hint];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.email == nil ? @"" : self.email];
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.n_new_secure_settings, true);
    }
}
@end

@implementation ModernTL_account_passwordSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x9a5c33e5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_passwordSettings *obj = [[ModernTL_account_passwordSettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.email = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.secure_settings = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.email == nil ? @"" : self.email];
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.secure_settings, true);
    }
}
@end

@implementation ModernTL_account_privacyRules
- (int32_t)TLconstructorSignature { return (int32_t)0x50a04e45; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_privacyRules *obj = [[ModernTL_account_privacyRules alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.rules = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.rules.count];
        for (id item in self.rules) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_resetPasswordFailedWait
- (int32_t)TLconstructorSignature { return (int32_t)0xe3779861; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_resetPasswordFailedWait *obj = [[ModernTL_account_resetPasswordFailedWait alloc] init];
    obj.retry_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.retry_date];
}
@end

@implementation ModernTL_account_resetPasswordOk
- (int32_t)TLconstructorSignature { return (int32_t)0xe926d63e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_resetPasswordOk *obj = [[ModernTL_account_resetPasswordOk alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_resetPasswordRequestedWait
- (int32_t)TLconstructorSignature { return (int32_t)0xe9effc7d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_resetPasswordRequestedWait *obj = [[ModernTL_account_resetPasswordRequestedWait alloc] init];
    obj.until_date = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.until_date];
}
@end

@implementation ModernTL_account_resolvedBusinessChatLinks
- (int32_t)TLconstructorSignature { return (int32_t)0x9a23af21; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_resolvedBusinessChatLinks *obj = [[ModernTL_account_resolvedBusinessChatLinks alloc] init];
    obj.flags = [is readInt32];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.message = [is readString];
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.entities = items;
        }
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.peer, true);
    [os writeString:self.message == nil ? @"" : self.message];
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_savedMusicIds
- (int32_t)TLconstructorSignature { return (int32_t)0x998d6636; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_savedMusicIds *obj = [[ModernTL_account_savedMusicIds alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.ids = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.ids.count];
        for (id item in self.ids) {
            [os writeInt64:[item longLongValue]];
        }
    }
}
@end

@implementation ModernTL_account_savedMusicIdsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x4fc81d6e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_savedMusicIdsNotModified *obj = [[ModernTL_account_savedMusicIdsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_savedRingtone
- (int32_t)TLconstructorSignature { return (int32_t)0xb7263f6d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_savedRingtone *obj = [[ModernTL_account_savedRingtone alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_savedRingtoneConverted
- (int32_t)TLconstructorSignature { return (int32_t)0x1f307eb7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_savedRingtoneConverted *obj = [[ModernTL_account_savedRingtoneConverted alloc] init];
    obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.document, true);
}
@end

@implementation ModernTL_account_savedRingtones
- (int32_t)TLconstructorSignature { return (int32_t)0xc1e92cc5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_savedRingtones *obj = [[ModernTL_account_savedRingtones alloc] init];
    obj.n_hash = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.ringtones = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.ringtones.count];
        for (id item in self.ringtones) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_savedRingtonesNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xfbf6e8b1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_savedRingtonesNotModified *obj = [[ModernTL_account_savedRingtonesNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_sentEmailCode
- (int32_t)TLconstructorSignature { return (int32_t)0x811f854f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_sentEmailCode *obj = [[ModernTL_account_sentEmailCode alloc] init];
    obj.email_pattern = [is readString];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.email_pattern == nil ? @"" : self.email_pattern];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_account_takeout
- (int32_t)TLconstructorSignature { return (int32_t)0x4dba4501; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_takeout *obj = [[ModernTL_account_takeout alloc] init];
    obj.n_id = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
}
@end

@implementation ModernTL_account_themes
- (int32_t)TLconstructorSignature { return (int32_t)0x9a3d8c6d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_themes *obj = [[ModernTL_account_themes alloc] init];
    obj.n_hash = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.themes = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.themes.count];
        for (id item in self.themes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_themesNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xf41eb622; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_themesNotModified *obj = [[ModernTL_account_themesNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_tmpPassword
- (int32_t)TLconstructorSignature { return (int32_t)0xdb64fd34; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_tmpPassword *obj = [[ModernTL_account_tmpPassword alloc] init];
    obj.tmp_password = [is readBytes];
    obj.valid_until = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeBytes:self.tmp_password == nil ? [NSData data] : self.tmp_password];
    [os writeInt32:self.valid_until];
}
@end

@implementation ModernTL_account_wallPapers
- (int32_t)TLconstructorSignature { return (int32_t)0xcdc3858c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_wallPapers *obj = [[ModernTL_account_wallPapers alloc] init];
    obj.n_hash = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.wallpapers = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.wallpapers.count];
        for (id item in self.wallpapers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_wallPapersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x1c199183; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_wallPapersNotModified *obj = [[ModernTL_account_wallPapersNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_account_webAuthorizations
- (int32_t)TLconstructorSignature { return (int32_t)0xed56c9fc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_webAuthorizations *obj = [[ModernTL_account_webAuthorizations alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.authorizations = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.authorizations.count];
        for (id item in self.authorizations) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_account_webBrowserSettings
- (int32_t)TLconstructorSignature { return (int32_t)0x79eb8cb3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_webBrowserSettings *obj = [[ModernTL_account_webBrowserSettings alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.external_exceptions = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.inapp_exceptions = items;
    }
    obj.n_hash = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.external_exceptions.count];
        for (id item in self.external_exceptions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.inapp_exceptions.count];
        for (id item in self.inapp_exceptions) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt64:self.n_hash];
}
@end

@implementation ModernTL_account_webBrowserSettingsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xc31c8f4e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_account_webBrowserSettingsNotModified *obj = [[ModernTL_account_webBrowserSettingsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_aicompose_tones
- (int32_t)TLconstructorSignature { return (int32_t)0x6c9d0efe; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_aicompose_tones *obj = [[ModernTL_aicompose_tones alloc] init];
    obj.n_hash = [is readInt64];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.tones = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_hash];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.tones.count];
        for (id item in self.tones) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_aicompose_tonesNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xc1f46103; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_aicompose_tonesNotModified *obj = [[ModernTL_aicompose_tonesNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_auth_authorization
- (int32_t)TLconstructorSignature { return (int32_t)0x2ea2c0d4; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_authorization *obj = [[ModernTL_auth_authorization alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.otherwise_relogin_days = [is readInt32];
    }
    if (obj.flags & (1 << 0)) {
        obj.tmp_sessions = [is readInt32];
    }
    if (obj.flags & (1 << 2)) {
        obj.future_auth_token = [is readBytes];
    }
    obj.user = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.otherwise_relogin_days];
    }
    if (self.flags & (1 << 0)) {
        [os writeInt32:self.tmp_sessions];
    }
    if (self.flags & (1 << 2)) {
        [os writeBytes:self.future_auth_token == nil ? [NSData data] : self.future_auth_token];
    }
    TLMetaClassStore::serializeObject(os, self.user, true);
}
@end

@implementation ModernTL_auth_authorizationSignUpRequired
- (int32_t)TLconstructorSignature { return (int32_t)0x44747e9a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_authorizationSignUpRequired *obj = [[ModernTL_auth_authorizationSignUpRequired alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.terms_of_service = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        TLMetaClassStore::serializeObject(os, self.terms_of_service, true);
    }
}
@end

@implementation ModernTL_auth_codeTypeCall
- (int32_t)TLconstructorSignature { return (int32_t)0x741cd3e3; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_codeTypeCall *obj = [[ModernTL_auth_codeTypeCall alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_auth_codeTypeFlashCall
- (int32_t)TLconstructorSignature { return (int32_t)0x226ccefb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_codeTypeFlashCall *obj = [[ModernTL_auth_codeTypeFlashCall alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_auth_codeTypeFragmentSms
- (int32_t)TLconstructorSignature { return (int32_t)0x06ed998c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_codeTypeFragmentSms *obj = [[ModernTL_auth_codeTypeFragmentSms alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_auth_codeTypeMissedCall
- (int32_t)TLconstructorSignature { return (int32_t)0xd61ad6ee; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_codeTypeMissedCall *obj = [[ModernTL_auth_codeTypeMissedCall alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_auth_codeTypeSms
- (int32_t)TLconstructorSignature { return (int32_t)0x72a3158c; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_codeTypeSms *obj = [[ModernTL_auth_codeTypeSms alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_auth_exportedAuthorization
- (int32_t)TLconstructorSignature { return (int32_t)0xb434e2b8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_exportedAuthorization *obj = [[ModernTL_auth_exportedAuthorization alloc] init];
    obj.n_id = [is readInt64];
    obj.bytes = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt64:self.n_id];
    [os writeBytes:self.bytes == nil ? [NSData data] : self.bytes];
}
@end

@implementation ModernTL_auth_loggedOut
- (int32_t)TLconstructorSignature { return (int32_t)0xc3a2835f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_loggedOut *obj = [[ModernTL_auth_loggedOut alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.future_auth_token = [is readBytes];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.future_auth_token == nil ? [NSData data] : self.future_auth_token];
    }
}
@end

@implementation ModernTL_auth_loginToken
- (int32_t)TLconstructorSignature { return (int32_t)0x629f1980; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_loginToken *obj = [[ModernTL_auth_loginToken alloc] init];
    obj.expires = [is readInt32];
    obj.token = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.expires];
    [os writeBytes:self.token == nil ? [NSData data] : self.token];
}
@end

@implementation ModernTL_auth_loginTokenMigrateTo
- (int32_t)TLconstructorSignature { return (int32_t)0x068e9916; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_loginTokenMigrateTo *obj = [[ModernTL_auth_loginTokenMigrateTo alloc] init];
    obj.dc_id = [is readInt32];
    obj.token = [is readBytes];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.dc_id];
    [os writeBytes:self.token == nil ? [NSData data] : self.token];
}
@end

@implementation ModernTL_auth_loginTokenSuccess
- (int32_t)TLconstructorSignature { return (int32_t)0x390d5c5e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_loginTokenSuccess *obj = [[ModernTL_auth_loginTokenSuccess alloc] init];
    obj.authorization = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.authorization, true);
}
@end

@implementation ModernTL_auth_passkeyLoginOptions
- (int32_t)TLconstructorSignature { return (int32_t)0xe2037789; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_passkeyLoginOptions *obj = [[ModernTL_auth_passkeyLoginOptions alloc] init];
    obj.options = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.options, true);
}
@end

@implementation ModernTL_auth_passwordRecovery
- (int32_t)TLconstructorSignature { return (int32_t)0x137948a5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_passwordRecovery *obj = [[ModernTL_auth_passwordRecovery alloc] init];
    obj.email_pattern = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.email_pattern == nil ? @"" : self.email_pattern];
}
@end

@implementation ModernTL_auth_sentCode
- (int32_t)TLconstructorSignature { return (int32_t)0x5e002502; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCode *obj = [[ModernTL_auth_sentCode alloc] init];
    obj.flags = [is readInt32];
    obj.type = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.phone_code_hash = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.next_type = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.timeout = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.type, true);
    [os writeString:self.phone_code_hash == nil ? @"" : self.phone_code_hash];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.next_type, true);
    }
    if (self.flags & (1 << 2)) {
        [os writeInt32:self.timeout];
    }
}
@end

@implementation ModernTL_auth_sentCodePaymentRequired
- (int32_t)TLconstructorSignature { return (int32_t)0xf8827ebf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodePaymentRequired *obj = [[ModernTL_auth_sentCodePaymentRequired alloc] init];
    obj.store_product = [is readString];
    obj.phone_code_hash = [is readString];
    obj.support_email_address = [is readString];
    obj.support_email_subject = [is readString];
    obj.premium_days = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.store_product == nil ? @"" : self.store_product];
    [os writeString:self.phone_code_hash == nil ? @"" : self.phone_code_hash];
    [os writeString:self.support_email_address == nil ? @"" : self.support_email_address];
    [os writeString:self.support_email_subject == nil ? @"" : self.support_email_subject];
    [os writeInt32:self.premium_days];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
}
@end

@implementation ModernTL_auth_sentCodeSuccess
- (int32_t)TLconstructorSignature { return (int32_t)0x2390fe44; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeSuccess *obj = [[ModernTL_auth_sentCodeSuccess alloc] init];
    obj.authorization = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.authorization, true);
}
@end

@implementation ModernTL_auth_sentCodeTypeApp
- (int32_t)TLconstructorSignature { return (int32_t)0x3dbb5986; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeApp *obj = [[ModernTL_auth_sentCodeTypeApp alloc] init];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_auth_sentCodeTypeCall
- (int32_t)TLconstructorSignature { return (int32_t)0x5353e5a7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeCall *obj = [[ModernTL_auth_sentCodeTypeCall alloc] init];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_auth_sentCodeTypeEmailCode
- (int32_t)TLconstructorSignature { return (int32_t)0xf450f59b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeEmailCode *obj = [[ModernTL_auth_sentCodeTypeEmailCode alloc] init];
    obj.flags = [is readInt32];
    obj.email_pattern = [is readString];
    obj.length = [is readInt32];
    if (obj.flags & (1 << 3)) {
        obj.reset_available_period = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.reset_pending_date = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.email_pattern == nil ? @"" : self.email_pattern];
    [os writeInt32:self.length];
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.reset_available_period];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.reset_pending_date];
    }
}
@end

@implementation ModernTL_auth_sentCodeTypeFirebaseSms
- (int32_t)TLconstructorSignature { return (int32_t)0x009fd736; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeFirebaseSms *obj = [[ModernTL_auth_sentCodeTypeFirebaseSms alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.nonce = [is readBytes];
    }
    if (obj.flags & (1 << 2)) {
        obj.play_integrity_project_id = [is readInt64];
    }
    if (obj.flags & (1 << 2)) {
        obj.play_integrity_nonce = [is readBytes];
    }
    if (obj.flags & (1 << 1)) {
        obj.receipt = [is readString];
    }
    if (obj.flags & (1 << 1)) {
        obj.push_timeout = [is readInt32];
    }
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeBytes:self.nonce == nil ? [NSData data] : self.nonce];
    }
    if (self.flags & (1 << 2)) {
        [os writeInt64:self.play_integrity_project_id];
    }
    if (self.flags & (1 << 2)) {
        [os writeBytes:self.play_integrity_nonce == nil ? [NSData data] : self.play_integrity_nonce];
    }
    if (self.flags & (1 << 1)) {
        [os writeString:self.receipt == nil ? @"" : self.receipt];
    }
    if (self.flags & (1 << 1)) {
        [os writeInt32:self.push_timeout];
    }
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_auth_sentCodeTypeFlashCall
- (int32_t)TLconstructorSignature { return (int32_t)0xab03c6d9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeFlashCall *obj = [[ModernTL_auth_sentCodeTypeFlashCall alloc] init];
    obj.pattern = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.pattern == nil ? @"" : self.pattern];
}
@end

@implementation ModernTL_auth_sentCodeTypeFragmentSms
- (int32_t)TLconstructorSignature { return (int32_t)0xd9565c39; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeFragmentSms *obj = [[ModernTL_auth_sentCodeTypeFragmentSms alloc] init];
    obj.url = [is readString];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.url == nil ? @"" : self.url];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_auth_sentCodeTypeMissedCall
- (int32_t)TLconstructorSignature { return (int32_t)0x82006484; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeMissedCall *obj = [[ModernTL_auth_sentCodeTypeMissedCall alloc] init];
    obj.prefix = [is readString];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.prefix == nil ? @"" : self.prefix];
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_auth_sentCodeTypeSetUpEmailRequired
- (int32_t)TLconstructorSignature { return (int32_t)0xa5491dea; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeSetUpEmailRequired *obj = [[ModernTL_auth_sentCodeTypeSetUpEmailRequired alloc] init];
    obj.flags = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
}
@end

@implementation ModernTL_auth_sentCodeTypeSms
- (int32_t)TLconstructorSignature { return (int32_t)0xc000bba2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeSms *obj = [[ModernTL_auth_sentCodeTypeSms alloc] init];
    obj.length = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.length];
}
@end

@implementation ModernTL_auth_sentCodeTypeSmsPhrase
- (int32_t)TLconstructorSignature { return (int32_t)0xb37794af; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeSmsPhrase *obj = [[ModernTL_auth_sentCodeTypeSmsPhrase alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.beginning = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.beginning == nil ? @"" : self.beginning];
    }
}
@end

@implementation ModernTL_auth_sentCodeTypeSmsWord
- (int32_t)TLconstructorSignature { return (int32_t)0xa416ac81; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_auth_sentCodeTypeSmsWord *obj = [[ModernTL_auth_sentCodeTypeSmsWord alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.beginning = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.beginning == nil ? @"" : self.beginning];
    }
}
@end

@implementation ModernTL_bots_accessSettings
- (int32_t)TLconstructorSignature { return (int32_t)0xdd1fbf93; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_bots_accessSettings *obj = [[ModernTL_bots_accessSettings alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 1)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.add_users = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.add_users.count];
            for (id item in self.add_users) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_bots_botInfo
- (int32_t)TLconstructorSignature { return (int32_t)0xe8a775b0; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_bots_botInfo *obj = [[ModernTL_bots_botInfo alloc] init];
    obj.name = [is readString];
    obj.about = [is readString];
    obj.n_description = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.name == nil ? @"" : self.name];
    [os writeString:self.about == nil ? @"" : self.about];
    [os writeString:self.n_description == nil ? @"" : self.n_description];
}
@end

@implementation ModernTL_bots_exportedBotToken
- (int32_t)TLconstructorSignature { return (int32_t)0x3c60b621; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_bots_exportedBotToken *obj = [[ModernTL_bots_exportedBotToken alloc] init];
    obj.token = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.token == nil ? @"" : self.token];
}
@end

@implementation ModernTL_bots_popularAppBots
- (int32_t)TLconstructorSignature { return (int32_t)0x1991b13b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_bots_popularAppBots *obj = [[ModernTL_bots_popularAppBots alloc] init];
    obj.flags = [is readInt32];
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_bots_previewInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x0ca71d64; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_bots_previewInfo *obj = [[ModernTL_bots_previewInfo alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.media = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            NSString *item = [is readString];
            [items addObject:item == nil ? @"" : item];
        }
        obj.lang_codes = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.media.count];
        for (id item in self.media) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.lang_codes.count];
        for (id item in self.lang_codes) {
            [os writeString:item];
        }
    }
}
@end

@implementation ModernTL_bots_requestedButton
- (int32_t)TLconstructorSignature { return (int32_t)0xf13bbcd7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_bots_requestedButton *obj = [[ModernTL_bots_requestedButton alloc] init];
    obj.webapp_req_id = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.webapp_req_id == nil ? @"" : self.webapp_req_id];
}
@end

@implementation ModernTL_channels_adminLogResults
- (int32_t)TLconstructorSignature { return (int32_t)0xed8af74d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_adminLogResults *obj = [[ModernTL_channels_adminLogResults alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.events = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.events.count];
        for (id item in self.events) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_channels_channelParticipant
- (int32_t)TLconstructorSignature { return (int32_t)0xdfb80317; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_channelParticipant *obj = [[ModernTL_channels_channelParticipant alloc] init];
    obj.participant = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.participant, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_channels_channelParticipants
- (int32_t)TLconstructorSignature { return (int32_t)0x9ab0feaf; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_channelParticipants *obj = [[ModernTL_channels_channelParticipants alloc] init];
    obj.count = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.participants = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.participants.count];
        for (id item in self.participants) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_channels_channelParticipantsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xf0173fe9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_channelParticipantsNotModified *obj = [[ModernTL_channels_channelParticipantsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channels_found
- (int32_t)TLconstructorSignature { return (int32_t)0x3128c4bc; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_found *obj = [[ModernTL_channels_found alloc] init];
    obj.flags = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.results = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.results.count];
        for (id item in self.results) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
}
@end

@implementation ModernTL_channels_personalChannels
- (int32_t)TLconstructorSignature { return (int32_t)0xd69ae84d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_personalChannels *obj = [[ModernTL_channels_personalChannels alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.channels = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.channels.count];
        for (id item in self.channels) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_channels_sendAsPeers
- (int32_t)TLconstructorSignature { return (int32_t)0xf496b0c6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_sendAsPeers *obj = [[ModernTL_channels_sendAsPeers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.peers = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_channels_sponsoredMessageReportResultAdsHidden
- (int32_t)TLconstructorSignature { return (int32_t)0x3e3bcf2f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_sponsoredMessageReportResultAdsHidden *obj = [[ModernTL_channels_sponsoredMessageReportResultAdsHidden alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_channels_sponsoredMessageReportResultChooseOption
- (int32_t)TLconstructorSignature { return (int32_t)0x846f9e42; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_sponsoredMessageReportResultChooseOption *obj = [[ModernTL_channels_sponsoredMessageReportResultChooseOption alloc] init];
    obj.title = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.options = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.title == nil ? @"" : self.title];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.options.count];
        for (id item in self.options) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_channels_sponsoredMessageReportResultReported
- (int32_t)TLconstructorSignature { return (int32_t)0xad798849; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_channels_sponsoredMessageReportResultReported *obj = [[ModernTL_channels_sponsoredMessageReportResultReported alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_chatlists_chatlistInvite
- (int32_t)TLconstructorSignature { return (int32_t)0xf10ece2f; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatlists_chatlistInvite *obj = [[ModernTL_chatlists_chatlistInvite alloc] init];
    obj.flags = [is readInt32];
    obj.title = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    if (obj.flags & (1 << 0)) {
        obj.emoticon = [is readString];
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.peers = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    TLMetaClassStore::serializeObject(os, self.title, true);
    if (self.flags & (1 << 0)) {
        [os writeString:self.emoticon == nil ? @"" : self.emoticon];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_chatlists_chatlistInviteAlready
- (int32_t)TLconstructorSignature { return (int32_t)0xfa87f659; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatlists_chatlistInviteAlready *obj = [[ModernTL_chatlists_chatlistInviteAlready alloc] init];
    obj.filter_id = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.missing_peers = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.already_peers = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.filter_id];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.missing_peers.count];
        for (id item in self.missing_peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.already_peers.count];
        for (id item in self.already_peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_chatlists_chatlistUpdates
- (int32_t)TLconstructorSignature { return (int32_t)0x93bd878d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatlists_chatlistUpdates *obj = [[ModernTL_chatlists_chatlistUpdates alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.missing_peers = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.missing_peers.count];
        for (id item in self.missing_peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_chatlists_exportedChatlistInvite
- (int32_t)TLconstructorSignature { return (int32_t)0x10e6e3a6; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatlists_exportedChatlistInvite *obj = [[ModernTL_chatlists_exportedChatlistInvite alloc] init];
    obj.filter = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    obj.invite = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.filter, true);
    TLMetaClassStore::serializeObject(os, self.invite, true);
}
@end

@implementation ModernTL_chatlists_exportedInvites
- (int32_t)TLconstructorSignature { return (int32_t)0x10ab6dc7; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_chatlists_exportedInvites *obj = [[ModernTL_chatlists_exportedInvites alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.invites = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.invites.count];
        for (id item in self.invites) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_communities_participantJoinedChats
- (int32_t)TLconstructorSignature { return (int32_t)0x8d78512a; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_communities_participantJoinedChats *obj = [[ModernTL_communities_participantJoinedChats alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.creator_chat_ids = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.joined_chat_ids = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.creator_chat_ids.count];
        for (id item in self.creator_chat_ids) {
            [os writeInt64:[item longLongValue]];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.joined_chat_ids.count];
        for (id item in self.joined_chat_ids) {
            [os writeInt64:[item longLongValue]];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_communities_peerLinkRequests
- (int32_t)TLconstructorSignature { return (int32_t)0x2244afad; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_communities_peerLinkRequests *obj = [[ModernTL_communities_peerLinkRequests alloc] init];
    obj.flags = [is readInt32];
    obj.total_count = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.requests = items;
    }
    if (obj.flags & (1 << 0)) {
        obj.next_offset = [is readString];
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.total_count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.requests.count];
        for (id item in self.requests) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 0)) {
        [os writeString:self.next_offset == nil ? @"" : self.next_offset];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_blocked
- (int32_t)TLconstructorSignature { return (int32_t)0x0ade1591; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_blocked *obj = [[ModernTL_contacts_blocked alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.blocked = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocked.count];
        for (id item in self.blocked) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_blockedSlice
- (int32_t)TLconstructorSignature { return (int32_t)0xe1664194; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_blockedSlice *obj = [[ModernTL_contacts_blockedSlice alloc] init];
    obj.count = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.blocked = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.blocked.count];
        for (id item in self.blocked) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_contactBirthdays
- (int32_t)TLconstructorSignature { return (int32_t)0x114ff30d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_contactBirthdays *obj = [[ModernTL_contacts_contactBirthdays alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.contacts = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.contacts.count];
        for (id item in self.contacts) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_contacts
- (int32_t)TLconstructorSignature { return (int32_t)0xeae87e42; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_contacts *obj = [[ModernTL_contacts_contacts alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.contacts = items;
    }
    obj.saved_count = [is readInt32];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.contacts.count];
        for (id item in self.contacts) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.saved_count];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_contactsNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xb74ba9d2; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_contactsNotModified *obj = [[ModernTL_contacts_contactsNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_contacts_found
- (int32_t)TLconstructorSignature { return (int32_t)0xb3134d9d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_found *obj = [[ModernTL_contacts_found alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.my_results = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.results = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.my_results.count];
        for (id item in self.my_results) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.results.count];
        for (id item in self.results) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_importedContacts
- (int32_t)TLconstructorSignature { return (int32_t)0x77d01c3b; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_importedContacts *obj = [[ModernTL_contacts_importedContacts alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.imported = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.popular_invites = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt64])];
        }
        obj.retry_contacts = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.imported.count];
        for (id item in self.imported) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.popular_invites.count];
        for (id item in self.popular_invites) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.retry_contacts.count];
        for (id item in self.retry_contacts) {
            [os writeInt64:[item longLongValue]];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_resolvedPeer
- (int32_t)TLconstructorSignature { return (int32_t)0x7f077ad9; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_resolvedPeer *obj = [[ModernTL_contacts_resolvedPeer alloc] init];
    obj.peer = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    TLMetaClassStore::serializeObject(os, self.peer, true);
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_sponsoredPeers
- (int32_t)TLconstructorSignature { return (int32_t)0xeb032884; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_sponsoredPeers *obj = [[ModernTL_contacts_sponsoredPeers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.peers = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.peers.count];
        for (id item in self.peers) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_sponsoredPeersEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0xea32b4b1; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_sponsoredPeersEmpty *obj = [[ModernTL_contacts_sponsoredPeersEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_contacts_topPeers
- (int32_t)TLconstructorSignature { return (int32_t)0x70b772a8; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_topPeers *obj = [[ModernTL_contacts_topPeers alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.categories = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.chats = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.users = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.categories.count];
        for (id item in self.categories) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.chats.count];
        for (id item in self.chats) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.users.count];
        for (id item in self.users) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_contacts_topPeersDisabled
- (int32_t)TLconstructorSignature { return (int32_t)0xb52c939d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_topPeersDisabled *obj = [[ModernTL_contacts_topPeersDisabled alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_contacts_topPeersNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xde266ef5; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_contacts_topPeersNotModified *obj = [[ModernTL_contacts_topPeersNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_fragment_collectibleInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x6ebdff91; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_fragment_collectibleInfo *obj = [[ModernTL_fragment_collectibleInfo alloc] init];
    obj.purchase_date = [is readInt32];
    obj.currency = [is readString];
    obj.amount = [is readInt64];
    obj.crypto_currency = [is readString];
    obj.crypto_amount = [is readInt64];
    obj.url = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.purchase_date];
    [os writeString:self.currency == nil ? @"" : self.currency];
    [os writeInt64:self.amount];
    [os writeString:self.crypto_currency == nil ? @"" : self.crypto_currency];
    [os writeInt64:self.crypto_amount];
    [os writeString:self.url == nil ? @"" : self.url];
}
@end

@implementation ModernTL_help_appConfig
- (int32_t)TLconstructorSignature { return (int32_t)0xdd18782e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_appConfig *obj = [[ModernTL_help_appConfig alloc] init];
    obj.n_hash = [is readInt32];
    obj.config = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_hash];
    TLMetaClassStore::serializeObject(os, self.config, true);
}
@end

@implementation ModernTL_help_appConfigNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x7cde641d; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_appConfigNotModified *obj = [[ModernTL_help_appConfigNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_help_appUpdate
- (int32_t)TLconstructorSignature { return (int32_t)0xccbbce30; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_appUpdate *obj = [[ModernTL_help_appUpdate alloc] init];
    obj.flags = [is readInt32];
    obj.n_id = [is readInt32];
    obj.version = [is readString];
    obj.text = [is readString];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.entities = items;
    }
    if (obj.flags & (1 << 1)) {
        obj.document = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.url = [is readString];
    }
    if (obj.flags & (1 << 3)) {
        obj.sticker = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.n_id];
    [os writeString:self.version == nil ? @"" : self.version];
    [os writeString:self.text == nil ? @"" : self.text];
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.entities.count];
        for (id item in self.entities) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.document, true);
    }
    if (self.flags & (1 << 2)) {
        [os writeString:self.url == nil ? @"" : self.url];
    }
    if (self.flags & (1 << 3)) {
        TLMetaClassStore::serializeObject(os, self.sticker, true);
    }
}
@end

@implementation ModernTL_help_noAppUpdate
- (int32_t)TLconstructorSignature { return (int32_t)0xc45a6536; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_noAppUpdate *obj = [[ModernTL_help_noAppUpdate alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_help_countriesList
- (int32_t)TLconstructorSignature { return (int32_t)0x87d0759e; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_countriesList *obj = [[ModernTL_help_countriesList alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.countries = items;
    }
    obj.n_hash = [is readInt32];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.countries.count];
        for (id item in self.countries) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
    [os writeInt32:self.n_hash];
}
@end

@implementation ModernTL_help_countriesListNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0x93cc1f32; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_countriesListNotModified *obj = [[ModernTL_help_countriesListNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_help_country
- (int32_t)TLconstructorSignature { return (int32_t)0xc3878e23; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_country *obj = [[ModernTL_help_country alloc] init];
    obj.flags = [is readInt32];
    obj.iso2 = [is readString];
    obj.default_name = [is readString];
    if (obj.flags & (1 << 1)) {
        obj.name = [is readString];
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
            if (error != NULL && *error != nil) return nil;
            if (item != nil) [items addObject:item];
        }
        obj.country_codes = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.iso2 == nil ? @"" : self.iso2];
    [os writeString:self.default_name == nil ? @"" : self.default_name];
    if (self.flags & (1 << 1)) {
        [os writeString:self.name == nil ? @"" : self.name];
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.country_codes.count];
        for (id item in self.country_codes) {
            TLMetaClassStore::serializeObject(os, item, true);
        }
    }
}
@end

@implementation ModernTL_help_countryCode
- (int32_t)TLconstructorSignature { return (int32_t)0x4203c5ef; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_countryCode *obj = [[ModernTL_help_countryCode alloc] init];
    obj.flags = [is readInt32];
    obj.country_code = [is readString];
    if (obj.flags & (1 << 0)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                NSString *item = [is readString];
                [items addObject:item == nil ? @"" : item];
            }
            obj.prefixes = items;
        }
    }
    if (obj.flags & (1 << 1)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                NSString *item = [is readString];
                [items addObject:item == nil ? @"" : item];
            }
            obj.patterns = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.country_code == nil ? @"" : self.country_code];
    if (self.flags & (1 << 0)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.prefixes.count];
            for (id item in self.prefixes) {
                [os writeString:item];
            }
        }
    }
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.patterns.count];
            for (id item in self.patterns) {
                [os writeString:item];
            }
        }
    }
}
@end

@implementation ModernTL_help_deepLinkInfo
- (int32_t)TLconstructorSignature { return (int32_t)0x6a4ee832; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_deepLinkInfo *obj = [[ModernTL_help_deepLinkInfo alloc] init];
    obj.flags = [is readInt32];
    obj.message = [is readString];
    if (obj.flags & (1 << 1)) {
        {
            [is readInt32]; // 0x1cb5c415
            int32_t count = [is readInt32];
            NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
            for (int32_t i = 0; i < count; i++) {
                id item = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
                if (error != NULL && *error != nil) return nil;
                if (item != nil) [items addObject:item];
            }
            obj.entities = items;
        }
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeString:self.message == nil ? @"" : self.message];
    if (self.flags & (1 << 1)) {
        {
            [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
            [os writeInt32:(int32_t)self.entities.count];
            for (id item in self.entities) {
                TLMetaClassStore::serializeObject(os, item, true);
            }
        }
    }
}
@end

@implementation ModernTL_help_deepLinkInfoEmpty
- (int32_t)TLconstructorSignature { return (int32_t)0x66afa166; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_deepLinkInfoEmpty *obj = [[ModernTL_help_deepLinkInfoEmpty alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_help_inviteText
- (int32_t)TLconstructorSignature { return (int32_t)0x18cb9f78; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_inviteText *obj = [[ModernTL_help_inviteText alloc] init];
    obj.message = [is readString];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeString:self.message == nil ? @"" : self.message];
}
@end

@implementation ModernTL_help_passportConfig
- (int32_t)TLconstructorSignature { return (int32_t)0xa098d6af; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_passportConfig *obj = [[ModernTL_help_passportConfig alloc] init];
    obj.n_hash = [is readInt32];
    obj.countries_langs = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.n_hash];
    TLMetaClassStore::serializeObject(os, self.countries_langs, true);
}
@end

@implementation ModernTL_help_passportConfigNotModified
- (int32_t)TLconstructorSignature { return (int32_t)0xbfb9f457; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_passportConfigNotModified *obj = [[ModernTL_help_passportConfigNotModified alloc] init];
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
}
@end

@implementation ModernTL_help_peerColorOption
- (int32_t)TLconstructorSignature { return (int32_t)0xadec6ebe; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_peerColorOption *obj = [[ModernTL_help_peerColorOption alloc] init];
    obj.flags = [is readInt32];
    obj.color_id = [is readInt32];
    if (obj.flags & (1 << 1)) {
        obj.colors = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 2)) {
        obj.dark_colors = TLMetaClassStore::constructObject(is, [is readInt32], environment, nil, error);
    }
    if (obj.flags & (1 << 3)) {
        obj.channel_min_level = [is readInt32];
    }
    if (obj.flags & (1 << 4)) {
        obj.group_min_level = [is readInt32];
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    [os writeInt32:self.flags];
    [os writeInt32:self.color_id];
    if (self.flags & (1 << 1)) {
        TLMetaClassStore::serializeObject(os, self.colors, true);
    }
    if (self.flags & (1 << 2)) {
        TLMetaClassStore::serializeObject(os, self.dark_colors, true);
    }
    if (self.flags & (1 << 3)) {
        [os writeInt32:self.channel_min_level];
    }
    if (self.flags & (1 << 4)) {
        [os writeInt32:self.group_min_level];
    }
}
@end

@implementation ModernTL_help_peerColorProfileSet
- (int32_t)TLconstructorSignature { return (int32_t)0x767d61eb; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_peerColorProfileSet *obj = [[ModernTL_help_peerColorProfileSet alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.palette_colors = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.bg_colors = items;
    }
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.story_colors = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.palette_colors.count];
        for (id item in self.palette_colors) {
            [os writeInt32:[item intValue]];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.bg_colors.count];
        for (id item in self.bg_colors) {
            [os writeInt32:[item intValue]];
        }
    }
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.story_colors.count];
        for (id item in self.story_colors) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

@implementation ModernTL_help_peerColorSet
- (int32_t)TLconstructorSignature { return (int32_t)0x26219a58; }
- (int32_t)TLconstructorName { return -1; }
- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject { return nil; }
- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values {}
- (id<TLObject>)TLdeserialize:(NSInputStream *)is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)error {
    ModernTL_help_peerColorSet *obj = [[ModernTL_help_peerColorSet alloc] init];
    {
        [is readInt32]; // 0x1cb5c415
        int32_t count = [is readInt32];
        NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:(NSUInteger)MAX(0, count)];
        for (int32_t i = 0; i < count; i++) {
            [items addObject:@([is readInt32])];
        }
        obj.colors = items;
    }
    return obj;
}
- (void)TLserialize:(NSOutputStream *)os {
    {
        [os writeInt32:TL_UNIVERSAL_VECTOR_CONSTRUCTOR];
        [os writeInt32:(int32_t)self.colors.count];
        for (id item in self.colors) {
            [os writeInt32:[item intValue]];
        }
    }
}
@end

