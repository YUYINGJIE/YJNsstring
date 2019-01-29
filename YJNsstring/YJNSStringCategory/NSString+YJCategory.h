//
//  NSString+YJCategory.h
//  YJNsstring
//
//  Created by huahaniOSCode on 2019/1/29.
//  Copyright © 2019年 YJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (YJCategory)



/** 替换字符 */
+ (NSString *)YJ_string:(NSString*)sting ByReplacingOccurrencesOfString:(NSString*)str withString:(NSString*)strtwo;

/** 截取字符串 */
// 截取掉下标index之前的字符串
+ (NSString *)YJ_substring:(NSString*)str ToIndex:(NSInteger)index;
// 截取掉下标index之后的字符串
+ (NSString *)YJ_substring:(NSString*)str FromIndex:(NSInteger)index;

/** 字符串匹配 */
+ (NSString *)YJ_string:(NSString*)sting rangeOfString:(NSString*)str;
/** 字符串匹配 指定字符修改*/
+ (NSMutableAttributedString *)YJ_string:(NSString*)sting setAttributedText:(NSString*)str setColor:(UIColor*)color setStringsize:(CGFloat)size;

/** 根据字符串中的某个字符(str)来分割字符串 */
+ (NSArray<NSString*> *)YJ_string:(NSString*)sting componentsSeparatedByString:(NSString*)str;

/** 根据字符串中的某个字符(str)来拼接字符串 */
+ (NSString *)YJ_array:(NSArray<NSString*> *)array componentsJoinedByString:(NSString*)str;

/** 字符串插入 */
+ (NSString *)YJ_string:(NSString*)string insertString:(NSString*)str atIndex:(NSInteger)index;

/** 字符串覆盖 类似替换 以Range*/
+ (NSString *)YJ_string:(NSString*)string replaceCharactersInRange:(NSRange)Range withstring:(NSString*)str;

/** 字符串内容变为大写字母 */
+ (NSString *)YJ_uppercaseString:(NSString*)string;
/** 内容变为小写字母*/
+ (NSString *)YJ_lowercaseString:(NSString*)string;


@end

NS_ASSUME_NONNULL_END
