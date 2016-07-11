//
//  MatchViewController.m
//  ForMarry
//
//  Created by 刘毅 on 16/7/11.
//  Copyright © 2016年 nevermore. All rights reserved.
//

#import "MatchViewController.h"

@interface MatchViewController ()

@end

@implementation MatchViewController


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //移除标签栏上的按钮
    for (UIView *subView in self.tabBar.subviews) {
        BOOL isClass = [subView isKindOfClass:NSClassFromString(@"UITabBarButton")];
        if (isClass) {
            [subView removeFromSuperview];
        }
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建子控制器
    [self creatViewControllers];
    //创建标签栏上的按钮
    [self creatTabbarItems];

}

- (void)creatViewControllers {
    
    UIViewController *VC1 = [[UIViewController alloc] init];
    VC1.view.backgroundColor = [UIColor grayColor];
    VC1.title = @"首页";
    UIViewController *VC2 = [[UIViewController alloc] init];
    VC2.view.backgroundColor = [UIColor greenColor];
    VC2.title = @"牵线";
    UIViewController *VC3 = [[UIViewController alloc] init];
    VC3.view.backgroundColor = [UIColor blueColor];
    VC3.title = @"活动";
    UIViewController *VC4 = [[UIViewController alloc] init];
    VC4.view.backgroundColor = [UIColor brownColor];
    VC4.title = @"消息";
    UIViewController *VC5 = [[UIViewController alloc] init];
    VC5.view.backgroundColor = [UIColor yellowColor];
    VC5.title = @"个人中心";
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:VC1];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:VC2];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:VC3];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:VC4];
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:VC5];
 
    
    self.viewControllers = @[nav1,nav2,nav3,nav4,nav5];
}

- (void)creatTabbarItems {
    //设置标签背景
//    self.tabBar.backgroundImage = [UIImage imageNamed:@""];
//    self.tabBar.translucent = YES;
    //自定义标签栏
    NSArray *imgNames = @[@"1",
                          @"2",
                          @"3",
                          @"4",
                          @"5"];
    NSArray *titles = @[@"首页",@"牵线",@"活动",@"消息",@"个人中心"];
    CGFloat width = self.tabBar.bounds.size.width/imgNames.count;
    CGFloat height = self.tabBar.bounds.size.height;
    for (int i = 0; i < imgNames.count; i ++) {
        
        UIControl *itemCtl = [[UIControl alloc] initWithFrame:CGRectMake(width*i, 0, width, height)];
        itemCtl.tag = i;
        [self.tabBar addSubview:itemCtl];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake((width-20)/2, 5, 20, 20)];
        imgView.image = [UIImage imageNamed:imgNames[i]];
      //设置图片的填充模式
        imgView.contentMode = UIViewContentModeScaleAspectFit;
        imgView.backgroundColor = [UIColor grayColor];
        [itemCtl addSubview:imgView];
        
        CGFloat maxY = CGRectGetMaxY(imgView.frame);
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, maxY, width, 20)];
        label.text = titles[i];
        label.font = [UIFont systemFontOfSize:11];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor blackColor];
        [itemCtl addSubview:label];
        
        [itemCtl addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    }
  
}

#pragma mark -- 标签按钮的点击事件
- (void)clickAction:(UIControl *)control {
    self.selectedIndex = control.tag;

}


@end
