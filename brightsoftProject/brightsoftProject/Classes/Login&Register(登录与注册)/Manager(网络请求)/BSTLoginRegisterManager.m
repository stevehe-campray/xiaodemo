//
//  BSTLoginRegisterManager.m
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import "BSTLoginRegisterManager.h"
#import "BSTRequestTools.h"
@implementation BSTLoginRegisterManager


+(void)registerUserWithMethod:(NSString *)methods param:(BSTRegisterParam *)params success:(BSTRegisterSuccess)success failure:(BSTFailure)failure{
    
 
    [BSTRequestTools POSTWithMethod:methods params:params.mj_keyValues success:^(id json) {
        
        //数据解析  返回BSTRegisterResult 的success block
        !success ? : success([BSTRegisterResult new]);
        
    } failure:^(NSError *error) {
        
        failure(error);
        
    }];
    
}

+(void)LoginUserWithMethod:(NSString *)methods param:(BSTLoginParam *)params success:(BSTLoginSuccess)success failure:(BSTFailure)failure{
    
    [BSTRequestTools POSTWithMethod:methods params:params.mj_keyValues success:^(id json) {
        
        //登录成功
       !success ? : success([BSTLoginResult new]);
        
    } failure:^(NSError *error) {
        
        failure(error);
    }];
}

@end
