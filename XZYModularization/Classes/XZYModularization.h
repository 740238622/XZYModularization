//
//  XZYModularization.h
//  XZYModularization
//
//  Created by 徐自由 on 2018/1/2.
//  Copyright © 2018年 徐自由. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XZYModuleProtocol.h"
#import "XZYAppDelegate.h"

@interface XZYModularization : NSObject

+ (instancetype)sharedInstence;

- (void)enumerateModules:(void(^)(id<XZYModuleProtocol>))block;

- (BOOL)registerModule:(id<XZYModuleProtocol>)module protocols:(NSArray<Protocol *> *)protocols;

- (id)moduleConformsToProtocol:(Protocol *)protocol;

- (void)addListener:(id<XZYModuleProtocol>)module toEvent:(NSString *)event;
- (void)removeListener:(id<XZYModuleProtocol>)module toEvent:(NSString *)event;
- (void)removeAllListenersToEvent:(NSString *)event;
- (void)sendEvent:(NSString *)event params:(NSDictionary *)params;

- (id)performAction:(NSString *)actionName toModuleNamed:(NSString *)moduleName params:(NSDictionary *)params;
- (id)performAction:(NSString *)actionName toModuleNamed:(NSString *)moduleName params:(NSDictionary *)params isRemote:(BOOL)isRemote;


@end
