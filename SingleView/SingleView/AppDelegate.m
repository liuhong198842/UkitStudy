//
//  AppDelegate.m
//  SingleView
//
//  Created by 刘hong on 15/7/26.
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
    
    UILabel *ocLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 200)];
    
    ocLabel.text = @"I LOVE OBJECTIVE-C!!!";
    ocLabel.textAlignment = NSTextAlignmentCenter;
    
    ocLabel.backgroundColor = [UIColor greenColor];
    
    
    ocLabel.alpha = 0.4;
    //ocLabel.center = CGPointMake(300, 300);
    
    UILabel *yellowLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 250, 100)];
    [yellowLabel setText:@"子视图1"];
    [yellowLabel setBackgroundColor:[UIColor yellowColor]];
    //由于ios系统自带的视图也会有视图编号，所以我们自定义的视图tag要设大一点
    yellowLabel.tag = 101;
    [ocLabel addSubview:yellowLabel];
    [yellowLabel release];
    
    
    UILabel *redLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    redLabel.backgroundColor = [UIColor redColor];
    [ocLabel addSubview:redLabel];
    redLabel.tag = 102;

    [redLabel release];
    
    //frame代表返回所在基础视图或者屏幕的坐标位置，与自身的大小
    NSLog(@"ocView:%@",NSStringFromCGRect(ocLabel.frame) );
    //bounds返回自身为基准的坐标和，自身的大小
    NSLog(@"ocView:%@",NSStringFromCGRect(ocLabel.bounds));
    
    UIView *subView1 = [ocLabel viewWithTag:102];
    
    NSLog(@"SubView tag:102%@",subView1);

    
    //设置子视图中超出本身大小的部分进行裁剪
    ocLabel.clipsToBounds = YES;
    
    
    
    
    
    UITextField *blueText = [[UITextField alloc] init];
    
    blueText.backgroundColor = [UIColor blueColor];
    blueText.frame = CGRectMake(70, 70, 100, 100);
    //根据下表插入一个子视图
    [ocLabel insertSubview:blueText atIndex:2];
    [blueText release];
    //将自己从父视图中衣橱
    //[textField removeFromSuperview];
    
    //移动指定的子视图，显示在同级子视图的最上层
    [ocLabel bringSubviewToFront:yellowLabel];
    //移动指定的子视图，显示在同级子视图的最下层
    [ocLabel sendSubviewToBack:blueText];
    [self.window addSubview:ocLabel];
    [ocLabel release];

    
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
