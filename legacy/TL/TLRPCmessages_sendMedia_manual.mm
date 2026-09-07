#import "TLRPCmessages_sendMedia_manual.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"

//messages.sendMedia#b8d1262b flags:# silent:flags.5?true background:flags.6?true clear_draft:flags.7?true peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;


/// reply_to в схеме 228 — объект InputReplyTo, а не номер сообщения.
/// Пишем минимальный inputReplyToMessage#3bd4b7c2 с одним reply_to_msg_id.
static void TGSerializeInputReplyToMessageForMedia(NSOutputStream *os, int32_t replyToMsgId)
{
    [os writeInt32:(int32_t)0x3bd4b7c2];
    [os writeInt32:0];
    [os writeInt32:replyToMsgId];
}

@implementation TLRPCmessages_sendMedia_manual

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x0330e77f;
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

// messages.sendMedia#0330e77f flags:# ... peer:InputPeer reply_to:flags.0?InputReplyTo
// media:InputMedia message:string random_id:long reply_markup:flags.2?ReplyMarkup
// entities:flags.3?Vector<MessageEntity>
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:_flags & ~(1 << 4)];
    
    TLMetaClassStore::serializeObject(os, _peer, true);
    
    if (_flags & (1 << 0))
        TGSerializeInputReplyToMessageForMedia(os, _reply_to_msg_id);
    
    TLMetaClassStore::serializeObject(os, _media, true);
    
    [os writeString:_message == nil ? @"" : _message];
    [os writeInt64:_random_id];
    
    if (_flags & (1 << 3)) {
        int32_t vectorSignature = TL_UNIVERSAL_VECTOR_CONSTRUCTOR;
        [os writeInt32:vectorSignature];
        [os writeInt32:(int32_t)self.entities.count];
        for (TLMessageEntity *entity in self.entities) {
            TLMetaClassStore::serializeObject(os, entity, true);
        }
    }
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_sendMedia_manual deserialization not supported");
    return nil;
}

@end
