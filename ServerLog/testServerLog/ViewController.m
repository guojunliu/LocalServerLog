//
//  ViewController.m
//  testServerLog
//
//  Created by steve on 2017/6/26.
//  Copyright © 2017年 liuguojun. All rights reserved.
//

#import "ViewController.h"
#import "HttpServerLogger.h"
#import "STLogCacheCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[HttpServerLogger shared] startServer];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.backgroundColor = [UIColor orangeColor];
    button.frame = CGRectMake(70, 100, 250, 40);
    [button setTitle:@"测试" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(intersitialClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


- (void)intersitialClick
{
    NSString *str = [NSString stringWithFormat:@"test %@",[NSDate date]];
    [STLogCacheCenter log:str];
}


@end
