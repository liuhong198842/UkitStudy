//
//  RootViewController.m
//  LessonUIViewController
//
//  Created by 刘hong on 15/7/30.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

#pragma mark 重写父类的加载根视图的方法，如果不重写，父类会自动初始化一个跟视图；重写就必须要指定一个控制器的跟视图，一般我们都不重写该方法
//APP 运行，先跑init 然后跑
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil 来查找XIB中有没有视图view。如果有，则不会再走loadView。如果这个时候你的VC是没有xib的，哪么显然走这个方法后，是找不到任何view的，即self.view 仍为nil.然后，就跑loadview,这个时候会被触发，如果在loadView中，什么也不做，也不实例化一个View。哪么程序继续跑到viewDidLoad里，如果这里还是没有实例化VIEW。哪么这个VC就没有视窗。在这里很多时侯会出现一个误区（死循环）。
//- (void)loadView{
//    //这里指定大小没有意义，它最终展现的还是window的大小
//    self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
//    NSLog(@"fucntion:%s,line:%i",__FUNCTION__,__LINE__);
//}




#pragma mark 当视图控制器的视图已经被加载到内存时调用，可以在这里面加一些自定义的子视图
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"fucntion:%s,line:%i",__FUNCTION__,__LINE__);
    
    self.view.backgroundColor = [UIColor redColor];
    
    // Do any additional setup after loading the view.
}

#pragma mark 内存警告 （应用程序内存超过指定的阀值时），调用该方法
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"fucntion:%s,line:%i",__FUNCTION__,__LINE__);

    // Dispose of any resources that can be recreated.
}

#pragma mark 视图将要显示时调用
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"fucntion:%s,line:%i",__FUNCTION__,__LINE__);

}

#pragma mark 视图已经显示
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"fucntion:%s,line:%i",__FUNCTION__,__LINE__);

}

#pragma mark 视图将要消失
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"fucntion:%s,line:%i",__FUNCTION__,__LINE__);

}

#pragma mark 视图已经消失
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"fucntion:%s,line:%i",__FUNCTION__,__LINE__);

    
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
