#ifndef Telegraph_TGBridgePeerIdAdapter_h
#define Telegraph_TGBridgePeerIdAdapter_h

/// Разметка пространства идентификаторов пиров.
///
/// Исходная версия нарезала int64 блоками по 2^31, потому что в 2018 году все
/// идентификаторы были 32-битными. В схеме 228 идентификаторы пользователей и
/// каналов давно вышли за этот предел, и чужие блоки начали пересекаться —
/// канал попадал в диапазон секретных чатов, разные чаты схлопывались в один.
/// Блок расширен до 2^48: этого хватает с запасом, а порядок блоков сохранён.
#define TGPeerIdBlock ((int64_t)1 << 48)

static inline bool TGPeerIdIsGroup(int64_t peerId) {
    return peerId < 0 && peerId > -TGPeerIdBlock;
}

static inline bool TGPeerIdIsUser(int64_t peerId) {
    return peerId > 0 && peerId < TGPeerIdBlock;
}

static inline bool TGPeerIdIsSecretChat(int64_t peerId) {
    return peerId <= -TGPeerIdBlock && peerId > -TGPeerIdBlock * 2;
}

static inline bool TGPeerIdIsChannel(int64_t peerId) {
    return peerId <= -TGPeerIdBlock * 2 && peerId > -TGPeerIdBlock * 3;
}

static inline bool TGPeerIdIsAdminLog(int64_t peerId) {
    return peerId <= -TGPeerIdBlock * 3 && peerId > -TGPeerIdBlock * 4;
}

static inline bool TGPeerIdIsAd(int64_t peerId) {
    return peerId <= -TGPeerIdBlock * 4 && peerId > -TGPeerIdBlock * 5;
}

static inline int64_t TGChannelIdFromPeerId(int64_t peerId) {
    if (TGPeerIdIsChannel(peerId)) {
        return -TGPeerIdBlock * 2 - peerId;
    } else {
        return 0;
    }
}

static inline int64_t TGPeerIdFromChannelId(int64_t channelId) {
    return -TGPeerIdBlock * 2 - channelId;
}

static inline int64_t TGPeerIdFromAdminLogId(int64_t channelId) {
    return -TGPeerIdBlock * 3 - channelId;
}

static inline int64_t TGPeerIdFromAdId(int64_t channelId) {
    return -TGPeerIdBlock * 4 - channelId;
}

static inline int64_t TGPeerIdFromGroupId(int64_t groupId) {
    return -groupId;
}

static inline int64_t TGGroupIdFromPeerId(int64_t peerId) {
    if (TGPeerIdIsGroup(peerId)) {
        return -peerId;
    } else {
        return 0;
    }
}

static inline int64_t TGAdminLogIdFromPeerId(int64_t peerId) {
    if (TGPeerIdIsAdminLog(peerId)) {
        return -TGPeerIdBlock * 3 - peerId;
    } else {
        return 0;
    }
}

static inline int64_t TGAdIdFromPeerId(int64_t peerId) {
    if (TGPeerIdIsAd(peerId)) {
        return -TGPeerIdBlock * 4 - peerId;
    } else {
        return 0;
    }
}

#endif
