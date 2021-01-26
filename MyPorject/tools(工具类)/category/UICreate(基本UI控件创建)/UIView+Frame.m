//
//  UIView+Frame.m
//  MyPorject
//
//  Created by Yuki on 2021/1/22.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
#pragma mark - --------- set、get方法  ---------
- (CGFloat)left{
    return self.frame.origin.x;
}
- (void)setLeft:(CGFloat)left{
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}


- (CGFloat)right{
    return self.frame.origin.x + self.width;
}
- (void)setRight:(CGFloat)right{
    self.left = right - self.width;
}



- (CGFloat)top{
    return self.frame.origin.y;
}
- (void)setTop:(CGFloat)top{
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}



- (CGFloat)bottom{
    return self.frame.origin.y + self.height;
}
- (void)setBottom:(CGFloat)bottom{
    self.top = bottom - self.height;
}



- (CGFloat)width{
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}



- (CGFloat)height{
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}



- (CGFloat)centerX{
    return self.center.x;
}
- (void)setCenterX:(CGFloat)centerX{
    self.center = CGPointMake(centerX, self.centerY);
}


- (CGFloat)centerY{
    return self.center.y;
}
- (void)setCenterY:(CGFloat)centerY{
    self.center = CGPointMake(self.centerX, centerY);
}

@end
