//
//  ViewController.h
//  IOSAppListner
//
//  Created by 刘hong on 15/7/21.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)buttonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *predictionLabel;

@property (nonatomic,retain) NSArray *predictionArray;

//@property (nonatomic,assign) int


@end

