/*
 * This is the source code of Telegram for iOS v. 1.1
 * It is licensed under GNU GPL v. 2 or later.
 * You should have received a copy of the license in this archive (see LICENSE).
 *
 * Copyright Peter Iakovlev, 2013.
 */

#import "TGTLSerialization.h"

#import "TL/TLMetaScheme.h"
#import "TLMetaClassStore.h"
#import "ModernTL.h"

#import <objc/runtime.h>
#import "TLMetaSchemeData.h"

#import "TLMessageContainer.h"
#import "TLFutureSalts.h"
#import "TLRpcResult.h"

#import "NSInputStream+TL.h"

#import <MTProtoKit/MTDatacenterAddress.h>
#import <MTProtoKit/MTDatacenterSaltInfo.h>

#import "TLMsgsAck$msgs_ack_manual.h"

#import "TLDcOption$modernDcOption.h"

@interface TGTLSerializationEnvironment : NSObject <TLSerializationEnvironment>

@property (nonatomic, copy) int32_t (^responseParsingBlock)(int64_t, bool *);

@end

@implementation TGTLSerializationEnvironment

- (instancetype)initWithResponseParsingBlock:(int32_t (^)(int64_t, bool *))responseParsingBlock
{
    self = [super init];
    if (self != nil)
    {
        self.responseParsingBlock = responseParsingBlock;
    }
    return self;
}

- (TLSerializationContext *)serializationContextForRpcResult:(int64_t)requestMessageId
{
    if (_responseParsingBlock != nil)
    {
        bool found = false;
        int32_t signature = _responseParsingBlock(requestMessageId, &found);
        if (found)
        {
            TLSerializationContext *context = [[TLSerializationContext alloc] init];
            context.impliedSignature = signature;
            return context;
        }
    }
    
    return nil;
}

@end

@interface TGTLSerialization ()

@end

@implementation TGTLSerialization

- (instancetype)init
{
    self = [super init];
    if (self != nil)
    {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^
        {
            TLRegisterClasses();
            
            TLMetaClassStore::registerObjectClass([[TLMessageContainer$msg_container alloc] init]);
            TLMetaClassStore::registerObjectClass([[TLFutureSalts$future_salts alloc] init]);
            
            TLMetaClassStore::mergeScheme(TLgetMetaScheme());
        });
    }
    return self;
}

+ (NSData *)serializeMessage:(id)message
{
    NSOutputStream *os = [[NSOutputStream alloc] initToMemory];
    [os open];
    TLMetaClassStore::serializeObject(os, message, true);
    NSData *data = [os currentBytes];
    [os close];
    
    return data;
}

- (id)parseMessage:(NSData *)data
{
    NSInputStream *is = [[NSInputStream alloc] initWithData:data];
    [is open];
    
    bool readError = false;
    int32_t topSignature = [is readInt32:&readError];
    if (readError)
    {
        [is close];
        return nil;
    }
    
    __autoreleasing NSError *error = nil;
    id topObject = TLMetaClassStore::constructObject(is, topSignature, nil, nil, &error);
    if (error != nil)
        TGLog(@"%@", error.description);
    
    [is close];
    
    return topObject;
}

/// В схеме 228 часть методов отвечает обёрткой: users.getFullUser отдаёт
/// users.userFull{full_user, chats, users}, messages.getPeerSettings —
/// messages.peerSettings{settings, ...}. Код 2018 года ждёт сам объект,
/// поэтому достаём его из обёртки по типу, который объявил запрос.
+ (id)unwrapResponse:(id)result forRequest:(TLMetaRpc *)request
{
    Class expected = [request responseClass];
    if (expected == Nil || result == nil || [result isKindOfClass:expected]) {
        return result;
    }
    
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList([result class], &count);
    id unwrapped = nil;
    for (unsigned int i = 0; i < count && unwrapped == nil; i++) {
        NSString *name = [[NSString alloc] initWithUTF8String:property_getName(properties[i])];
        id value = nil;
        @try {
            value = [result valueForKey:name];
        } @catch (NSException *exception) {
            continue;
        }
        if ([value isKindOfClass:expected]) {
            unwrapped = value;
            TGLog(@"[ModernTL] %@ развёрнут из %@.%@", NSStringFromClass(expected), NSStringFromClass([result class]), name);
        }
    }
    free(properties);
    
    return unwrapped != nil ? unwrapped : result;
}

