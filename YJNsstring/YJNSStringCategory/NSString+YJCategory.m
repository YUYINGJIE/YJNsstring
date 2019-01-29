//
//  NSString+YJCategory.m
//  YJNsstring
//
//  Created by huahaniOSCode on 2019/1/29.
//  Copyright © 2019年 YJ. All rights reserved.
//

#import "NSString+YJCategory.h"

@implementation NSString (YJCategory)




+ (NSString *)YJ_string:(NSString*)sting ByReplacingOccurrencesOfString:(NSString*)str withString:(NSString*)strtwo{
    
    if (sting == nil || [sting length] == 0) {
        return nil;
    }
   NSString *string = [sting stringByReplacingOccurrencesOfString:str withString:strtwo];
    return string;
}


+ (NSString *)YJ_substring:(NSString*)str ToIndex:(NSInteger)index{
    
    if (str == nil || [str length] == 0) {
        return nil;
    }
    NSString *string = [str substringToIndex:index];
    return string;
    
}
+ (NSString *)YJ_substring:(NSString*)str FromIndex:(NSInteger)index{
    
    if (str == nil || [str length] == 0) {
        return nil;
    }
    NSString *string = [str substringFromIndex:index];
    return string;
}

+ (NSString *)YJ_string:(NSString*)sting rangeOfString:(NSString*)str{
    
    if (sting == nil || [sting length] == 0) {
        return nil;
    }
    NSRange range = [sting rangeOfString:str];
    if (range.length!=0) {
        NSString *string = [sting substringWithRange:range];
        return string;
    }
    return nil;
}

+ (NSMutableAttributedString *)YJ_string:(NSString*)sting setAttributedText:(NSString*)str setColor:(UIColor*)color setStringsize:(CGFloat)size{
    if (sting == nil || [sting length] == 0) {
        return nil;
    }
    NSMutableAttributedString *contentStr = [[NSMutableAttributedString alloc]initWithString:sting];
    NSRange Range = NSMakeRange([[contentStr string] rangeOfString:str].location, [[contentStr string] rangeOfString:str].length);
    if (Range.length!=0) {
        [contentStr addAttribute:NSForegroundColorAttributeName value:color range:Range];
        [contentStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:size] range:Range];
        return contentStr;
    }
    return nil;
}

+ (NSArray<NSString*> *)YJ_string:(NSString*)sting componentsSeparatedByString:(NSString*)str{
    
    if (sting == nil || [sting length] == 0) {
        return nil;
    }
    NSArray *array=[sting componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:str]];
    return array;
}

+ (NSString *)YJ_array:(NSArray<NSString*> *)array componentsJoinedByString:(NSString*)str{
    if (!array || array.count==0 ) {
        return nil;
    }
    NSMutableArray*mutabarray = [array mutableCopy];
    [mutabarray removeObject:@""];
   NSString* sting=[mutabarray componentsJoinedByString:str];
    return sting;
}

+ (NSString *)YJ_string:(NSString*)string insertString:(NSString*)str atIndex:(NSInteger)index{
    
    if (string == nil || [string length] == 0) {
        return nil;
    }
    NSMutableString* str1=[[NSMutableString alloc] initWithString:string];
    [str1 insertString:str atIndex:index];
    return str1;
}
+ (NSString *)YJ_string:(NSString*)string replaceCharactersInRange:(NSRange)Range withstring:(NSString*)str{
    
    if (string == nil || [string length] == 0) {
        return nil;
    }
    NSMutableString* str1=[[NSMutableString alloc] initWithString:string];
    [str1 replaceCharactersInRange:Range withString:str];
    return str1;
}
+ (NSString *)YJ_uppercaseString:(NSString*)string{
    if (string == nil || [string length] == 0) {
        return nil;
    }
    NSString* sting= [string uppercaseString];
    return sting;
}

+ (NSString *)YJ_lowercaseString:(NSString*)string{
    if (string == nil || [string length] == 0) {
        return nil;
    }
   NSString* sting= [string lowercaseString];
   return sting;
}
@end
