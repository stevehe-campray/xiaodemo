//
//  BSTLoginResult.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSTUserinfo.h"
@interface BSTLoginResult : NSObject
//是否登录成功
@property(nonatomic,assign)BOOL *isLogin;
//用户信息
@property(nonatomic,strong)BSTUserinfo *userinfo;

@end
