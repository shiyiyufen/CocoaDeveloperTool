//
//  AppDelegate.h
//  AppTool
//
//  Created by leijun on 13-7-30.
//  Copyright (c) 2013年 Acorld. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)btnClick:(NSButton *)sender;

@end
