#import "TLRPCmessages_searchStickerSets.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"

@implementation TLRPCmessages_searchStickerSets

- (int32_t)TLconstructorSignature
{
    return (int32_t)0x35705b8a;
}

- (int32_t)TLconstructorName
{
    return -1;
}

- (Class)responseClass
{
    return [TLmessages_FoundStickerSets class];
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
    // messages.searchStickerSets#35705b8a flags:# q:string hash:long
    [os writeInt32:_flags];
    [os writeString:_q == nil ? @"" : _q];
    [os writeInt64:_n_hash];
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_searchStickerSets deserialization not supported");
    return nil;
}

@end
