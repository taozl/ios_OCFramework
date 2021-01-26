//
//  UILabel+Create.h
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^ZL_ClickLableBlock)(UILabel *currentLabel);

@interface UILabel (Create)
#pragma mark - --------- 创建一个文本容器  ---------
/// 创建一个文本容器
/// @param text 标题
/// @param font 标题字体
/// @param textColor 标题颜色
+ (UILabel *)zl_createLabelWithLabeltext:(NSString *)text
                               LabelFont:(UIFont *)font
                          LabeltextColor:(UIColor *)textColor;


/// 创建一个带有点击事件的文本容器
/// @param text 标题
/// @param font 标题字体
/// @param textColor 标题颜色
/// @param traget action的traget
/// @param action 点击事件
+ (UILabel *)zl_createLabelWithLabeltext:(NSString *)text
                               LabelFont:(UIFont *)font
                          LabeltextColor:(UIColor *)textColor
                                  traget:(id)traget
                                  action:(SEL)action;


/// 创建一个带有点击事件的文本容器
/// @param text 标题
/// @param font 标题字体
/// @param textColor 标题颜色
/// @param actionBlock  点击事件
+ (UILabel *)zl_createLabelWithLabeltext:(NSString *)text
                               LabelFont:(UIFont *)font
                          LabeltextColor:(UIColor *)textColor
                             actionBlock:(ZL_ClickLableBlock)actionBlock;


#pragma mark - --------- 点击当前的lable  ---------
/**  点击当前的lable  **/
@property (nonatomic , copy)ZL_ClickLableBlock  clickLableBlock;


#pragma mark - --------- 获取label的高度  ---------
/// 获取当前lable的 text 或者 AttriStr的最大高度，需要注意的是这个只有在赋值完text 或者 AttriStr值后再获取
/// @param maxWidth 最大宽度
- (CGFloat)getLabel_textOrAttriStrMaxHeightWithMaxWidth:(CGFloat)maxWidth;


#pragma mark - --------- 获取label的宽度  ---------
/// 获取当前lable的 text 或者 AttriStr的最大高度，需要注意的是这个只有在赋值完text 或者 AttriStr值后再获取
/// @param maxHeight 最大高度
- (CGFloat)getLabel_textOrAttriStrMaxWidthWithMaxHeight:(CGFloat)maxHeight;
@end

NS_ASSUME_NONNULL_END
