//
//  AppDelegate.m
//  AppTool
//
//  Created by leijun on 13-7-30.
//  Copyright (c) 2013年 Acorld. All rights reserved.
//

#import "AppDelegate.h"
#define TAG 9900
#import "ZZCSWindowController.h"
@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (IBAction)btnClick:(NSButton *)sender
{
	switch ([sender tag] - TAG)
	{
		case 0:
		{
			ZZCSWindowController *zzwindow = [[ZZCSWindowController alloc] initWithWindowNibName:@"ZZCSWindowController"];
			[zzwindow showWindow:self];
			
			self.window.isVisible = NO;
			break;
		}
		default:
			break;
	}
}
@end
