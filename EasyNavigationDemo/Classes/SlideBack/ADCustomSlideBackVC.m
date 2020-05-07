//
//  ADCustomSlideBackVC.m
//  EasyNavigationDemo
//
//  Created by zhongaidong on 2020/5/7.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ADCustomSlideBackVC.h"

@interface ADCustomSlideBackVC () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ADCustomSlideBackVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationView setTitle:@"自定义返回手势"];
    self.textField.delegate = self ;
    
    self.customBackGestureEnabel = YES ;
    
    __weak typeof(self) weakSelf = self ;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.textField.text = @"100" ;
        [weakSelf.textField becomeFirstResponder];
    });
}

#pragma mark - <UITextFieldDelegate>
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    self.customBackGestureEdge = textField.text.floatValue ;
    [textField resignFirstResponder];
    return YES ;
}

@end
