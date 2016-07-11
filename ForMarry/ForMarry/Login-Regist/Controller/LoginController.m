//
//  LoginController.m
//  ForMarry
//
//  Created by coco船长 on 16/7/11.
//  Copyright © 2016年 nevermore. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)memberAction:(id)sender {
    
    NSLogFM(@"会员登陆");
    
}

- (IBAction)makerAction:(id)sender {

    NSLogFM(@"红娘登陆");

}
@end
