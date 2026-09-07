#import "TLRPCmessages_search.h"

#import "TLMetaClassStore.h"
#import "TLInputPeer.h"
#import "TLInputUser.h"

@implementation TLRPCmessages_search

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x29ee847a;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [TLmessages_Messages class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 228;
}

//messages.search#f288a275 flags:# peer:InputPeer q:string from_id:flags.0?InputUser filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;

// messages.search#29ee847a flags:# peer:InputPeer q:string from_id:flags.0?InputPeer
// ... filter:MessagesFilter min_date:int max_date:int offset_id:int add_offset:int
// limit:int max_id:int min_id:int hash:long
- (void)TLserialize:(NSOutputStream *)os
{
    // from_id стал InputPeer вместо InputUser — переписываем на лету.
    bool hasFromId = (self.flags & (1 << 0)) != 0 && self.from_id != nil
        && ![self.from_id isKindOfClass:[TLInputUser$inputUserEmpty class]];
    [os writeInt32:hasFromId ? (1 << 0) : 0];
    
    TLMetaClassStore::serializeObject(os, self.peer, true);
    
    [os writeString:self.q == nil ? @"" : self.q];
    
    if (hasFromId)
        TLSerializeInputUserAsPeer(os, self.from_id);
    
    TLMetaClassStore::serializeObject(os, self.filter, true);
    
    [os writeInt32:self.min_date];
    [os writeInt32:self.max_date];
    [os writeInt32:self.max_id];      // offset_id
    [os writeInt32:self.offset];      // add_offset
    [os writeInt32:self.limit];
    [os writeInt32:0];                // max_id
    [os writeInt32:0];                // min_id
    [os writeInt64:0];                // hash
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    return nil;
}

@end
