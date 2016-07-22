//
//  UITextField+Util.h
//  PropertyTrade
//
//  Created by hejingjin on 15/10/26.
//  Copyright (c) 2015年 www.brightsoft.cn. All rights reserved.
//
//

#import <UIKit/UIKit.h>

@interface UITextField (Util)
typedef NS_ENUM(NSInteger, TextFiledStyle) {
    
    NSTextFiledStyleNormal = 0,
    NSTextFiledStyleLeftImage
    
};
//设置文本框样式
//leftview 大小textfiled高度上下左间隔3

- (void)setLeftViewWithImageName:(NSString *)imageName;


//显示具有左视图的style添加图片
- (void)setTextFiledStyle:(TextFiledStyle)style withImageName:(NSString *)imageName;
- (void)setTextFiledStyle:(TextFiledStyle)style withImageURL:(NSURL *)imageUrl;

/* 设置文本框的圆角 边框 以及 颜色*/
- (void)setTextFiledWithCornerRadius:(CGFloat)redius BorderWidth:(CGFloat)borderWidth
                          BoderColor:(UIColor*)color;



@end
