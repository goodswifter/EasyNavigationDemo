//
//  ADNavAlphaChangeTVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavAlphaChangeTVC.h"

@interface ADNavAlphaChangeTVC ()

@end

@implementation ADNavAlphaChangeTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"导航栏渐变"];
    
    self.tableView.contentInset = UIEdgeInsetsMake(-StatusBarHeight_N(), 0, 0, 0);

#if 1 // 以下两个2选1
    [self.navigationView navigationAlphaSlowChangeWithScrollow:self.tableView];
#else
    [self.navigationView navigationAlphaSlowChangeWithScrollow:self.tableView start:NAV_HEIGHT end:NAV_HEIGHT * 4];
#endif
}

@end
