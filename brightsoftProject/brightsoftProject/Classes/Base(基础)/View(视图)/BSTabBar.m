//
//  BSTabBar.m
//  brightsoftProject
//
//  Created by hejingjin on 16/7/19.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import "BSTabBar.h"

@implementation BSTabBar

- (nonnull instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIButton *publishButton = [[UIButton alloc] init];
        
        //中间按钮图标
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateHighlighted];
        [self addSubview:publishButton];
        
        publishButton.backgroundColor = [UIColor whiteColor];
        _centerButton = publishButton;
        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)publishClick
{
    NSLog(@"publishClick");
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _centerButton.bounds = CGRectMake(0, 0, _centerButton.currentBackgroundImage.size.width, _centerButton.currentBackgroundImage.size.height);
    _centerButton.center = CGPointMake(self.bounds.size.width/2, (73.5-49)/2);
    // 原来的4个
    CGFloat width = self.bst_width / 5;
    int index = 0;
    for (UIControl *control in self.subviews) {
        if (![control isKindOfClass:[UIControl class]] || [control isKindOfClass:[UIButton class]] ||[control isKindOfClass:[UIImageView class]]) {
            if ([control isKindOfClass:[UIImageView class]]) {
                [self sendSubviewToBack:control];
            }
            continue;
        }
        control.bst_width = width;
        control.bst_x = index > 1 ? width * (index + 1) : width * index;
        index++;
    }
}

@end
