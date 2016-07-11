//
//  BaseViewController.h
//  ForMarry
//
//  Created by coco船长 on 16/7/11.
//  Copyright © 2016年 nevermore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController{
    
    MBProgressHUD *_hud;
    
}

//显示HUD提示
- (void)showHUD:(NSString *)title;

//隐藏HUD(成功)
- (void)hideSuccessHUD:(NSString *)title;

//隐藏HUD(失败)
- (void)hideFailHUD:(NSString *)title;

@end
