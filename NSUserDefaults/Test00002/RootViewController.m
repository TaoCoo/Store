//
//  RootViewController.m
//  Test00002
//
//  Created by gut on 16/5/30.
//  Copyright © 2016年 com.DSDAI. All rights reserved.
//

#import "RootViewController.h"
#import "Student.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", student().name);
    NSLog(@"%@", student().age);
    NSLog(@"%@", student().infomation);
    NSLog(@"%d", student().isMan);
    
    student().name            = @"YouXianMing";
    student().age             = @(990);
    student().infomation      = @{@"ValueStorageManager" : @"Useful tool"};
    student().isMan           = YES;
}




@end
