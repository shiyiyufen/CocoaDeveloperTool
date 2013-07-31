//
//  MyTool.h
//  AppTool
//
//  Created by leijun on 13-7-31.
//  Copyright (c) 2013年 Acorld. All rights reserved.
//

#import <Foundation/Foundation.h>
#define REGULAR @"RegularExpression"
#define CONTENT @"content"
@interface MyTool : NSObject
+ (MyTool *)shared;

- (void)saveLastContent:(NSString *)regular content:(NSString *)content;
@end
