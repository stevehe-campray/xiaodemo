//
//  UITabBar+badge.h
//  PropertyTrade
//
//  Created by hejingjin on 15/12/23.
//  Copyright © 2015年 campus.chinahr.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (badge)

- (void)showBadgeOnItemIndex:(int)index;   //显示小红点

- (void)hideBadgeOnItemIndex:(int)index; //隐藏小红点
@end
