//
//  ADNavScrollHiddenTVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavScrollHiddenTVC01.h"

@interface ADNavScrollHiddenTVC01 ()

@end

@implementation ADNavScrollHiddenTVC01

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"导航条滚动隐藏"];
    
     [self.navigationView navigationSmoothScroll:self.tableView start:NavigationHeight_N() speed:0.5f stopToStatusBar:NO];
}

@end
