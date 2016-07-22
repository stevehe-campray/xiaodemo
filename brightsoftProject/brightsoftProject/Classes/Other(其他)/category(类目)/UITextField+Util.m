//
//  UITextField+Util.m
//  PropertyTrade
//
//  Created by hejingjin on 15/10/26.
//  Copyright (c) 2015年 www.brightsoft.cn. All rights reserved.
//

#import "UITextField+Util.h"

@implementation UITextField (Util)
- (void)setTextFiledWithCornerRadius:(CGFloat)redius BorderWidth:(CGFloat)borderWidth
                          BoderColor:(UIColor*)color{
    self.layer.cornerRadius = redius;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = color.CGColor;
}

- (void)setLeftViewWithImageName:(NSString *)imageName{
    self.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView *leftImageView = [[UIImageView alloc] initWithFrame:CGRectMake(3, 3, self.frame.size.height-3, self.frame.size.height-6)];
    leftImageView.contentMode = UIViewContentModeCenter;
    leftImageView.image = [UIImage imageNamed:imageName];
    self.leftView = leftImageView;
}



- (void)setTextFiledStyle:(TextFiledStyle)style withImageName:(NSString *)imageName{
    if(style == NSTextFiledStyleLeftImage){
        [self setLeftViewWithImageName:imageName];
    }
}

//sd_webiamge进行加载
- (void)setTextFiledStyle:(TextFiledStyle)style withImageURL:(NSURL *)imageUrl{
    if(style == NSTextFiledStyleLeftImage){
        UIImageView *leftImageView = [[UIImageView alloc] initWithFrame:CGRectMake(3, 3, self.frame.size.height-3, self.frame.size.height-6)];
        
        leftImageView.contentMode = UIViewContentModeCenter;
        self.leftView = leftImageView;
        
    }
}

@end
