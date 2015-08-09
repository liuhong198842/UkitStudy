//
//  AppDelegate.m
//  firstIOS
//
//  Created by 刘hong on 15/7/19.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



#pragma mark 在应用程序加载完成之后运行时调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"应用程序已经加载完成，准备运行了！！！！");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    NSLog(@"应用程序失去焦点！！！！");

}


#pragma mark 当程序进入后台的时候 调用这个方法，也就是打开应用程序后点击home键，这个时候程序就进入了后台运行
- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    NSLog(@"应用程序进入后台！！！！");

}

#pragma mark 当程序进入前台的时候 调用这个方法
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    NSLog(@"应用程序进入前台！！！！");

}


#pragma mark 应用程序获取焦点的时候调用（获取焦点之后才可以跟用户交互）
- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    NSLog(@"应用程序获取焦点！！！！");

}

#pragma mark 应用程序在某些情况下被终止的时候会调用这个方法，不是每次终止都会调用
- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"应用程序关闭！！！！");

}

@end
