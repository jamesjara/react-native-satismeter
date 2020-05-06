/// jamesjara
#import "Satismeter.h"
#import "RCTLog.h"
#import "SatisMeter/SatisMeter.h"

@implementation Satismeter

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(hook: userId:(nonnull NSString *) writeKey:(nonnull NSString *) callback:(RCTResponseSenderBlock)callback)
{
    callback(@[[NSString stringWithFormat: @"userId: %@ writeKey: %@", userId, writeKey]]);
    
    NSDictionary *traitsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                      nil];
    
    [[SatisMeter sharedInstance] identifyUserWithUserId: userId
                                               writeKey: writeKey
                                    andTraitsDictionary: traitsDictionary];

}

@end