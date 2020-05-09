//
//  ADNavTransparentTVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavTransparentTVC.h"

@interface ADNavTransparentTVC () <UIScrollViewDelegate>

@end

@implementation ADNavTransparentTVC

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%lf", NavigationHeight_N());
    self.tableView.contentInset = UIEdgeInsetsMake(-StatusBarHeight_N(), 0, 0, 0);
    [self.navigationView setTitle:@"导航栏透明"];
    [self.navigationView setNavigationBackgroundAlpha:0];
    self.navigationView.lineView.alpha = 1;
}

#pragma mark - <UIScrollViewDelegate>
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
  
    UIImage *btnImage = nil;
    if (scrollView.contentOffset.y > 100) {
        btnImage = [UIImage imageNamed:@"nav_btn_back_blue.png"];
        self.navigationView.titleLabel.textColor = [UIColor cyanColor];
    } else{
        btnImage = [UIImage imageNamed:@"nav_btn_back.png"];
        self.navigationView.titleLabel.textColor = [UIColor whiteColor];
    }
    
    [self.navigationView.navigationBackButton setImage:btnImage forState:UIControlStateNormal];
}

@end
