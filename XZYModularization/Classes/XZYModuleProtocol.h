//
//  XZYModuleProtocol.h
//  XZYModularization
//
//  Created by 徐自由 on 2018/1/2.
//  Copyright © 2018年 徐自由. All rights reserved.
//
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, XZYModulePriority) {
    XZYModulePriorityDefault = 0,
    XZYModulePriorityLow,
    XZYModulePriorityHigh
};


@protocol XZYModuleProtocol <UIApplicationDelegate>

+ (instancetype)sharedInstence;

@optional
- (NSString *)moduleName;

- (XZYModulePriority)modulePriority;

- (void)receiveEvent:(NSString *)event params:(NSDictionary *)params;

//处理actionName
- (id)performAction:(NSString *)actionName params:(NSDictionary *)params;

//是否支持远程调用
- (id)canPerformRemoteAction:(NSString *)action params:(NSDictionary *)params;

@end

