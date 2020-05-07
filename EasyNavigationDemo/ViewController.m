//
//  ViewController.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ViewController.h"

// Operate
#import "ADNavOperateTVC.h" // 导航栏Item操作

// Alpha
#import "ADNavTransparentTVC.h" // 导航栏透明
#import "ADNavAlphaChangeTVC.h" // 导航栏渐变
 
// Hidden
#import "ADNavEmptyTVC.h" // 进入页面直接隐藏导航栏
#import "ADNavScrollHiddenTVC01.h" // 导航条滚动隐藏
#import "ADNavScrollHiddenTVC02.h" // 导航条滚动隐藏(statusBar下停止)
#import "ADNavScrollAnimateHiddenTVC01.h" // 导航条动画隐藏
#import "ADNavScrollAnimateHiddenTVC02.h" // 导航条动画隐藏(statusBar下停止)

// SlideBack
#import "ADSystemSlideBackVC.h" // 禁用系统返回手势
#import "ADCustomSlideBackVC.h" // 自定义返回手势
#import "ADNavNestScrollViewVC.h" // 嵌套scrollview返回

// StatusBar
#import "ADStatusBarVC.h" // statusBar状态改变
#import "NavStatusBarViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
/// 组名数据源
@property (nonatomic, strong) NSArray *groupArr;
/// 导航栏数据源
@property (nonatomic, strong) NSArray *dataArr;
/// 导航栏对应的类数据源
@property (nonatomic, strong) NSArray *navDataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"EasyNavigationDemo"];
//    self.navigationView.backgroundView.backgroundColor = [UIColor redColor];
//    self.navigationView.backgroundImageView.image = nil;
    
    self.tableView.tableFooterView = [UIView new];
    self.tableView.sectionFooterHeight = 0.1;
}

#pragma mark - <UITableViewDataSource>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *subDataArr = self.dataArr[section];
    return subDataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"EasyNavigationCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    NSArray *subDataArr = self.dataArr[indexPath.section];
    cell.textLabel.text = subDataArr[indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.groupArr[section];
}

#pragma mark - <UITableViewDelegate>
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    Class nextClass = self.navDataArr[indexPath.section][indexPath.row];
    ADBaseVC *nextVc = [[nextClass alloc] init];
    [self.navigationController pushViewController:nextVc animated:YES];
}

#pragma mark - Getter and Setter
- (NSArray *)groupArr {
    if (!_groupArr) {
        _groupArr = @[@"Operate", @"Alpha", @"Hidden", @"SlideBack", @"StatusBar"];
    }
    return _groupArr;
}

- (NSArray *)dataArr {
    if (!_dataArr) {
        _dataArr = @[@[@"导航栏Item操作"],
                     @[@"导航栏透明", @"导航条渐变"],
                     @[@"隐藏导航栏", @"导航条滚动隐藏", @"导航条滚动隐藏(statusBar下停止)", @"导航条动画隐藏",  @"导航条动画隐藏(statusBar下停止)"],
                     @[@"禁用系统返回手势", @"自定义返回手势", @"嵌套scrollview返回"],
                     @[@"statusBar状态改变"]];
    }
    return _dataArr;
}

- (NSArray *)navDataArr {
    if (!_navDataArr) {
        _navDataArr = @[@[[ADNavOperateTVC class]],
                        @[[ADNavTransparentTVC class],
                          [ADNavAlphaChangeTVC class]],
                        @[[ADNavEmptyTVC class],
                          [ADNavScrollHiddenTVC01 class],
                          [ADNavScrollHiddenTVC02 class],
                          [ADNavScrollAnimateHiddenTVC01 class],
                          [ADNavScrollAnimateHiddenTVC02 class]],
                        @[[ADSystemSlideBackVC class],
                          [ADCustomSlideBackVC class],
                          [ADNavNestScrollViewVC class]],
                        @[[NavStatusBarViewController class]]];
    }
    return _navDataArr;
}

@end
