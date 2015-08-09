//
//  ViewController.h
//  firstios
//
//  Created by 刘hong on 15/7/19.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//ui界面不需要手动管理内存，所以不需要retain或者copy策略，加上这个qq对话框是我们的主界面所以，不需要线程枷锁
@property (nonatomic,assign) IBOutlet UITextField *qq;
@property (nonatomic,assign) IBOutlet UITextField *pwd;



//IBAction其实就是void
//使用这个返回值可以让方法名显示到storybord列表中
- (IBAction)login;

@end

