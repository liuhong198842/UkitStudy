//
//  ViewController.m
//  IOSAppListner
//
//  Created by 刘hong on 15/7/21.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


#pragma mark 加载视图之后调用该方法
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.predictionArray = [NSArray arrayWithObjects:@"my name is liuhong", @"YES! I like Objective-C",@"OH! I like this ",@"HAHA! you cheated",@"OK! you're right",nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
//    NSNumber *preCount = ;
    u_int32_t preIndex =  arc4random_uniform([[NSNumber numberWithInteger:([self.predictionArray count])] unsignedIntValue]);
    
    self.predictionLabel.text =[self.predictionArray objectAtIndex:preIndex];
}
@end
