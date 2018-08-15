//
//  STLogCacheCenter.h
//  testServerLog
//
//  Created by steve on 2017/6/26.
//  Copyright © 2017年 liuguojun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STLogCacheCenter : NSObject

+ (instancetype)shareInstance;

+ (void)log:(NSString *)str;

+ (NSString *)getLog;

@end
