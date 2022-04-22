//
//  OrderPlaceSdkBridge.m
//  RNOrderPlaceSdkAigens
//
//  Created by 陈培爵 on 2022/4/22.
//

// CalendarManagerBridge.m
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNOrderPlaceSdkAigens, NSObject)

//RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)date)
RCT_EXTERN_METHOD(openByod)

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

@end
