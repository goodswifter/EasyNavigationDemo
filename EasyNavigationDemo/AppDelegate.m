//
//  AppDelegate.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    EasyNavigationOptions *options = [EasyNavigationOptions shareInstance];
    options.titleColor = [UIColor whiteColor];
    options.buttonTitleFont = [UIFont systemFontOfSize:18];
    options.navBackgroundImage = [UIImage imageNamed:@"nav_background_image"];
    options.buttonTitleColor = [UIColor whiteColor];
    options.buttonTitleColorHieght = [UIColor orangeColor];
    options.navigationBackButtonImage = [UIImage imageNamed:@"nav_btn_back"];
    
    return YES;
}

@end
