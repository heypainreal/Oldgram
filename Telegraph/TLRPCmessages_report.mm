#import "TLRPCmessages_report.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"


@implementation TLRPCmessages_report

- (int32_t)TLconstructorSignature
{
    return (int32_t)0xfc78af9b;
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

// messages.report#fc78af9b peer:InputPeer id:Vector<int> option:bytes message:string
- (void)TLserialize:(NSOutputStream *)os
{
    TLMetaClassStore::serializeObject(os, self.peer, true);
    
    int32_t vectorSignature = TL_UNIVERSAL_VECTOR_CONSTRUCTOR;
    [os writeInt32:vectorSignature];
    [os writeInt32:(int32_t)self.n_id.count];
    for (NSNumber *mid in self.n_id) {
        [os writeInt32:mid.int32Value];
    }
    
    // Причину жалобы теперь выбирают в диалоге на стороне сервера: первый
    // запрос уходит с пустым option, сервер отвечает списком вариантов.
    [os writeBytes:[NSData data]];
    [os writeString:@""];
}

- (id<TLObject>)TLdeserialize:(NSInputStream *)__unused is signature:(int32_t)__unused signature environment:(id<TLSerializationEnvironment>)__unused environment context:(TLSerializationContext *)__unused context error:(__autoreleasing NSError **)__unused error
{
    TGLog(@"***** TLRPCmessages_report deserialization not supported");
    return nil;
}

@end
