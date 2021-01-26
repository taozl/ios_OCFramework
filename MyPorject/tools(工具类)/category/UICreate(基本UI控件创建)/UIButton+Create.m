//
//  UIButton+Create.m
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import "UIButton+Create.h"
#import <objc/runtime.h>

@implementation UIButton (Create)

/// 创建按钮
/// @param titleStr 标题
/// @param titleFont 标题字体
/// @param titleColor 标题颜色
+ (UIButton *)zl_createButtonWithTitle:(NSString *)titleStr
                             titleFont:(UIFont *)titleFont
                            titleColor:(UIColor *)titleColor{
    return [self _createBtnWithTitle:titleStr titleFont:titleFont titleColor:titleColor traget:nil action:nil actionBlock:nil];
}

/// 创建按钮
/// @param titleStr 标题
/// @param titleFont 标题字体
/// @param titleColor 标题颜色
/// @param traget 消息的执行者
/// @param action 点击事件
+ (UIButton *)zl_createButtonWithTitle:(NSString *)titleStr
                             titleFont:(UIFont *)titleFont
                            titleColor:(UIColor *)titleColor
                                traget:(id)traget
                                action:(SEL)action{
    return [self _createBtnWithTitle:titleStr titleFont:titleFont titleColor:titleColor traget:traget action:action actionBlock:nil];
}

/// 创建按钮
/// @param titleStr 标题
/// @param titleFont 标题字体
/// @param titleColor 标题颜色
/// @param actionBlock 标题点击事件回调
+ (UIButton *)zl_createButtonWithTitle:(NSString *)titleStr
                             titleFont:(UIFont *)titleFont
                            titleColor:(UIColor *)titleColor
                           actionBlock:(ZL_ClickCurrenBtnBlock)actionBlock{
    
    return [self _createBtnWithTitle:titleStr titleFont:titleFont titleColor:titleColor traget:nil action:nil actionBlock:actionBlock];
}


///private 私有方法
+ (UIButton *)_createBtnWithTitle:(NSString *)titleStr
                        titleFont:(UIFont *)titleFont
                       titleColor:(UIColor *)titleColor
                           traget:(id)traget
                           action:(SEL)action
                      actionBlock:(ZL_ClickCurrenBtnBlock)actionBlock{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = UIColor.clearColor;
    [btn setTitle:titleStr forState:UIControlStateNormal];
    btn.titleLabel.font = titleFont;
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    if (actionBlock){
        btn.clickCurrentBtnBlock = actionBlock;
    }
    if (action){
        ///消息执行者
        [btn addTarget:traget action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return btn;
    
}


/**  动态添加属性  **/
///set方法
- (void)setClickCurrentBtnBlock:(ZL_ClickCurrenBtnBlock)clickCurrentBtnBlock{
    objc_setAssociatedObject(self, @selector(clickCurrentBtnBlock), clickCurrentBtnBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self addTarget:self action:@selector(clickCurrentBtn) forControlEvents:UIControlEventTouchUpInside];
}
///get方法
- (ZL_ClickCurrenBtnBlock)clickCurrentBtnBlock{
    return objc_getAssociatedObject(self, _cmd);
}

///点击事件
- (void)clickCurrentBtn{
    ZL_ClickCurrenBtnBlock block = (ZL_ClickCurrenBtnBlock )objc_getAssociatedObject(self, @selector(clickCurrentBtnBlock));
    if (block) {
        block(self);
    }
}
@end
