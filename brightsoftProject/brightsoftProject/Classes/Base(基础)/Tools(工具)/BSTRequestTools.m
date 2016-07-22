//
//  BSTRequestTools.m
//  brightsoftProject
//
//  Created by hejingjin on 16/7/20.
//  Copyright © 2016年 Brightsoft. All rights reserved.
//

#import "BSTRequestTools.h"

@implementation BSTRequestTools

// 懒加载
- (AFHTTPSessionManager *)sessionManager {
    
    if (!_sessionManager) {
        _sessionManager = [AFHTTPSessionManager manager];
    }
    return _sessionManager;
}


#pragma mark - sharedInstance
+ (instancetype)sharedInstance {
    
    static BSTRequestTools * sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedInstance = [[BSTRequestTools alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        //配置网络请求属性
        _sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
        _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"text/plain", @"application/json", @"text/javascript", nil];
        _sessionManager.requestSerializer.timeoutInterval = 20.0;
        
        _sessionManager.requestSerializer=[AFJSONRequestSerializer serializer];
        [_sessionManager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    }
    return self;
}



+ (void)GETWithMethod:(NSString *)method params:(NSDictionary *)params success:(BSTRequestSuccess)success failure:(BSTRequestFailure)failure{
    
    
    BSTRequestTools *requestools = [BSTRequestTools sharedInstance];
    NSString *requesturl = [requestools serverUrlWithMethods:method];
    
    
    [requestools.sessionManager GET:requesturl parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        !success ? : success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        !failure ? : failure(error);
    }];


    
}

+ (void)POSTWithMethod:(NSString *)method params:(NSDictionary *)params success:(BSTRequestSuccess)success failure:(BSTRequestFailure)failure{
     BSTRequestTools *requestools = [BSTRequestTools sharedInstance];
     NSString *requesturl = [requestools serverUrlWithMethods:method];
    [requestools.sessionManager POST:requesturl parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        !success ? : success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        !failure ? : failure(error);
        
    }];
    
}



#pragma mark - serverUrl
- (NSString *)serverUrlWithMethods:(NSString*)methdos{
    
    NSString *baseUrl = MainInterfaceUrl;
    return [NSString stringWithFormat:@"%@%@", baseUrl, methdos];
    
}





// 在对象销毁时，取消已经在队列中的请求
- (void)dealloc {
    
    [self.sessionManager invalidateSessionCancelingTasks:YES];
}


@end
