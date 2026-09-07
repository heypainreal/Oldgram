#import "TLRPCmessages_sendInlineBotResult.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"

//messages.sendContextBotResult flags:# broadcast:flags.4?true peer:InputPeer reply_to_msg_id:flags.0?int random_id:long query_id:long id:string = Updates;


/// reply_to схемы 228 — объект InputReplyTo; шлём минимальный
/// inputReplyToMessage#3bd4b7c2 с одним номером сообщения.
static void TGSerializeInlineResultReplyTo(NSOutputStream *os, int32_t replyToMsgId)
{
    [os writeInt32:(int32_t)0x3bd4b7c2];
    [os writeInt32:0];
    [os writeInt32:replyToMsgId];
}

@implementation TLRPCmessages_sendInlineBotResult

- (int32_t)TLconstructorSignature
{
    return (int32_t)0xc0cf7646;
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

// messages.sendInlineBotResult#c0cf7646 flags:# peer:InputPeer reply_to:flags.0?InputReplyTo
// random_id:long query_id:long id:string ...
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:_flags & ~(1 << 4)];
    
    TLMetaClassStore::serializeObject(os, _peer, true);
    
    if (_flags & (1 << 0))
        TGSerializeInlineResultReplyTo(os, _reply_to_msg_id);
    
    [os writeInt64:_random_id];
    [os writeInt64:_query_id];
    
    [os writeString:_n_id == nil ? @"" : _n_id];
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_sendContextBotResult deserialization not supported");
    return nil;
}

@end
