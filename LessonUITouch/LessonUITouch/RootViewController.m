//
//  RootViewController.m
//  LessonUITouch
//
//  Created by 刘hong on 15/7/30.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "RootViewController.h"
#import "TouchView.h"

@interface RootViewController ()

@end

@implementation RootViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    TouchView *tView = [[TouchView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    tView.backgroundColor = [UIColor greenColor];
    
//    NSLog(@"tView.frame:%@",NSStringFromCGRect(tView.frame));
   
    [self.view addSubview:tView];
//    self.view.userInteractionEnabled = NO;
    //直接隐藏了视图，所以视图也不接受事件了
    //self.view.hidden = YES;
    //把视图设置为完全透明，也不会接受事件
//    self.view.alpha = 0;
    self.view.multipleTouchEnabled = YES;
    [tView release];
    
    // Do any additional setup after loading the view.
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    id obj;
//    
//    
//    NSSet *nSet = [event allTouches];
//    
//    NSEnumerator *touchEnum= [nSet objectEnumerator];
//    
//    UITouch *touch;
//    
////    CGPoint pointA;
////    CGPoint pointB;
//    
//    while (obj = [touchEnum nextObject]) {
//        if([obj isKindOfClass:[UITouch class]]){
//            touch = (UITouch *)obj;
//            NSLog(@"%@",NSStringFromCGPoint([touch locationInView:self.view]));
//        }
//    }
////    int touchCount = [touches count];
////    for (UITouch *touch  in touches) {
////        
////        NSLog(@"%@",NSStringFromCGPoint([touch locationInView:self]) );
////    }
//    
////    NSLog(@"",);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
