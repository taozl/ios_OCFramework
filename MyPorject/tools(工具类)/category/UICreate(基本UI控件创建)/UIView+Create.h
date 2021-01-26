//
//  UIView+Create.h
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef void(^ZL_ClickCurrentViewBlock)(UIView *currentView);

@interface UIView (Create)

#pragma mark - --------- 创建一个View  ---------
/// 创建一个View
+ (UIView *)zl_createUIView;

#pragma mark - --------- 点击当前的View  ---------
/**  点击当前的View  **/
@property (nonatomic , copy)ZL_ClickCurrentViewBlock  click_CurrentViewBlock;

@end

NS_ASSUME_NONNULL_END
