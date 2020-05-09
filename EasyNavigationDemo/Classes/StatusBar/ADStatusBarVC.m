//
//  ADStatusBarVC.m
//  ADEasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/9.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADStatusBarVC.h"
#import <EasyNavigation/EasyNavigation.h>

@interface ADStatusBarVC ()

@end

@implementation ADStatusBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"statusBar状态改变"];
}

- (IBAction)statusBarHiddenAction {
    self.statusBarHidden = !self.statusBarHidden;
    self.navigationController.statusBarHidden = !self.navigationController.statusBarHidden;
}

- (IBAction)statusBarLightStyleAction {
    self.navigationController.statusBarStyle = UIStatusBarStyleLightContent;
}

- (IBAction)statusBarDefaultStyleAction {
    self.navigationController.statusBarStyle = UIStatusBarStyleDefault;
}

@end
