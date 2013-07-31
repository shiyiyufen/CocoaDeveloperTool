//
//  ZZCSWindowController.h
//  AppTool
//
//  Created by leijun on 13-7-31.
//  Copyright (c) 2013年 Acorld. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ZZCSWindowController : NSWindowController
@property (assign) IBOutlet NSTextField *textf;
@property (assign) IBOutlet NSTextView *textV;
@property (assign) IBOutlet NSTextView *resultV;

@property (assign) IBOutlet NSPopUpButton *typeBtn;

- (IBAction)selectType:(id)sender;
@end
