//
//  SystemConifg.h
//  MyPorject
//
//  Created by Tzl on 2021/1/19.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#ifndef SystemConifg_h
#define SystemConifg_h


/// 屏幕宽度
NS_INLINE CGFloat ScreenWith(){
    return [UIScreen mainScreen].bounds.size.width;
}

/// 屏幕高度
NS_INLINE CGFloat ScreenHeight(){
    return [UIScreen mainScreen].bounds.size.height;
}

/// 安全区域高度
NS_INLINE CGFloat BottomSafeAreaHeight(){
    return  ([[UIApplication sharedApplication] statusBarFrame].size.height>20.0f ? 34.0f : 0);
}

/// tabBar高度
NS_INLINE CGFloat TabBarHeight(){
    return BottomSafeAreaHeight() + 49.0f;
}

///导航栏高度
NS_INLINE CGFloat NavgitionHeight(){
    ///iphoneX以下为64 iphone X 为88，iphone 11为92， iphone12为91
    return [[UIApplication sharedApplication] statusBarFrame].size.height + 44.0f;
}

/**
 16进制颜色
 @param hex 16进制值
 @param alpha 透明度
 @return UIcolor类型 颜色
 */
NS_INLINE UIColor *ColorHex(NSInteger hex , CGFloat alpha){
    return [UIColor colorWithRed:(((hex & 0xFF0000) >> 16))/255.0 green:(((hex & 0xFF00) >>8))/255.0 blue:((hex & 0xFF))/255.0 alpha:alpha];
}


/// 字体大小
/// @param size 字体大小
/// @param weight 比重
NS_INLINE UIFont *BoldFontWith(CGFloat size , UIFontWeight weight){
    return [UIFont systemFontOfSize:size weight:weight];
}

#endif /* SystemConifg_h */
