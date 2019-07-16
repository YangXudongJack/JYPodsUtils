//
//  XYApp.h
//  NemoOfficeClient
//
//  Created by 杨旭东 on 2017/12/25.
//  Copyright © 2017年 ainemo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYApp : NSObject

+ (NSDictionary *(^)(void))bundleInfo;

+ (NSString *(^)(void))bundleID;

+ (NSString *(^)(void))appVersion;

+ (NSString *(^)(void))appName;

+ (NSString *(^)(void))deviceName;

+ (NSString *(^)(void))language;

@end
