//
//  ADNavScrollHiddenTVC02.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavScrollHiddenTVC02.h"

@interface ADNavScrollHiddenTVC02 ()

@end

@implementation ADNavScrollHiddenTVC02

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"导航条滚动隐藏(statusBar下停止)"];
    
    [self.navigationView navigationSmoothScroll:self.tableView start:NavigationHeight_N() speed:0.5 stopToStatusBar:YES];
}

@end
