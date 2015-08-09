//
//  AppDelegate.m
//  lessApplication
//
//  Created by 刘hong on 15/7/29.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


//程序启动完成后调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //__FUNCTION__指函数名 __LINE__代表函数在多少行
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.backgroundColor = [UIColor redColor];
    RootViewController *rootController = [[RootViewController alloc] init];
    self.window.rootViewController = rootController;
    [rootController release];
    
    return YES;
}

//程序进入非活动状态时调用，这时候程序无法点击与用户交互
- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

//程序进入后台时调用
- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

}
//程序进入后台后，重新进入程序的时候调用
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

}
//程序启动完成，进入活动状态（也就是程序可以开始点击，和用户交互）
- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

}
//程序退出时调用
- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

}

@end
