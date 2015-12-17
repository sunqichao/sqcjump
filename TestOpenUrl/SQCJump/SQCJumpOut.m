//
//  SQCJumpOut.m
//  TestOpenUrl
//
//  Created by yfw－iMac on 15/12/17.
//  Copyright © 2015年 Sunqichao. All rights reserved.
//

#import "SQCJumpOut.h"
#import <UIKit/UIKit.h>
 
@implementation SQCJumpOut
- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (BOOL)jumpToOSDetailSet:(SQCJumpType)type
{
    SQCJumpOut *skipSet = [[SQCJumpOut alloc] init];
    NSURL *url = [skipSet jumpURL:type];
    
    
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
        return YES;
    }
 
    
    return NO;
}

+ (BOOL)callWithNumber:(NSString *)phone appearAlert:(BOOL)isAppear
{
    NSString *urlStr = [NSString stringWithFormat:@"telprompt://%@",phone];
    if (!isAppear) {
        urlStr = [NSString stringWithFormat:@"tel:%@",phone];
        
    }
    NSURL *url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
        return YES;
    }
    return NO;
}

+ (BOOL)openWebSite:(NSString *)URL
{
    NSString *urlStr = [NSString stringWithFormat:@"%@",URL];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
        return YES;
    }
    return NO;
    
}

- (NSURL *)jumpURL:(SQCJumpType)type
{
    NSString *str = nil;
    switch (type) {
        case SQCJumpTophotos:
            str = @"Photos";
            break;
        case SQCJumpToSiri:
            str = @"General&path=Assistant";
            break;
        case SQCJumpToSoftWareUpdate:
            str = @"General&path=SOFTWARE_UPDATE_LINK";
            break;
        case SQCJumpToSounds:
            str = @"Sounds";
            break;
        case SQCJumpToWiFi:
            str = @"WIFI";
            break;
        default:
            break;
    }
    
    NSString *urlStr = [NSString stringWithFormat:@"prefs:root=%@",str];
    NSURL *url = [NSURL URLWithString:urlStr];
    return url;
}

@end

