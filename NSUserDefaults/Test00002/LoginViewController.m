//
//  LoginViewController.m
//  Test00002
//
//  Created by gut on 16/5/30.
//  Copyright © 2016年 com.DSDAI. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController (){
    UITextField *_tf;
}

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tf = [[UITextField alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
    _tf.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_tf];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(200, 300, 60, 60);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)buttonClick{
    
    NSLog(@"%@",_tf.text);
    
    [[NSUserDefaults standardUserDefaults] setObject:_tf.text forKey:@"login"];


    NSLog(@"----%@-----",[[NSUserDefaults standardUserDefaults] objectForKey:@"login"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
