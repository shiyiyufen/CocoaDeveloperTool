//
//  ZZCSWindowController.m
//  AppTool
//
//  Created by leijun on 13-7-31.
//  Copyright (c) 2013年 Acorld. All rights reserved.
//

#import "ZZCSWindowController.h"

@interface ZZCSWindowController ()
{
	NSInteger typeIndex;
}
@end

@implementation ZZCSWindowController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
		
    }
    
    return self;
}

- (IBAction)hello:(id)sender
{
	self.resultV.string = @"";
	__block NSMutableString *resultStr = [[NSMutableString alloc] init];
	if (typeIndex == 1)
	{
		NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:self.textf.stringValue options:NSRegularExpressionCaseInsensitive error:nil];
		if (regex != nil)
		{
			[regex enumerateMatchesInString:self.textV.string options:0 range:NSMakeRange(0, [self.textV.string length]) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop)
			 {
				 NSLog(@"%ld",(unsigned long)[result numberOfRanges]);
				 NSLog(@"timeTimes 0 = %@",[self.textV.string substringWithRange:[result rangeAtIndex:0]]);
				 [resultStr appendString:@"\n"];
				 [resultStr appendString:[self.textV.string substringWithRange:[result rangeAtIndex:0]]];
			 }];
		}
	}else
	{
		NSRange range = [self.textV.string rangeOfString:self.textf.stringValue options:NSRegularExpressionSearch | NSCaseInsensitiveSearch range:NSMakeRange(0, self.textV.string.length)];
		if (range.length)
		{
			resultStr = [NSMutableString stringWithString:@"验证成功！恭喜恭喜"];
		}
	}
	
	if (resultStr && resultStr.length)
	{
		self.resultV.string = resultStr;
	}
}

- (void)windowDidLoad
{
    [super windowDidLoad];
	[self.typeBtn removeAllItems];
    [self.typeBtn addItemsWithTitles:[NSArray arrayWithObjects:@"验证",@"截取", nil]];
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)selectType:(NSPopUpButton *)sender
{
	NSInteger index = [sender indexOfSelectedItem];
	typeIndex = index;
}
@end
