
#import "RNSatismeter.h"
#import "RCTLog.h"
#import "SatisMeter.h"



@implementation RNSatismeter

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(test)
{
/*
    NSDictionary *traitsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                         @"James Bond" ,@"name",
                                         @"Gold", @"plan",
                                                                          @"2015-11-01T00:00:00.000Z", @"createdAt",
                                                                                                           nil];

    [[SatisMeter sharedInstance] identifyUserWithUserId: @"007"
                                     writeKey: @"K7eMIPEXyPMlG7fu"
                                                                      andTraitsDictionary: traitsDictionary];
*/

    NSDictionary *traitsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
        @"James Bond" ,@"name",
        @"Gold", @"plan",
        @"2015-11-01T00:00:00.000Z", @"createdAt",
        nil];

    [[SatisMeter sharedInstance] identifyUserWithUserId: @"007"
                                               writeKey: @"K7eMIPEXyPMlG7fu"
                                   andTraitsDictionary: traitsDictionary
    ];

    [[SatisMeter sharedInstance ] forceSurvey: true];
    // Here's our method's code
      RCTLogInfo(@"showImage called!");
}

@end
  
