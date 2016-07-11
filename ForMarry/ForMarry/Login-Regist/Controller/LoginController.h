//
//  LoginController.h
//  ForMarry
//
//  Created by coco船长 on 16/7/11.
//  Copyright © 2016年 nevermore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *memberButton;
@property (weak, nonatomic) IBOutlet UIButton *matchMakerButton;
- (IBAction)memberAction:(id)sender;
- (IBAction)makerAction:(id)sender;

@end
