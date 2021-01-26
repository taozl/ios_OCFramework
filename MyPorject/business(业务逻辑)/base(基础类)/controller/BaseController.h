//
//  BaseController.h
//  MyPorject
//
//  Created by Tzl on 2021/1/19.
//

#import <UIKit/UIKit.h>
#import "BusinessHeader.h"///业务配置头文件
NS_ASSUME_NONNULL_BEGIN

@interface BaseController : UIViewController

/**  是否显示导航栏 默认显示  **/
@property (nonatomic , assign)BOOL  showCurrentNav;
/**  是否显示tabbar 默认不显示  **/
@property (nonatomic , assign)BOOL  showTababr;

/**  导航栏标题  **/
@property (nonatomic , copy)NSString  *navigationTitleStr;


/**  是否导航栏显示横线，默认显示  **/
@property (nonatomic , assign)BOOL  showNavBottomLine;

/**  导航栏若显示横线，横线颜 色默认为 f3f3f3 **/
@property (nonatomic , strong)UIColor  *navBottomLineColor;

/**  导航栏若显示横线，横线的高度 默认为0.5  **/
@property (nonatomic , assign)CGFloat  navBottomLineHeight;

/**  导航栏返回按钮文字  默认返回  **/
@property (nonatomic , copy)NSString  *navBackBtnTitle;
/**  导航栏返回按钮图片，有默认值  **/
@property (nonatomic , strong)UIImage  *navBackBtnImg;

/**  导航栏背景色  **/
@property (nonatomic , strong)UIColor  *navBgColor;


/**  导航栏自定义返回事件  **/
@property (nonatomic , strong)dispatch_block_t  customer_navBackActionBlock;

@end

NS_ASSUME_NONNULL_END
