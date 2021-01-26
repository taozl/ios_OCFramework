//
//  UILabel+Create.m
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import "UILabel+Create.h"
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@implementation UILabel (Create)

/// 创建一个文本容器
/// @param text 标题
/// @param font 标题字体
/// @param textColor 标题颜色
+ (UILabel *)zl_createLabelWithLabeltext:(NSString *)text
                               LabelFont:(UIFont *)font
                          LabeltextColor:(UIColor *)textColor{
    UILabel *lb = [[UILabel alloc]init];
    lb.text = text;
    lb.font = font;
    lb.lineBreakMode = NSLineBreakByTruncatingTail;
    lb.textColor = textColor;
    return lb;
}

/// 创建一个带有点击事件文本容器
/// @param text 标题
/// @param font 标题字体
/// @param textColor 标题颜色
/// @param traget action的traget
/// @param action 点击事件
+ (UILabel *)zl_createLabelWithLabeltext:(NSString *)text
                               LabelFont:(UIFont *)font
                          LabeltextColor:(UIColor *)textColor
                                  traget:(id)traget
                                  action:(SEL)action{
    UILabel *lb = [[UILabel alloc]init];
    lb.text = text;
    lb.font = font;
    lb.lineBreakMode = NSLineBreakByTruncatingTail;
    lb.textColor = textColor;
    ///点击事件
    if (action) {
        lb.userInteractionEnabled = YES;
        [lb addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:traget action:action]];
    }
    return lb;
}

/// 创建一个带有点击事件的文本容器
/// @param text 标题
/// @param font 标题字体
/// @param textColor 标题颜色
/// @param actionBlock  点击事件
+ (UILabel *)zl_createLabelWithLabeltext:(NSString *)text
                               LabelFont:(UIFont *)font
                          LabeltextColor:(UIColor *)textColor
                             actionBlock:(ZL_ClickLableBlock)actionBlock{
    UILabel *lb = [[UILabel alloc]init];
    lb.text = text;
    lb.font = font;
    lb.lineBreakMode = NSLineBreakByTruncatingTail;
    lb.textColor = textColor;
    ///点击事件
    if (actionBlock) {
        lb.userInteractionEnabled = YES;
        lb.clickLableBlock = actionBlock;
    }
    return lb;
}



/**  动态添加方法  **/
///get方法
- (ZL_ClickLableBlock)clickLableBlock{
    return objc_getAssociatedObject(self, _cmd);
}
///set方法
- (void)setClickLableBlock:(ZL_ClickLableBlock)clickLableBlock{
    ///动态添加属性
    objc_setAssociatedObject(self, @selector(clickLableBlock), clickLableBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickLb)]];
    
}
///点击事件
- (void)clickLb{
    ZL_ClickLableBlock block = (ZL_ClickLableBlock )objc_getAssociatedObject(self, @selector(clickLableBlock));
    if (block) {
        block(self);
    }
}


#pragma mark - --------- 获取lable中str或者AttriStr的高度  ---------
- (CGFloat)getLabel_textOrAttriStrMaxHeightWithMaxWidth:(CGFloat)maxWidth{
    CGSize retSize = [self sizeThatFits:CGSizeMake(maxWidth, CGFLOAT_MAX)];
    return ceilf(retSize.height);
}
#pragma mark - --------- 获取lable中str或者AttriStr的宽度  ---------
- (CGFloat)getLabel_textOrAttriStrMaxWidthWithMaxHeight:(CGFloat)maxHeight{
    CGSize retSize = [self sizeThatFits:CGSizeMake(CGFLOAT_MAX, maxHeight)];
    return ceilf(retSize.width);
}
@end
