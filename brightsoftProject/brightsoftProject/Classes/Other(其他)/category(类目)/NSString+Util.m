//
//  NSString+Util.m
//  PropertyTrade
//
//  Created by hejingjin on 15/10/26.
//  Copyright (c) 2015年 www.brightsoft.cn. All rights reserved.
//

#import "NSString+Util.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString (Util)
+ (NSString *)md5:(NSString *)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, strlen(cStr), result); // This is the md5 call
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

+(NSString *)formatPriceWithDouble:(double)price{
    NSString *str = [[NSString alloc] init];
    if (price > 10000 && price < 10000000) {
        str = [NSString stringWithFormat:@"￥%.4f万",price/10000];
        str=  [NSString deletezreo:str type:2];
    }else if(price >= 10000000){
         str = [NSString stringWithFormat:@"￥%.4f千万",price/10000000];
        str = [NSString deletezreo:str type:1];
    }else{
         str = [NSString stringWithFormat:@"￥%f",price];
    }
    return str;
}
/**
 *
 *
 *  @param str    需要处理的字符串
 *  @param type   类别 1.千万 2.万
 *
 *  @return 处理过后的字符串
 */
+(NSString *)deletezreo:(NSString *)str type:(NSInteger)type{
//    NSString *str =
    NSRange range;
    
    if (type == 1) {
        range = [str rangeOfString:@"千万"];
    }else{
        range = [str rangeOfString:@"万"];
    }
    NSString *newstr = [NSString stringWithFormat:@"%@",str];
    NSInteger i = range.location - 1;
    while (1) {
        char c = [newstr characterAtIndex:i];
        if (c=='0') {
            NSRange range = NSMakeRange(i, 1);
            newstr  = [newstr stringByReplacingCharactersInRange:range withString:@""];
            i--;
        }else{
            char c = [newstr characterAtIndex:i];
            if (c == '.') {
                NSRange range = NSMakeRange(i, 1);
                newstr = [newstr stringByReplacingCharactersInRange:range withString:@""];
                break;
            }else{
                break;
            }
          
          
        }
    }
    return newstr;
}


@end
