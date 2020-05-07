//
//  ADNavNestScrollViewVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavNestScrollViewVC.h"

@implementation ADNavNestScrollViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"嵌套scrollview返回"];
    
    UIScrollView *scrollview = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollview.contentSize = CGSizeMake(self.view.width * 3, 0) ;
    scrollview.pagingEnabled = YES ;
    [self.view addSubview:scrollview];

    for (int i = 0; i < 3; i++) {
       UIView *view = [[UIView alloc]initWithFrame:CGRectMake( scrollview.width * i, 0, scrollview.width, scrollview.height)];
       view.backgroundColor = kColorRandom_N ;
       [scrollview addSubview:view];
    }
}

@end
