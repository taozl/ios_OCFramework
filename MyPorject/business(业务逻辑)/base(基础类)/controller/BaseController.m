//
//  BaseController.m
//  MyPorject
//
//  Created by Tzl on 2021/1/19.
//

#import "BaseController.h"
#import "BaseNavView.h"///导航栏
#import <objc/runtime.h>
@interface BaseController ()
/**  导航栏  **/
@property (nonatomic , strong)BaseNavView  *navView;
@end

@implementation BaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///设置界面
    [self _rebuildUI];
    
   
}


///设置界面的部分信息
- (void)_rebuildUI{
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.hidden = YES;//隐藏系统的导航栏
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];//默认隐藏tabbar
    
    self.view.backgroundColor = BgViewColor();//背景色
    
    ///添加导航栏
    [self.view addSubview:self.navView];
    
    if (self.navigationController.viewControllers.count > 1) {
        ///默认是显示文字的返回
        self.navView.backBtnTitle = @"返回";
    }
    
    
    __weak typeof(self)weakSelf = self;
    
    ///点击导航栏返回按钮
    self.navView.backBtnClickBlock = ^{
        if (weakSelf.navigationController.viewControllers.count == 1) return;
        [weakSelf.navigationController popViewControllerAnimated:YES];
    };
    
    
}


#pragma mark - --------- set方法  ---------
///是否显示当前的导航栏
- (void)setShowCurrentNav:(BOOL)showCurrentNav{
    _showCurrentNav = showCurrentNav;
    self.navView.hidden = !showCurrentNav;
}
///是否显示tabbar
- (void)setShowTababr:(BOOL)showTababr{
    _showTababr = showTababr;
    [[self rdv_tabBarController] setTabBarHidden:!_showTababr animated:YES];
}

///导航栏标题
- (void)setNavigationTitleStr:(NSString *)navigationTitleStr{
    _navigationTitleStr = navigationTitleStr;
    self.navView.titleStr = navigationTitleStr;
}

///是否显示导航栏横线
- (void)setShowNavBottomLine:(BOOL)showNavBottomLine{
    _showNavBottomLine = showNavBottomLine;
    self.navView.showBottomLine = showNavBottomLine;
}

///导航栏的底部横线颜色
- (void)setNavBottomLineColor:(UIColor *)navBottomLineColor{
    _navBottomLineColor = navBottomLineColor;
    self.navView.bottomLineColor = navBottomLineColor;
}

///导航栏的底部横线高度
- (void)setNavBottomLineHeight:(CGFloat)navBottomLineHeight{
    _navBottomLineHeight = navBottomLineHeight;
    self.navView.bottomLineHeight = navBottomLineHeight;
}

///导航栏返回按钮文字
- (void)setNavBackBtnTitle:(NSString *)navBackBtnTitle{
    _navBackBtnTitle = navBackBtnTitle;
    self.navView.backBtnTitle = navBackBtnTitle;
}

///导航栏返回按钮图片
- (void)setNavBackBtnImg:(UIImage *)navBackBtnImg{
    _navBackBtnImg = navBackBtnImg;
    self.navView.backBtnImg = navBackBtnImg;
}

///导航栏背景色
- (void)setNavBgColor:(UIColor *)navBgColor{
    _navBgColor = navBgColor;
    self.navView.backgroundColor = navBgColor;
}

///自定义返回事件
- (void)setCustomer_navBackActionBlock:(dispatch_block_t)customer_navBackActionBlock{
    _customer_navBackActionBlock = customer_navBackActionBlock;
    self.navView.backBtnClickBlock = customer_navBackActionBlock;
}



#pragma mark - --------- lazy  ---------
- (BaseNavView *)navView{
    if (!_navView) {
        _navView = [[BaseNavView alloc]init];
    }
    return _navView;
}



@end
