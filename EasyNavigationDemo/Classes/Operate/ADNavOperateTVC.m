//
//  ADNavOperateTVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADNavOperateTVC.h"

@interface ADNavOperateTVC () <UITableViewDataSource, UITableViewDelegate>

/// 操作名
@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation ADNavOperateTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addLabel];
    self.statusBarStyle = UIStatusBarStyleLightContent;
    [self.navigationView setTitle:@"导航栏Item操作"];
}

- (void)addLabel {
    UILabel *label  =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth_N(), 180)];
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor lightGrayColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"\n以下操作只会对本导航条起作用。\n如果想改变整个工程中导航条属性，请设置EasyNavigationOptions.h中的属性";
    self.tableView.tableHeaderView = label;
}

#pragma mark - <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

#pragma mark - <UITableViewDelegate>
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0: {
            kWeakSelf(self);
            [self.navigationView addLeftButtonWithTitle:@"新增按钮" clickCallBack:^(UIView *view) {
                [weakSelf.navigationController popViewControllerAnimated:YES];
            }];
            break;
        }
        case 1: {
            if (self.navigationView.navigationBackButton) {
                [self.navigationView.navigationBackButton removeFromSuperview];
                self.navigationView.navigationBackButton = nil ;
            }
            break;
        }
        case 2: {
            [self.navigationView setTitle:@"我是标题"];
            break;
        }
        case 3: {
            self.navigationView.titleLabel.font = [UIFont boldSystemFontOfSize:22];
            self.navigationView.titleLabel.textColor = [UIColor redColor];
            break;
        }
        case 4: {
            __block UIView *view = [[UIView alloc]initWithFrame:CGRectMake(100, -10, ScreenWidth_N() - 180, NavigationHeight_N() + 20)];
            view.backgroundColor = [UIColor purpleColor];
            [self.navigationView addTitleView:view];
            break;
        }
        case 5: {
            self.navigationView.backgroundImageView.image = [EasyNavigationUtils createImageWithColor:[UIColor orangeColor]];
            break;
        }
        case 6:{
            self.navigationView.hidden = YES;
            break;
        }
        case 7: {
            self.navigationView.hidden = NO ;
            break;
        }
        default:
            break;
    }
}

#pragma mark - Getter and Setter
- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[
            @"左边增加一个按钮",
            @"删除返回按钮",
            @"增加一个标题",
            @"改变标题的字体",
            @"增加一个视图",
            @"改变导航条背景颜色",
            @"移除导航条",
            @"添加导航条"];
    }
    return _dataArray;
}

@end
