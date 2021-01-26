//
//  UIImageView+Create.m
//  MyPorject
//
//  Created by Tzl on 2021/1/21.
//

#import "UIImageView+Create.h"
#import <objc/runtime.h>

@implementation UIImageView (Create)

/// 创建一个图片
+ (UIImageView *)zl_createImgView{
    return [self _createImgViewWithImg:nil];
}

/// 创建一个图片
/// @param img 图片
+ (UIImageView *)zl_createImgViewWithImg:(UIImage *)img{
    return [self _createImgViewWithImg:img];
}

///private 创建一个图片
+ (UIImageView *)_createImgViewWithImg:(UIImage *)img{
    UIImageView *imgView = [[UIImageView alloc]init];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    if (img) {
        imgView.image = img;
    }
    return imgView;
}

/**  动态添加属性  **/
///get方法
- (ZL_ClickCurrentImgViewBlock)clickCurrentImgViewBlock{
    return objc_getAssociatedObject(self, _cmd);
}
///set方法
- (void)setClickCurrentImgViewBlock:(ZL_ClickCurrentImgViewBlock)clickCurrentImgViewBlock{
    objc_setAssociatedObject(self, @selector(clickCurrentImgViewBlock), clickCurrentImgViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickImgView)]];
}
///点击图片
- (void)clickImgView{
    ZL_ClickCurrentImgViewBlock block = (ZL_ClickCurrentImgViewBlock )objc_getAssociatedObject(self, @selector(clickCurrentImgViewBlock));
    if (block) {
        block(self);
    }
}
@end
