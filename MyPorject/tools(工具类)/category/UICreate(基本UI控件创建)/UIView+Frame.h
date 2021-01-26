//
//  UIView+Frame.h
//  MyPorject
//
//  Created by Yuki on 2021/1/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Frame)
/**  左边距  **/
@property (nonatomic , assign)CGFloat  left;
/**  右边距  **/
@property (nonatomic , assign)CGFloat  right;
/**  上边距  **/
@property (nonatomic , assign)CGFloat  top;
/**  下边距  **/
@property (nonatomic , assign)CGFloat  bottom;
/**  宽度  **/
@property (nonatomic , assign)CGFloat  width;
/**  高度  **/
@property (nonatomic , assign)CGFloat  height;



/**  中心x  **/
@property (nonatomic , assign)CGFloat  centerX;
/**  中心y  **/
@property (nonatomic , assign)CGFloat  centerY;
@end

NS_ASSUME_NONNULL_END
