#import "TLRPCmessages_getDialogs.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"


@implementation TLRPCmessages_getDialogs

- (int32_t)TLconstructorSignature
{
    return (int32_t)0xa0f4cb4f;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [TLmessages_Dialogs class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 74;
}

- (void)TLserialize:(NSOutputStream *)os
{
    // layer 228: messages.getDialogs#a0f4cb4f flags:# exclude_pinned:flags.0?true
    // folder_id:flags.1?int offset_date:int offset_id:int offset_peer:InputPeer
    // limit:int hash:long. Ленты (feed_id) в новой схеме нет, поэтому флаги пустые.
    [os writeInt32:0];
    
    [os writeInt32:self.offset_date];
    
    [os writeInt32:self.offset_id];
    
    TLMetaClassStore::serializeObject(os, self.offset_peer, true);

    [os writeInt32:self.limit];
    
    [os writeInt64:0];
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_getDialogs deserialization not supported");
    return nil;
}

@end

