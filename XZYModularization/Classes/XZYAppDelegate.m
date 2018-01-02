//
//  XZYAppDelegate.m
//  XZYModularization
//
//  Created by 徐自由 on 2018/1/2.
//  Copyright © 2018年 徐自由. All rights reserved.
//

#import "XZYAppDelegate.h"
#import "XZYModularization.h"

@implementation XZYAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didFinishLaunchingWithOptions:)]) {
            [module application:application didFinishLaunchingWithOptions:launchOptions];
        }
    }];
    
    return YES;
}


#if __IPHONE_OS_VERSION_MAX_ALLOWED > 80400

-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:performActionForShortcutItem:completionHandler:)]) {
            [module application:application performActionForShortcutItem:shortcutItem completionHandler:completionHandler];
        }
    }];
}
#endif

- (void)applicationWillResignActive:(UIApplication *)application {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(applicationWillResignActive:)]) {
            [module applicationWillResignActive:application];
        }
    }];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(applicationDidEnterBackground:)]) {
            [module applicationDidEnterBackground:application];
        }
    }];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(applicationWillEnterForeground:)]) {
            [module applicationWillEnterForeground:application];
        }
    }];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(applicationDidBecomeActive:)]) {
            [module applicationDidBecomeActive:application];
        }
    }];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(applicationWillTerminate:)]) {
            [module applicationWillTerminate:application];
        }
    }];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:openURL:sourceApplication:annotation:)]) {
            [module application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
        }
    }];
    return YES;
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED > 80400
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:openURL:options:)]) {
            [module application:app openURL:url options:options];
        }
    }];
    return YES;
}
#endif


- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(applicationDidReceiveMemoryWarning:)]) {
            [module applicationDidReceiveMemoryWarning:application];
        }
    }];
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didFailToRegisterForRemoteNotificationsWithError:)]) {
            [module application:application didFailToRegisterForRemoteNotificationsWithError:error];
        }
    }];
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didRegisterForRemoteNotificationsWithDeviceToken:)]) {
            [module application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
        }
    }];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didReceiveRemoteNotification:)]) {
            [module application:application didReceiveRemoteNotification:userInfo];
        }
    }];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didReceiveRemoteNotification:fetchCompletionHandler:)]) {
            [module application:application didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
        }
    }];
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didReceiveLocalNotification:)]) {
            [module application:application didReceiveLocalNotification:notification];
        }
    }];
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED > 80000
- (void)application:(UIApplication *)application didUpdateUserActivity:(NSUserActivity *)userActivity {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didUpdateUserActivity:)]) {
            [module application:application didUpdateUserActivity:userActivity];
        }
    }];
}

- (void)application:(UIApplication *)application didFailToContinueUserActivityWithType:(NSString *)userActivityType error:(NSError *)error {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:didFailToContinueUserActivityWithType:error:)]) {
            [module application:application didFailToContinueUserActivityWithType:userActivityType error:error];
        }
    }];
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:continueUserActivity:restorationHandler:)]) {
            [module application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
        }
    }];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application willContinueUserActivityWithType:(NSString *)userActivityType {
    
    [[XZYModularization sharedInstence] enumerateModules:^(id<XZYModuleProtocol> module) {
        if ([module respondsToSelector:@selector(application:willContinueUserActivityWithType:)]) {
            [module application:application willContinueUserActivityWithType:userActivityType];
        }
    }];
    
    return YES;
}
#endif

@end
