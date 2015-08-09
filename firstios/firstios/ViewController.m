//
//  ViewController.m
//  firstios
//
//  Created by 刘hong on 15/7/19.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()

@end

@implementation ViewController


- (IBAction)login{
    NSString *qqText = _qq.text;
    
    NSLog(@"点击登陆按钮,qq输入框的text：%@",qqText);
    //NSLog(@"点击登陆按钮,qq输入框的attributedText：%@",_qq.attributedText);
    //NSTextAlignment
   // UIColor *qqColor = _qq.textColor;
   // UIFont *qqFont = _qq.font;
    
    //NSLog(@"点击登陆按钮,qq输入框的颜色：%@，字体:%@",qqColor,qqFont.fontName);
    NSString *pwdText = _pwd.text;
    
    //取消改视图的第一响应者状态，键盘就会退出
//    [_qq resignFirstResponder];
//    [_pwd resignFirstResponder];
    
    //结束这个视图遗迹子视图的第一响应者状态，同样达到退出键盘的目的
    [self.view endEditing:YES];

    
    NSLog(@"点击登陆按钮,密码输入框的text：%@",pwdText);



    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
