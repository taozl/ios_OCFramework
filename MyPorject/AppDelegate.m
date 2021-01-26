//
//  AppDelegate.m
//  MyPorject
//
//  Created by Tzl on 2021/1/19.
//

#import "AppDelegate.h"
#import "SystemConifg.h"
#import "BaseTabbarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    
    self.window.rootViewController = [[BaseTabbarController alloc]init];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
