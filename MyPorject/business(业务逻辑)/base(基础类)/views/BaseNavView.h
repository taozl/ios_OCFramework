//
//  BaseNavView.h
//  MyPorject
//
//  Created by Yuki on 2021/1/22.
//

#import "BaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseNavView : BaseView
#pragma mark - --------- 底部横线设置 也可以自己添加到 ---------
/**  是否显示横线，默认显示  **/
@property (nonatomic , assign)BOOL  showBottomLine;
/**  若显示横线，横线颜色  **/
@property (nonatomic , strong)UIColor  *bottomLineColor;
/**  若显示横线，横线的高度  **/
@property (nonatomic , assign)CGFloat  bottomLineHeight;


/**  标题  **/
@property (nonatomic , copy)NSString  *titleStr;
/**  设置返回按钮标题  **/
@property (nonatomic , copy)NSString  *backBtnTitle;
/**  设置返回按钮图片  **/
@property (nonatomic , strong)UIImage  *backBtnImg;


/**  返回按钮点击事件  **/
@property (nonatomic , copy, readwrite)dispatch_block_t  backBtnClickBlock;
@end

NS_ASSUME_NONNULL_END
