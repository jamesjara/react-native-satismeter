
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RNSatismeter : NSObject <RCTBridgeModule>

@property (nonatomic, strong) NSDictionary *traits;
@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) NSString *userid;

@end
  
