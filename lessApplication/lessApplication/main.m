//
//  main.m
//  lessApplication
//
//  Created by 刘hong on 15/7/29.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //	创建一个UIApplication对象
        //  指定一个UIApplication的对象：AppDelegate，用于监控这个UOIApplication的一些动作行为，事件（包括启动、退出、进入后台，等等）
        //开启一个事件循环，监听用户点击营运的一些事件
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
