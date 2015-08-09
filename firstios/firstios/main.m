//
//  main.m
//  firstios
//
//  Created by 刘hong on 15/7/19.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        //UIApplicationMain函数会开启一个消息循环，第三个参数应该传入UIApplication的类名，但是这里nil表示默认为UIApplication的类名，第四个参数指定这个UIApplication的代理器
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
