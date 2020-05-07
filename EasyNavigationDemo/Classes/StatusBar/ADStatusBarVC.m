//
//  ADStatusBarVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADStatusBarVC.h"

@interface ADStatusBarVC ()

@end

@implementation ADStatusBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"statusBar状态改变"];
}

- (IBAction)statusBarSwitchClick:(UISwitch *)sender {
//    self.statusBarHidden = !sender.isOn ;
}

- (IBAction)statusBarStyleSwitchClick:(UISwitch *)sender {
    self.statusBarStyle = sender.isOn ? UIStatusBarStyleDefault : UIStatusBarStyleLightContent ;
}

- (BOOL)prefersStatusBarHidden {
    return self.statusBarHidden;
}

@end
