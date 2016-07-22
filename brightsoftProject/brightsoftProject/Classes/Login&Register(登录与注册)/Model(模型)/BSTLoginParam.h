//
//  BSTLoginParam.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import "BSTBaseParam.h"

@interface BSTLoginParam : BSTBaseParam
//登录手机号
@property(nonatomic,copy)NSString *phoneNumber;
//登录密码
@property(nonatomic,copy)NSString *password;
@end
