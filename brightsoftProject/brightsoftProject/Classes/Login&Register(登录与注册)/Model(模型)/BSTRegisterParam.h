//
//  BSTRegisterParam.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import "BSTBaseParam.h"

@interface BSTRegisterParam : BSTBaseParam
//注册手机号
@property(nonatomic,copy)NSString *phoneNumber;
//注册密码
@property(nonatomic,copy)NSString *password;
//注册验证码
@property(nonatomic,copy)NSString *verifyCode;
//注册用户类型
@property(nonatomic,copy)NSString *registertype;

@end
