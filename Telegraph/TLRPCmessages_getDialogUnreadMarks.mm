#import "TLRPCmessages_getDialogUnreadMarks.h"

@implementation TLRPCmessages_getDialogUnreadMarks

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x21202222;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [NSArray class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 228;
}

// messages.getDialogUnreadMarks#21202222 flags:# parent_peer:flags.0?InputPeer
- (void)TLserialize:(NSOutputStream *)os
{
    [os writeInt32:0];
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_getDialogUnreadMarks deserialization not supported");
    return nil;
}

@end
