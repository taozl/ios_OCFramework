//
//  BusinessSystemConfig.h
//  MyPorject
//
//  Created by Tzl on 2021/1/20.
//  业务配置

#import "SystemConifg.h"

#ifndef BusinessSystemConfig_h
#define BusinessSystemConfig_h


/**  颜色配置  **/
///界面背景色
NS_INLINE UIColor *BgViewColor(){
    return ColorHex(0xffffff, 1);
}

///主题色
NS_INLINE UIColor *PrimaryColor(){
    return ColorHex(0xffbb00, 1);
}



/**  字体大小配置  **/
///加粗字体
NS_INLINE UIFont *BoldTitleFontWith(CGFloat size){
    return BoldFontWith(size, UIFontWeightBold);
}
///粗标题
NS_INLINE UIFont *HeavyTitleFont(CGFloat size){
    return BoldFontWith(size, UIFontWeightHeavy);
}
///中粗标题
NS_INLINE UIFont *MediumTitleFont(CGFloat size){
    return BoldFontWith(size, UIFontWeightMedium);
}
///常规标题
NS_INLINE UIFont *RegularTitleFont(CGFloat size){
    return BoldFontWith(size, UIFontWeightRegular);
}



#endif /* BusinessSystemConfig_h */
