//
//  ADSystemSlideBackVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADSystemSlideBackVC.h"

@interface ADSystemSlideBackVC ()

@end

@implementation ADSystemSlideBackVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"禁用系统返回手势"];
}

- (IBAction)switchAction:(UISwitch *)sender {
    self.disableSlidingBackGesture = sender.isOn;
}

@end
