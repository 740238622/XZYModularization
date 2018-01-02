//
//  AppDelegate.m
//  XZYModularization
//
//  Created by 徐自由 on 2018/1/2.
//  Copyright © 2018年 徐自由. All rights reserved.
//

#import "AppDelegate.h"
#import "XZYModularization.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    self.window.rootViewController = tab;
    return YES;
}

@end
