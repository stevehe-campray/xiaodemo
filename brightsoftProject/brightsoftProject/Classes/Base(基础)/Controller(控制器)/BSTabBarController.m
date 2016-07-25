//
//  BSTabBarController.m
//  brightsoftProject
//
//  Created by hejingjin on 16/7/19.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//
//自定义tabbar控制器
#import "BSTabBarController.h"
#import "BSTNavgationController.h"

//自定义tabbar
#import "BSTabBar.h"
@interface BSTabBarController ()

@end

@implementation BSTabBarController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加子控制器
    
    
    
    // 更换tabBar
    [self setValue:[[BSTabBar alloc] init] forKeyPath:@"tabBar"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

//设置tabbar 的选中颜色以及字体大小
+ (void)initialize
{
    // 通过appearance统一设置所有UITabBarItem的文字属性
    // 后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12]; //未选中字体
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];  //未选中颜色
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];    //选中字体
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor]; //选中颜色
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    
}

/**
 * 初始化tabbar子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    // 包装一个导航控制器, 添加导航控制器为tabbarcontroller的子控制器
   BSTNavgationController  *nav = [[BSTNavgationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}


@end
