//
//  LiveStartRequest.m
//  TCShow
//
//  Created by AlexiChen on 16/4/27.
//  Copyright © 2016年 AlexiChen. All rights reserved.
//

#import "LiveStartRequest.h"

@implementation LiveStartRequest

- (NSString *)url
{
    return @"https://sxb.qcloud.com/sxb/index.php?svc=live&cmd=start";
    
}

- (NSDictionary *)packageParams
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:[_liveItem toLiveStartJson]];
    [dic setObject:@([kSdkAppId integerValue]) forKey:@"appid"];
    return dic;
}

@end
