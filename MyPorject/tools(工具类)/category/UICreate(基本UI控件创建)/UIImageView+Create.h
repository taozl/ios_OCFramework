//
//  UIImageView+Create.h
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ZL_ClickCurrentImgViewBlock)(UIImageView *currentImgView);
@interface UIImageView (Create)
#pragma mark - --------- 创建一个图片  ---------
/// 创建一个图片
+ (UIImageView *)zl_createImgView;

/// 创建一个图片
/// @param img 图片
+ (UIImageView *)zl_createImgViewWithImg:(UIImage *)img;


#pragma mark - --------- 点击图片  ---------
/**  点击当前图片  **/
@property (nonatomic , copy)ZL_ClickCurrentImgViewBlock  clickCurrentImgViewBlock;
@end

NS_ASSUME_NONNULL_END
