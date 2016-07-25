//
//  BSTRequestTools.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSTBaseParam.h"

typedef void (^BSTRequestSuccess)(id json);
typedef void (^BSTRequestFailure)(NSError *error);


@interface BSTRequestTools : NSObject

@property (strong, nonatomic)AFHTTPSessionManager *sessionManager;

/**
 *  Get网络请求方法
 *
 *  @param method  后半部拼接url
 *  @param params  请求参数
 *  @param success 成功后的回调
 *  @param failure 失败后的回调
 */
+ (void)GETWithMethod:(NSString *)method params:(NSDictionary *)params success:(BSTRequestSuccess)success failure:(BSTRequestFailure)failure;

/**
 *  POST网络请求方法
 *
 *  @param method  后半部分拼接url
 *  @param params  请求参数
 *  @param success 成功回调
 *  @param failure 失败回调
 */
+ (void)POSTWithMethod:(NSString *)method params:(NSDictionary *)params success:(BSTRequestSuccess)success failure:(BSTRequestFailure)failure;

@end
