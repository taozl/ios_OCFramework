//
//  NSString+Check.m
//  MyPorject
//
//  Created by Yuki on 2021/1/21.
//
#import <UIKit/UIKit.h>
#import "NSString+Check.h"
#import <objc/runtime.h>
@implementation NSString (Check)

#pragma mark - --------- 判断字符串是否为空  ---------
///get方法
- (BOOL)isEmptyStr{
    BOOL isEmpty = NO;
    /// 为nil，为@"", 长度
    if (self == nil || //为nil
        [self isEqualToString:@"<null>"] ||
        [self isEqualToString:@"(null)"] ||
        [self isEqualToString:@"null"] ||
        [self isEqualToString:@""] || //为@”“
        self.length == 0 || //长度
        [self stringByReplacingOccurrencesOfString:@" " withString:@""].length == 0 //替换了空格后的长度
        )
    {
        isEmpty = YES;
        return isEmpty;
    }else{
        isEmpty = NO;
        return isEmpty;
    }
}


#pragma mark - --------- 是否是手机号  ---------
- (BOOL)isMobilePhone{
    if (self.length != 11) return NO;///长度如果不满足
    //手机号以13， 15，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^((11[0-9])|(12[0-9])|(13[0-9])|(14[0-9])|(15[^4,\\D])|(16[0-9])|(17[0-9])|(18[0,0-9])|(19[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:self];
}


@end
