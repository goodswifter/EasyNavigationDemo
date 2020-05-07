//
//  ADNavScrollAnimateHiddenTVC02.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavScrollAnimateHiddenTVC02.h"

@interface ADNavScrollAnimateHiddenTVC02 ()

@end

@implementation ADNavScrollAnimateHiddenTVC02

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"导航条动画隐藏(statusBar下停止)"];
    
    [self.navigationView navigationAnimationScroll:self.tableView criticalPoint:NavigationHeight_N() stopToStatusBar:YES];
}

@end
