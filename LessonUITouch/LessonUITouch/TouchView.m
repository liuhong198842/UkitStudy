//
//  TouchView.m
//  LessonUITouch
//
//  Created by 刘hong on 15/7/30.
//  Copyright (c) 2015年 LH. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/




#pragma mark 计算两点之间的距离
- (CGFloat)distanceFromPointA:(CGPoint)pointA AndPointB:(CGPoint)pointB{
    CGFloat width = pointA.x - pointB.x;
    CGFloat height = pointA.y - pointB.y;
    if (width < 0){
        width = fabsf(width);
    }
    if (height < 0){
        height = fabsf(height);
    }
    
//    NSLog(@"pointA:%@   pointb:%@",NSStringFromCGPoint(pointA),NSStringFromCGPoint(pointA));
//    
//   NSLog(@"width:%f   height:%f",width,height);
//    NSLog(@"(width*width)+(height*height):%f",(width*width)+(height*height));
//    
//    NSLog(@"sqrtf((width*width)+(height*height)):%f",sqrtf((width*width)+(height*height)));

    return sqrtf((width*width)+(height*height));
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    NSLog(@"function:%s,line:%i",__FUNCTION__,__LINE__);
//    self.backgroundColor = [UIColor colorWithRed:(arc4random()%256)/255.0 green:(arc4random()%256)/255.0 blue:(arc4random()%256)/255.0 alpha:1.0];
    
   

    NSSet *allTouch = [event allTouches];
    
    
    NSEnumerator *enu = [allTouch objectEnumerator];
    id obj;
    UITouch *touch1 = nil;
    UITouch *touch2 = nil;
    int i = 0;
    
    while (obj = [enu nextObject]) {
        if([obj isKindOfClass:[UITouch class]]){
            if (i == 1) {
                touch2 = (UITouch *)obj;
            }else{
                touch1 = (UITouch *)obj;
                i++;
            }
            
        }
    }
    
    
    CGPoint point1 = [touch1 locationInView:self];
    CGPoint point2 = [touch2 locationInView:self];
    
    
    _beginDistance = [self distanceFromPointA:point1 AndPointB:point2];
    
    
    
//    NSLog(@"_beginDistance:%f",_beginDistance);

}




//移动方法中实现一个功能，让这个视图跟着你的移动而改变在控制器子视图中的位置
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
//    NSLog(@"function:%s,line:%i",__FUNCTION__,__LINE__);
//    UITouch *uTouch;
//    CGPoint touchLocaltion = [uTouch locationInView:self];
//    
//    //获取当前视图的位置中心偏移量
//    CGPoint newCenter = self.center;
//   
//    //设置当前视图的中心偏移量为 视图中心偏移量加上（开始点击位置与移动位置的偏移量）
//    self.center = CGPointMake(newCenter.x+(touchLocaltion.x-_touchBeganPoint.x), newCenter.y+(touchLocaltion.y-_touchBeganPoint.y));
    
  
    id obj;
    
    UITouch *uTouch;
    
    
    NSEnumerator *touchEnum= [[event allTouches] objectEnumerator];
    
    
    
    CGPoint pointA;
    CGPoint pointB;
    
    
    int i = 0;
    
    while (obj = [touchEnum nextObject]) {
        if([obj isKindOfClass:[UITouch class]]){
            uTouch = (UITouch *)obj;
//            NSLog(@"pointA.x:%f",pointA.x);
            if(i == 0){
                pointA = [uTouch locationInView:self];
                i++;
            }else if(i == 1){
                pointB = [uTouch locationInView:self];
                break;
            }
        }
    }
    
    CGFloat moveCatercorner = [self distanceFromPointA:pointA AndPointB:pointB];
    
    CGFloat offsetWidth = self.frame.size.width;
    CGFloat offsetHeight = self.frame.size.height;
    CGFloat offsetX =self.frame.origin.x;
    CGFloat offsetY = self.frame.origin.y;
    CGFloat sizePorportion = moveCatercorner / _beginDistance;
    
    CGFloat catercorner = [self distanceFromPointA:CGPointMake(0, 0) AndPointB:CGPointMake(320, 480)];
    
    NSLog(@"catercorner:%f",catercorner*sizePorportion);
    CGPoint movePoint = CGPointMake(offsetWidth*sizePorportion, offsetHeight*sizePorportion);
    NSLog(@"movePoint:%@",NSStringFromCGPoint(movePoint));

    if (movePoint.x > 320.0 ) {
        _beginDistance = moveCatercorner;
        movePoint.x = 320.0;
    }
    else if(movePoint.y > 480.0){
        _beginDistance = moveCatercorner;
        movePoint.y = 480.0;
    }
    else if(movePoint.x <10.0){
        _beginDistance = moveCatercorner;
        movePoint.x = 10.0;

    }
    else if(movePoint.y <10.0){
        _beginDistance = moveCatercorner;
        movePoint.y = 10.0;
    }
   
    self.frame = CGRectMake(offsetX, offsetY, movePoint.x, movePoint.y);
    
    
    
    
}



- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"function:%s,line:%i",__FUNCTION__,__LINE__);

};

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"function:%s,line:%i",__FUNCTION__,__LINE__);
    
    self.frame = [[UIScreen mainScreen] bounds];

};


@end
