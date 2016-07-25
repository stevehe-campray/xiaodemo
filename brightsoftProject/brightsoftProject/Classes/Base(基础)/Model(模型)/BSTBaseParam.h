//
//  BSTBaseParam.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSTBaseParam : NSObject
//用户id
@property(nonatomic,copy)NSString *userId;
//分页请求页码
@property(nonatomic,copy)NSString *page;

@end