+ (id)parseResponse:(NSData *)data request:(TLMetaRpc *)request
{
    NSInputStream *is = [[NSInputStream alloc] initWithData:data];
    [is open];
    
    bool readError = false;
    int32_t topSignature = [is readInt32:&readError];
    if (readError)
    {
        [is close];
        return nil;
    }
    
    __autoreleasing NSError *error = nil;
    TLSerializationContext *context = [[TLSerializationContext alloc] init];
    context.impliedSignature = request.impliedResponseSignature;
    id topObject = TLMetaClassStore::constructObject(is, topSignature, nil, context, &error);
    if (error != nil)
        TGLog(@"%@", error.description);
    
    [is close];
    
    return [self unwrapResponse:topObject forRequest:request];
}

- (MTExportAuthorizationResponseParser)exportAuthorization:(int32_t)datacenterId data:(__autoreleasing NSData **)data
{
    TLRPCauth_exportAuthorization$auth_exportAuthorization *exportAuthorization = [[TLRPCauth_exportAuthorization$auth_exportAuthorization alloc] init];
    exportAuthorization.dc_id = datacenterId;
    
    if (data)
        *data = [TGTLSerialization serializeMessage:exportAuthorization];
    
    return ^id (NSData *response)
    {
        id result = [self parseMessage:response];
        if ([result isKindOfClass:[TLauth_ExportedAuthorization class]])
        {
            return [[MTExportedAuthorizationData alloc] initWithAuthorizationBytes:((TLauth_ExportedAuthorization *)result).bytes authorizationId:((TLauth_ExportedAuthorization *)result).n_id];
        }
        return nil;
    };
}

- (NSData *)importAuthorization:(int64_t)authId bytes:(NSData *)bytes
{
    TLRPCauth_importAuthorization$auth_importAuthorization *importAuthorization = [[TLRPCauth_importAuthorization$auth_importAuthorization alloc] init];
    importAuthorization.n_id = authId;
    importAuthorization.bytes = bytes;
    
    return [TGTLSerialization serializeMessage:importAuthorization];
}

- (MTRequestDatacenterAddressListParser)requestDatacenterAddressWithData:(__autoreleasing NSData **)data
{
    NSData *getConfigData = [TGTLSerialization serializeMessage:[[TLRPChelp_getConfig$help_getConfig alloc] init]];
    if (data)
        *data = getConfigData;
    
    return ^MTDatacenterAddressListData *(NSData *response)
    {
        id result = [self parseMessage:response];
        // config может прийти как ModernTL_config, так и в виде старого
        // TLConfig$config — если для него нашёлся мост.
        if ([result respondsToSelector:@selector(dc_options)])
        {
            NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
            
            id config = result;
            for (id dcOption in [config dc_options])
            {
                if (![dcOption respondsToSelector:@selector(ip_address)])
                    continue;
                int32_t datacenterId = [[dcOption valueForKey:@"n_id"] intValue];
                int32_t optionFlags = [[dcOption valueForKey:@"flags"] intValue];
                
                NSMutableArray *array = dict[@(datacenterId)];
                if (array == nil) {
                    array = [[NSMutableArray alloc] init];
                    dict[@(datacenterId)] = array;
                }
                
                MTDatacenterAddress *address = [[MTDatacenterAddress alloc] initWithIp:[dcOption valueForKey:@"ip_address"] port:(uint16_t)[[dcOption valueForKey:@"port"] intValue] preferForMedia:optionFlags & (1 << 1) restrictToTcp:optionFlags & (1 << 2) cdn:optionFlags & (1 << 3) preferForProxy:optionFlags & (1 << 4) secret:[dcOption valueForKey:@"secret"]];
                [array addObject:address];
            }
            
            return [[MTDatacenterAddressListData alloc] initWithAddressList:dict];
        }
        return nil;
    };
}

- (MTRequestNoopParser)requestNoop:(__autoreleasing NSData **)data
{
    NSData *testData = [TGTLSerialization serializeMessage:[[TLRPChelp_test$help_test alloc] init]];
    if (data)
        *data = testData;
    
    return ^id (NSData *response)
    {
        __unused id result = [self parseMessage:response];
        return @(result != nil);
    };
}

- (NSUInteger)currentLayer
{
    // Слой, под который сгенерирован ModernTL (modern_scheme.tl).
    return 228;
}

@end
