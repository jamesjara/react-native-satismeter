#import "RNSatismeter.h"
#import "RCTLog.h"
#import "SatisMeter.h"

@implementation RNSatismeter

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setKey: (NSString *) key)
{
 _key = key; 
}

RCT_EXPORT_METHOD(setUserId: (NSString *) userid)
{
 _userid = userid;
}

RCT_EXPORT_METHOD(setUserTraits: (NSDictionary *) traits)
{
  _traits = traits;
}

RCT_EXPORT_METHOD(run: (BOOL) force)
{
    [[SatisMeter sharedInstance] identifyUserWithUserId: _userid
                                               writeKey: _key
                                   andTraitsDictionary: _traits 
    ];

    [[SatisMeter sharedInstance ] forceSurvey: force];
}

@end
  
