//
//  BaseNavController.m
//  MyPorject
//
//  Created by Tzl on 2021/1/19.
//

#import "BaseNavController.h"

@interface BaseNavController ()<UINavigationControllerDelegate>

@end

@implementation BaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"xxx");
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{    
    // 这句super的push要放在后面, 让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
   
}


@end
