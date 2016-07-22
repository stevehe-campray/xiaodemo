//
//  UIView+BSTExtention.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/19.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BSTExtention)

@property (nonatomic, assign) CGSize bst_size;
@property (nonatomic, assign) CGFloat bst_width;
@property (nonatomic, assign) CGFloat bst_height;
@property (nonatomic, assign) CGFloat bst_x;
@property (nonatomic, assign) CGFloat bst_y;
@property (nonatomic, assign) CGFloat bst_centerX;
@property (nonatomic, assign) CGFloat bst_centerY;

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)isShowingOnKeyWindow;


//
+ (instancetype)viewFromXib;
@end
