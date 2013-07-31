//
//  MyTool.m
//  AppTool
//
//  Created by leijun on 13-7-31.
//  Copyright (c) 2013年 Acorld. All rights reserved.
//

#import "MyTool.h"
static MyTool *_tool = nil;
@implementation MyTool
+ (MyTool *)shared
{
	if (nil == _tool)
	{
		_tool = [[super allocWithZone:NULL] init];
	}
	return _tool;
}


- (void)saveLastContent:(NSString *)regular content:(NSString *)content
{
	if (!regular && !content) return;
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	if (regular)
	{
		[defaults setValue:regular forKey:REGULAR];
	}
	if (content)
	{
		[defaults setValue:content forKey:CONTENT];
	}
	[defaults synchronize];
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self shared];
}

- (id)copyWithZone:(NSZone*)zone
{
    return self;
}

- (id)retain
{
	return _tool;
}

- (void)dealloc
{
	
}

- (oneway void)release
{
	
}

@end
