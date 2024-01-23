
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNCooklistSdkSpec.h"

@interface CooklistSdk : NSObject <NativeCooklistSdkSpec>
#else
#import <React/RCTBridgeModule.h>

@interface CooklistSdk : NSObject <RCTBridgeModule>
#endif

@end
