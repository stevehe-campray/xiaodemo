//
//  NSString+Util.h
//  PropertyTrade
//
//  Created by hejingjin on 15/10/26.
//  Copyright (c) 2015年 www.brightsoft.cn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Util)
//MD5加密
+ (NSString *)md5:(NSString *)str;


+ (NSString *)formatPriceWithDouble:(double)price;




@end
