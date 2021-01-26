//
//  NSString+Check.h
//  MyPorject
//
//  Created by Yuki on 2021/1/21.
//  检测字符串

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Check)

#pragma mark - --------- 字符串是否为空 YES为空，NO不为空  ---------
/// 字符串是否为空 YES为空，NO不为空
- (BOOL)isEmptyStr;


#pragma mark - --------- 是否是手机号 YES为是手机号，NO不为手机号  ---------
/// 是否是手机号 YES为是手机号，NO不为手机号
- (BOOL)isMobilePhone;

@end

NS_ASSUME_NONNULL_END
