//
//  AppDelegate.m
//  FirstEmptyIos
//
//  Created by 刘hong on 15/7/23.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //初始化一个window，大小为设备的屏幕大小（也就是占据整个屏幕：UIScreen mainScreen 返回一个UIScreen对象，代表整个屏幕 bounds代表该对象的一个自身坐标系）
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    UILabel *ocLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 30)];
    
    ocLabel.text = @"I LOVE OBJECTIVE-C!!!";
    ocLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.window addSubview:ocLabel];
    //frame代表返回所在基础视图或者屏幕的坐标位置，与自身的大小
    NSLog(@"ocView:%@",NSStringFromCGRect(ocLabel.frame) );
    //bounds返回自身为基准的坐标和，自身的大小
    NSLog(@"ocView:%@",NSStringFromCGRect(ocLabel.bounds));

    
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
