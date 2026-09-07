#import "TLRPCmessages_sendMultiMedia.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"


/// reply_to схемы 228 — объект InputReplyTo; шлём минимальный
/// inputReplyToMessage#3bd4b7c2 с одним номером сообщения.
static void TGSerializeMultiMediaReplyTo(NSOutputStream *os, int32_t replyToMsgId)
{
    [os writeInt32:(int32_t)0x3bd4b7c2];
    [os writeInt32:0];
    [os writeInt32:replyToMsgId];
}

@implementation TLRPCmessages_sendMultiMedia

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x1bf89d74;
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

// messages.sendMultiMedia#1bf89d74 flags:# peer:InputPeer reply_to:flags.0?InputReplyTo
// multi_media:Vector<InputSingleMedia> ...
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:_flags & ~(1 << 4)];
    
    TLMetaClassStore::serializeObject(os, _peer, true);
    
    if (_flags & (1 << 0))
        TGSerializeMultiMediaReplyTo(os, _reply_to_msg_id);
    
    int32_t vectorSignature = TL_UNIVERSAL_VECTOR_CONSTRUCTOR;
    [os writeInt32:vectorSignature];
    
    [os writeInt32:(int32_t)self.multi_media.count];
    for (TLInputSingleMedia *media in self.multi_media) {
        TLMetaClassStore::serializeObject(os, media, true);
    }
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_sendMultiMedia deserialization not supported");
    return nil;
}

@end
