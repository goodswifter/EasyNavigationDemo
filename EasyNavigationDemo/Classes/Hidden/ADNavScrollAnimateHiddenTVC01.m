//
//  ADNavScrollAnimateHiddenTVC01.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavScrollAnimateHiddenTVC01.h"

@interface ADNavScrollAnimateHiddenTVC01 ()

@end

@implementation ADNavScrollAnimateHiddenTVC01

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"导航条动画隐藏"];

    [self.navigationView navigationAnimationScroll:self.tableView criticalPoint:NavigationHeight_N() stopToStatusBar:NO];
}

@end
