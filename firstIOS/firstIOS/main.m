//
//  main.m
//  firstIOS
//
//  Created by 刘hong on 15/7/19.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //第四个参数用来制定application的代理，第三个参数用来制定UIApplication的类名，如果传入的是nil的话，那么默认就是UIApplication
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
