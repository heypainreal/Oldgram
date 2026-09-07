#import "TLRPCmessages_getBotCallbackAnswer.h"

#import "TLMetaClassStore.h"
#import "TL/TLMetaScheme.h"

//messages.getBotCallbackAnswer flags:# game:flags.1?true peer:InputPeer msg_id:int data:flags.0?bytes = messages.BotCallbackAnswer;

@implementation TLRPCmessages_getBotCallbackAnswer

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x9342ca07;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [TLmessages_BotCallbackAnswer class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 228;
}

- (void)TLserialize:(NSOutputStream *)os
{
    int32_t flags = 0;
    
    if (_data != nil) {
        flags |= (1 << 0);
    }
    
    if (_game) {
        flags |= (1 << 1);
    }
    
    [os writeInt32:flags];
    
    TLMetaClassStore::serializeObject(os, _peer, true);
    
    [os writeInt32:_msg_id];
    
    if (flags & (1 << 0)) {
        [os writeBytes:_data];
    }
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_getBotCallbackAnswer deserialization not supported");
    return nil;
}


@end
