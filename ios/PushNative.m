//
//  PushNative.m
//  RNDemo
//
//  Created by iOS开发 on 2018/10/10.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "PushNative.h"
#import <React/RCTBridge.h>

#import "TestController.h"
#import "AppDelegate.h"

@implementation PushNative

RCT_EXPORT_MODULE(PushNative)

RCT_EXPORT_METHOD(RNOpenOneVC: (NSString *)msg) {

  
  dispatch_async(dispatch_get_main_queue(), ^{
    NSLog(@"rn传入原生界面的数据为: %@", msg);
    
    TestController *one = [[TestController alloc] init];
    
    AppDelegate *app = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    [app.nav pushViewController:one animated:YES];
  });
}

@end
