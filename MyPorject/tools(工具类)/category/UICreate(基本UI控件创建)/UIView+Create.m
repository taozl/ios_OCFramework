//
//  UIView+Create.m
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import "UIView+Create.h"
#import <objc/runtime.h>

@implementation UIView (Create)

/// 创建一个View
+ (UIView *)zl_createUIView{
    UIView *view = [[UIView alloc]init];
    return view;
}


///添加属性
- (void)setClick_CurrentViewBlock:(ZL_ClickCurrentViewBlock)click_CurrentViewBlock{
    objc_setAssociatedObject(self, @selector(click_CurrentViewBlock), click_CurrentViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickCurrentView)]];
}

- (ZL_ClickCurrentViewBlock)click_CurrentViewBlock{
    return objc_getAssociatedObject(self, _cmd);
}

///点击事件
- (void)clickCurrentView{
    ZL_ClickCurrentViewBlock block = (ZL_ClickCurrentViewBlock )objc_getAssociatedObject(self, @selector(click_CurrentViewBlock));
    if (block) {
        block(self);
    }
}



@end
