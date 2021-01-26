//
//  HomeChildController.m
//  MyPorject
//
//  Created by Yuki on 2021/1/21.
//

#import "HomeChildController.h"

@interface HomeChildController ()

@end

@implementation HomeChildController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customer_navBackActionBlock = ^{
        NSLog(@"点击了返回按钮");
    };
    self.navBottomLineColor = UIColor.redColor;
    
    
    ///加载动画
    [self.rdv_tabBarController.tabBar.items enumerateObjectsUsingBlock:^(__kindof UIBarButtonItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        RDVTabBarItem *item= (RDVTabBarItem *)obj;
        if ([item.title isEqualToString:@"首页"]) {
            item.badgeValue = @"10";
            item.title = @"";
            NSString *filePath = [[NSBundle bundleWithPath:[[NSBundle mainBundle] bundlePath]] pathForResource:@"send" ofType:@"gif"];
            NSData *imageData = [NSData dataWithContentsOfFile:filePath];
            UIImageView *imgView = [UIImageView zl_createImgViewWithImg:[UIImage sd_imageWithGIFData:imageData]];
            [item addSubview:imgView];
            [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(40, 40));
                make.center.mas_equalTo(0);
            }];
        }
    }];
}



@end
