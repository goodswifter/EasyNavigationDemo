//
//  ADNavVC.m
//  ADEasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/9.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavVC.h"

@interface ADNavVC ()

@end

@implementation ADNavVC

+ (void)initialize {
    EasyNavigationOptions *options = [EasyNavigationOptions shareInstance];
    options.titleColor = [UIColor blackColor];
    options.buttonTitleFont = [UIFont systemFontOfSize:18];
    options.navBackgroundImage = [UIImage imageNamed:@"nav_background_image"];
    options.buttonTitleColor = [UIColor blackColor];
    options.buttonTitleColorHieght = [UIColor orangeColor];
    options.navigationBackButtonImage = [UIImage imageNamed:@"nav_btn_back"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 状态栏的隐藏和显示
- (BOOL)prefersStatusBarHidden {
    return self.statusBarHidden;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.statusBarStyle;
}

@end
