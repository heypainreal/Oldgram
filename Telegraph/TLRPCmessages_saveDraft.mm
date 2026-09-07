#import "TLRPCmessages_saveDraft.h"

#import "TLMetaClassStore.h"
#import "TL/TLMetaScheme.h"

//messages.saveDraft flags:# no_webpage:flags.1?true reply_to_msg_id:flags.0?int peer:InputPeer message:string entities:flags.3?Vector<MessageEntity> = Bool;


/// reply_to схемы 228 — объект InputReplyTo; шлём минимальный
/// inputReplyToMessage#3bd4b7c2 с одним номером сообщения.
static void TGSerializeSaveDraftReplyTo(NSOutputStream *os, int32_t replyToMsgId)
{
    [os writeInt32:(int32_t)0x3bd4b7c2];
    [os writeInt32:0];
    [os writeInt32:replyToMsgId];
}

@implementation TLRPCmessages_saveDraft

- (int32_t)TLconstructorSignature
{
    return (int32_t)0xad0fa15c;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [NSNumber class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 228;
}

// messages.saveDraft#ad0fa15c flags:# reply_to:flags.4?InputReplyTo peer:InputPeer
// message:string entities:flags.3?Vector<MessageEntity> ...
- (void)TLserialize:(NSOutputStream *)os
{
    int32_t flags = 0;
    
    if (_no_webpage) {
        flags |= (1 << 1);
    }
    
    if (_reply_to_msg_id != 0) {
        flags |= (1 << 4);
    }
    
    if (_entities.count != 0) {
        flags |= (1 << 3);
    }
    
    [os writeInt32:flags];
    
    if (flags & (1 << 4)) {
        TGSerializeSaveDraftReplyTo(os, _reply_to_msg_id);
    }
    
    TLMetaClassStore::serializeObject(os, _peer, true);
    
    [os writeString:_message == nil ? @"" : _message];
    
    if (flags & (1 << 3)) {
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
    TGLog(@"***** TLRPCauth_sendCode deserialization not supported");
    return nil;
}


@end
