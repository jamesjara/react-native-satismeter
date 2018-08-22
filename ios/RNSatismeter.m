
#import "RNSatismeter.h"
#import "RCTLog.h"

@implementation RNSatismeter

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(test)
{
      // Here's our method's code
      RCTLogInfo(@"showImage called!");
}

@end
  
