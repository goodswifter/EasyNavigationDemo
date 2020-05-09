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
