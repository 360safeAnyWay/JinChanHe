//
//  ModelClass.m
//  FinancialManagementAssistant
//
//  Created by MAXMFJ on 15/2/28.
//  Copyright (c) 2015年 Boxer. All rights reserved.
//

#import "ModelClass.h"
#import "AFNetworking.h"
@implementation ModelClass
+(void)FinancialManageGET:(NSString *)GET block:(DATAARRAY)block;
{
    AFHTTPSessionManager * manager   = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];//设置相应内容类型
    NSMutableArray       * dataArray = [NSMutableArray array];
    [manager GET:GET parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
        NSDictionary     * dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
        NSArray          * array = [dic objectForKey:@"data_list"];
        for (NSDictionary *_datadic in array);
        {
        }
        block(dataArray,nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
        block(nil,[NSString stringWithFormat:@"%@",error]);
    }];
}
@end
