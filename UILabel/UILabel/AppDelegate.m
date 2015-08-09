//
//  AppDelegate.m
//  UILabel
//
//  Created by 刘hong on 15/7/27.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 240, 40)];
    //设置内容的对齐格式
    testLabel.textAlignment = NSTextAlignmentLeft;
    testLabel.backgroundColor = [UIColor yellowColor];
    //指定内容的显示颜色
    testLabel.textColor = [UIColor redColor];
    //设置内容的字体
    testLabel.font = [UIFont systemFontOfSize:12.0];
    //设置显示的行数，超出2行的内容就不显示用...来代替显示；设置为0代表只要这个label的高度足够，不限制行数
    testLabel.numberOfLines = 0;
    //设置断行格式
    testLabel.lineBreakMode = NSLineBreakByWordWrapping;
    //testLabel.text = @"Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!Hello UKIT!!";
    testLabel.tag = 101;
    [self.window addSubview:testLabel];
    [testLabel release];
    

    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 80, 20)];
    //设置文本输入框的边界样式
    textField.borderStyle = UITextBorderStyleRoundedRect;
    //设置文本输入框的初始显示内容
    //textField.text = @"haha";
    //设置文本输入的提示信息,当点击文本框编辑时，提示内容自动消失，当把输入的内容全部删除的时候又出现了
    //textField.placeholder = @"请输入用户名";
    textField.font = [UIFont systemFontOfSize:12.0];
    //设置键盘的样式
    textField.keyboardType = UIKeyboardTypeNumberPad;
    //设置输入的内容，以密文的方式显示（密码框常用）
   // textField.secureTextEntry = YES;
    //回收键盘
    textField.delegate = self;
    textField.tag = 102;
    [self.window addSubview:textField];
    [textField release];
    
    
    //运算符
    UITextField *textRegField = [[UITextField alloc] initWithFrame:CGRectMake(120, 100, 20, 20)];
    textRegField.borderStyle = UITextBorderStyleRoundedRect;
    textRegField.font = [UIFont systemFontOfSize:12.0];
    textRegField.keyboardType = UIKeyboardTypeEmailAddress;
    textRegField.delegate = self;
    textRegField.tag = 103;
    [self.window addSubview:textRegField];
    [textRegField release];
    
    UITextField *textField2 = [[UITextField alloc] initWithFrame:CGRectMake(160, 100, 80, 20)];
    textField2.borderStyle = UITextBorderStyleRoundedRect;
    textField2.font = [UIFont systemFontOfSize:12.0];
    textField2.keyboardType = UIKeyboardTypeNumberPad;
    textField2.delegate = self;
    textField2.tag = 104;
    [self.window addSubview:textField2];
    [textField2 release];
    
    
    
    UIButton *testButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    testButton.frame = CGRectMake(30, 150, 50, 20);
    //设置按钮在正常状态时显示内容为nomal，
    [testButton setTitle:@"＝" forState:UIControlStateNormal];
    //设置在高亮状态（就是点击按钮后还未松开时候的状态）的显示内容
    //[testButton setTitle:@"heighLight" forState:UIControlStateHighlighted];
   // testButton.backgroundColor = [UIColor blueColor];
    
    [testButton addTarget:self action:@selector(doClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:testButton];
    
    return YES;
}

- (void)doClick:(UIButton *)button{
    UIView *resultView = [self.window viewWithTag:101];
    UIView *numberView1 = [self.window viewWithTag:102];
    UIView *regView = [self.window viewWithTag:103];
    
    UIView *numberView2 = [self.window viewWithTag:104];
    
  
    NSString *strReg;
    NSString *strNum1;
    NSString *strNum2;
    if([resultView isKindOfClass:[UILabel class]] && [regView isKindOfClass:[UITextField class]]&&[numberView1 isKindOfClass:[UITextField class]] &&[numberView2 isKindOfClass:[UITextField class]]){
        strReg = [((UITextField *)regView).text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
   
        strNum1 = [((UITextField *)numberView1).text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
   
        strNum2 = [((UITextField *)numberView2).text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if([@"+" isEqualToString:strReg]){
            ((UILabel *)resultView).text = [NSString stringWithFormat:@"%.4f",[strNum1 floatValue] + [strNum2 floatValue]] ;
        }
        else if([@"-" isEqualToString:strReg]){
            ((UILabel *)resultView).text = [NSString stringWithFormat:@"%.4f",[strNum1 floatValue] - [strNum2 floatValue]] ;
        }
        else if([@"*" isEqualToString:strReg]){
            ((UILabel *)resultView).text = [NSString stringWithFormat:@"%.4f",[strNum1 floatValue] * [strNum2 floatValue]] ;
            
        }
        else if([@"/" isEqualToString:strReg]){
            ((UILabel *)resultView).text = [NSString stringWithFormat:@"%.4f",[strNum1 floatValue] / [strNum2 floatValue]] ;
            
        }
    }
    
    
   
    
    
    
   
    
}

//实现UITextFieldDelegate协议中的方法，该方法在点击键盘中的 ‘return’ 键的时候调用
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //回收键盘，具体方法的意义后面再学习
    [textField resignFirstResponder];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
