//
//  XYApp.m
//  NemoOfficeClient
//
//  Created by 杨旭东 on 2017/12/25.
//  Copyright © 2017年 ainemo. All rights reserved.
//

#import "XYApp.h"
#import <UIKit/UIKit.h>

@implementation XYApp

+ (NSDictionary *(^)(void))bundleInfo{
    return ^(){
        return [[NSBundle mainBundle] infoDictionary];
    };
}

+ (NSString *(^)(void))bundleID{
    return ^(){
        return [XYApp.bundleInfo() objectForKey:@"CFBundleIdentifier"];
    };
}

+ (NSString *(^)(void))appVersion{
    return ^(){
        return [XYApp.bundleInfo() objectForKey:@"CFBundleShortVersionString"];
    };
}

+ (NSString *(^)(void))appName{
    return ^(){
        return [XYApp.bundleInfo() objectForKey:@"CFBundleDisplayName"];
    };
}

+ (NSString *(^)(void))deviceName{
    return ^(){
        return [[UIDevice currentDevice] name];
    };
}

+ (NSString *(^)(void))language{
    return ^(){
        NSArray* languages = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
        NSString* preferredLang = [languages objectAtIndex:0];
        
        NSString *locale = nil;
        if ([preferredLang hasPrefix:@"zh-Hant"]) {
            locale = @"zh_TW";
        }else if ([preferredLang hasPrefix:@"zh-Hans"]){
            locale = @"zh_CN";
        }else{
            locale = @"en_US";
        }
        return locale;
    };
}

@end
