//
//  UIButton+Create.h
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^ZL_ClickCurrenBtnBlock)(UIButton *currentBtn);
@interface UIButton (Create)
#pragma mark - --------- 创建按钮  ---------
/// 创建按钮
/// @param titleStr 标题
/// @param titleFont 标题字体
/// @param titleColor 标题颜色
+ (UIButton *)zl_createButtonWithTitle:(NSString *)titleStr
                             titleFont:(UIFont *)titleFont
                            titleColor:(UIColor *)titleColor;

/// 创建按钮
/// @param titleStr 标题
/// @param titleFont 标题字体
/// @param titleColor 标题颜色
/// @param traget action的执行者
/// @param action 点击事件
+ (UIButton *)zl_createButtonWithTitle:(NSString *)titleStr
                             titleFont:(UIFont *)titleFont
                            titleColor:(UIColor *)titleColor
                                traget:(id)traget
                                action:(SEL)action;

/// 创建按钮
/// @param titleStr 标题
/// @param titleFont 标题字体
/// @param titleColor 标题颜色
/// @param actionBlock 标题点击事件回调
+ (UIButton *)zl_createButtonWithTitle:(NSString *)titleStr
                             titleFont:(UIFont *)titleFont
                            titleColor:(UIColor *)titleColor
                           actionBlock:(ZL_ClickCurrenBtnBlock)actionBlock;



#pragma mark - --------- 点击当前的按钮  ---------
/**  点击当前的按钮  **/
@property (nonatomic , copy)ZL_ClickCurrenBtnBlock  clickCurrentBtnBlock;
@end

NS_ASSUME_NONNULL_END
