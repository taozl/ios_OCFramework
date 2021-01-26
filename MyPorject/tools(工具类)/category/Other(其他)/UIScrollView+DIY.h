//
//  UIScrollView+DIY.h
//  MyPorject
//
//  Created by Yuki on 2021/1/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@protocol ZLScrollViewDelegate <NSObject>

/// 开始滑动
/// @param scrollView 当前滑动视图
- (void)zlScrollViewWillScrollScr:(UIScrollView *)scrollView;


/// 滑动
/// @param scrollView 当前滑动视图
- (void)zlScrollViewDidScrollScr:(UIScrollView *)scrollView;

/// 结束滑动
/// @param scrollView 当前的滑动视图
- (void)zlScrollViewEndScr:(UIScrollView *)scrollView;

@end

@interface UIScrollView (DIY)<UIScrollViewDelegate>

/**  代理  **/
@property (nonatomic , weak)id<ZLScrollViewDelegate>zl_delegate;


@end

NS_ASSUME_NONNULL_END
