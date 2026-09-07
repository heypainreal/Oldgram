#import "TLRPCmessages_sendMessage_manual.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"


/// reply_to в схеме 228 — объект InputReplyTo, а не номер сообщения.
/// Пишем минимальный inputReplyToMessage#3bd4b7c2 с одним reply_to_msg_id.
static void TGSerializeInputReplyToMessage(NSOutputStream *os, int32_t replyToMsgId)
{
    [os writeInt32:(int32_t)0x3bd4b7c2];
    [os writeInt32:0];
    [os writeInt32:replyToMsgId];
}

@implementation TLRPCmessages_sendMessage_manual

- (int32_t)TLconstructorSignature
{
    return (int32_t)0xfef48f62;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [TLUpdates class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 228;
}

// messages.sendMessage#fef48f62 flags:# ... peer:InputPeer reply_to:flags.0?InputReplyTo
// message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity>
- (void)TLserialize:(NSOutputStream *)os
{
    // Биты 0 (reply_to), 1 (no_webpage), 3 (entities), 5 (silent) в схеме 228
    // означают то же самое; бит 4 занят другим полем — не отправляем его.
    [os writeInt32:_flags & ~(1 << 4)];
    
    TLMetaClassStore::serializeObject(os, _peer, true);
    
    if (_flags & (1 << 0))
        TGSerializeInputReplyToMessage(os, _reply_to_msg_id);
    
    [os writeString:_message == nil ? @"" : _message];
    [os writeInt64:_random_id];
    
    if (_flags & (1 << 3)) {
        int32_t vectorSignature = TL_UNIVERSAL_VECTOR_CONSTRUCTOR;
        [os writeInt32:vectorSignature];
        
        [os writeInt32:(int32_t)_entities.count];
        for (TLMessageEntity *entity in _entities) {
            TLMetaClassStore::serializeObject(os, entity, true);
        }
    }
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_sendMessage_manual deserialization not supported");
    return nil;
}

@end
