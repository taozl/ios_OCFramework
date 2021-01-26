//
//  UIScrollView+DIY.m
//  MyPorject
//
//  Created by Yuki on 2021/1/22.
//

#import "UIScrollView+DIY.h"
#import <objc/runtime.h>
@interface UIScrollView (DIY)<UIScrollViewDelegate>

@end
@implementation UIScrollView (DIY)


///开始滑动
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    if (self.zl_delegate && [self.zl_delegate respondsToSelector:@selector(zlScrollViewWillScrollScr:)]) {
        [self.zl_delegate zlScrollViewWillScrollScr:scrollView];
    }
}


///触发滑动
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (self.zl_delegate && [self.zl_delegate respondsToSelector:@selector(zlScrollViewDidScrollScr:)]) {
        [self.zl_delegate zlScrollViewDidScrollScr:scrollView];
    }
}

///结束滑动
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    BOOL scrollToScrollStop = !scrollView.tracking && !scrollView.dragging && !scrollView.decelerating;
    if (scrollToScrollStop) {
        if (self.zl_delegate && [self.zl_delegate respondsToSelector:@selector(zlScrollViewEndScr:)]) {
            [self.zl_delegate zlScrollViewEndScr:scrollView];
        }
    }
}

///结束滑动
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    if (!decelerate) {
        BOOL dragToDragStop = scrollView.tracking && !scrollView.dragging && !scrollView.decelerating;
        if (dragToDragStop) {
            if (self.zl_delegate && [self.zl_delegate respondsToSelector:@selector(zlScrollViewEndScr:)]) {
                [self.zl_delegate zlScrollViewEndScr:scrollView];
            }
            
        }
    }
}


///动态添加代理方法，去重新设置代理
- (void)setZl_delegate:(id<ZLScrollViewDelegate>)zl_delegate{
    objc_setAssociatedObject(self, @selector(zl_delegate), zl_delegate, OBJC_ASSOCIATION_ASSIGN);
    self.delegate = self;
}
- (id<ZLScrollViewDelegate>)zl_delegate{
    return objc_getAssociatedObject(self, _cmd);
}


@end
