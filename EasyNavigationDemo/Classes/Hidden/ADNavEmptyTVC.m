//
//  ADNavEmptyTVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavEmptyTVC.h"

@interface ADNavEmptyTVC ()

@end

@implementation ADNavEmptyTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"隐藏导航栏"];
    
    #if 1 // 以下两个2选1
        if (self.navigationView) {
            [self.navigationView removeFromSuperview];
            self.tableView.contentInset = UIEdgeInsetsMake(-StatusBarHeight_N(), 0, 0, 0);
        }
    #else
        self.navigationView.hidden = YES ;
    #endif
}

@end
