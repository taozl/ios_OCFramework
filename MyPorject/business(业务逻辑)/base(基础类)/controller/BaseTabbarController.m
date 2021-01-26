//
//  BaseTabbarController.m
//  MyPorject
//
//  Created by Tzl on 2021/1/19.
//

#import "BaseTabbarController.h"
#import <RDVTabBarItem.h>
#import "BaseNavController.h"///导航栏
#import "HomeController.h"///首页
#import "MineController.h"///我的
#import "BusinessHeader.h"
@interface BaseTabbarController ()

@end

@implementation BaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///设置tabbar的背景色
    self.tabBar.backgroundView.backgroundColor = ColorHex(0x000000, 1);
    ///创建界面
    [self _setupView];
    
    
}


///创建界面
- (void)_setupView{
    HomeController *homeVc = [[HomeController alloc]init];
    BaseNavController *homeNav = [[BaseNavController alloc]initWithRootViewController:homeVc];
    
    MineController *mineVc = [[MineController alloc]init];
    BaseNavController *mineNav = [[BaseNavController alloc]initWithRootViewController:mineVc];
    
    self.viewControllers = @[homeNav , mineNav];
    
    NSArray *itemImgAry = @[@"tabbar_home_",@"tabbar_home_"];
    NSArray *tileAry = @[@"首页",@"我的"];
    
    ///设置item的图片和文字
    for (int index = 0; index <itemImgAry.count; index ++) {
        RDVTabBarItem *item = [[self tabBar] items][index];
        
        //图片
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@selected",[itemImgAry objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@normal",[itemImgAry objectAtIndex:index]]];
        
        //标题
        [item setTitle:tileAry[index]];
        item.selectedTitleAttributes = @{
            NSFontAttributeName: [UIFont boldSystemFontOfSize:12],
            NSForegroundColorAttributeName:ColorHex(0xffffff, 1),
        };
        item.unselectedTitleAttributes = @{
            NSFontAttributeName: [UIFont boldSystemFontOfSize:12],
            NSForegroundColorAttributeName:ColorHex(0x555555, 1),
        };
        
        //标题与图片间距
        item.titlePositionAdjustment = UIOffsetMake(0, 5);
        
        //        item.badgeTextFo
        item.badgePositionAdjustment = UIOffsetMake(0, 10);
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
    }
    
}


- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
