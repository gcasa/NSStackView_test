//
//  AppDelegate.m
//  NSStackView_test
//
//  Created by Gregory Casamento on 8/4/20.
//  Copyright © 2020 Open Logic Corporation. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property IBOutlet NSStackView *verticalStack;
@property IBOutlet NSStackView *horizontalStack;
@property IBOutlet NSStackView *verticalGravityStack;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSRect f = NSMakeRect(0, 0,10, 30);
    NSButton *v = [[NSButton alloc] initWithFrame: f];
    [v setTitle: @"Button 2"];
    [self.horizontalStack addView:v inGravity:NSStackViewGravityCenter];
    
    f = NSMakeRect(0, 0,10, 30);
    v = [[NSButton alloc] initWithFrame: f];
    [v setTitle: @"Button 3"];
    [self.verticalStack addView:v inGravity:NSStackViewGravityCenter];
    
    NSLog(@"vertical subviews = %@", [_verticalStack subviews]);
    NSLog(@"vertical arranged subviews = %@", [_verticalStack arrangedSubviews]);
    
    NSLog(@"vertical grav subviews = %@", [_verticalGravityStack subviews]);
    NSLog(@"vertical grav arranged subviews = %@", [_verticalGravityStack arrangedSubviews]);
}

- (void) awakeFromNib
{
    // _verticalStack.arrangesAllSubviews = YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
