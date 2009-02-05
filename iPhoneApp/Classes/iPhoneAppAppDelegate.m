//
//  iPhoneAppAppDelegate.m
//  iPhoneApp
//
//  Created by Aaron VonderHaar on 2/5/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "iPhoneAppAppDelegate.h"
#import "RootViewController.h"


@implementation iPhoneAppAppDelegate

@synthesize window;
@synthesize navigationController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}

@end
