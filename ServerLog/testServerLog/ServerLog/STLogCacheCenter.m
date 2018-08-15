//
//  STLogCacheCenter.m
//  testServerLog
//
//  Created by steve on 2017/6/26.
//  Copyright © 2017年 liuguojun. All rights reserved.
//

#import "STLogCacheCenter.h"

@interface STLogCacheCenter ()
{
    NSMutableString *_logCacheStr;
}
@end

@implementation STLogCacheCenter

static STLogCacheCenter *manager;

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(manager == nil)
        {
            manager = [[STLogCacheCenter alloc] init];
        }
    });
    return manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _logCacheStr = [[NSMutableString alloc] init];
    }
    return self;
}

- (void)log:(NSString *)str
{
    [_logCacheStr appendString:str];
    [_logCacheStr appendString:@"</br>"];
}

- (NSString *)getLog
{
    NSString *str = [[NSString alloc] initWithString:_logCacheStr];
    _logCacheStr = [[NSMutableString alloc] init];
    return str;
}

+ (void)log:(NSString *)str
{
    [[STLogCacheCenter shareInstance] log:str];
}

+ (NSString *)getLog
{
    return [[STLogCacheCenter shareInstance] getLog];
}

@end
