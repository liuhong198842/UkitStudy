//
//  TouchView.h
//  LessonUITouch
//
//  Created by 刘hong on 15/7/30.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchView : UIView{
    @private CGPoint _touchBeganPoint;
    
    @private CGFloat _beginDistance;

}


@end
