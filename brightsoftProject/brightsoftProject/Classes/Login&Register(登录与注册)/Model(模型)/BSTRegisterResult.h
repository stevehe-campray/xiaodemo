//
//  BSTRegisterResult.h
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import "BSTBaseResult.h"
#import "BSTUserinfo.h"
@interface BSTRegisterResult : BSTBaseResult

@property(nonatomic,assign)BOOL isregister;
@property(nonatomic,strong)BSTUserinfo *userinfo;

@end
