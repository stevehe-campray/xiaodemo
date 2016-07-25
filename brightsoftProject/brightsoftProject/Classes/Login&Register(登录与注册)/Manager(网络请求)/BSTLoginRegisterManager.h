//
//  BSTLoginRegisterManager.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSTRegisterParam.h"
#import "BSTLoginParam.h"
#import "BSTRegisterResult.h"
#import "BSTLoginResult.h"
typedef void (^BSTLoginSuccess)(BSTLoginResult *result);
typedef void (^BSTRegisterSuccess)(BSTRegisterResult *result);
typedef void (^BSTFailure)(NSError *error);


@interface BSTLoginRegisterManager : NSObject

/**
 *  用户注册请求
 *
 *  @param methods 请求路径(需要拼接的后部分)
 *  @param params  网络请求需要的参数
 *
 *  @return 是否注册成功
 */
+(void)registerUserWithMethod:(NSString *)methods param:(BSTRegisterParam *)params success:(BSTRegisterSuccess)success failure:(BSTFailure)failure;


/**
 *  用户登录接口
 *
 *  @param methods 求路径(需要拼接的后部分)
 *  @param params  网络请求需要的参数
 *
 *  @return 是否登录成功
 */

+(void)LoginUserWithMethod:(NSString *)methods param:(BSTLoginParam *)params success:(BSTLoginSuccess)success failure:(BSTFailure)failure;


@end
