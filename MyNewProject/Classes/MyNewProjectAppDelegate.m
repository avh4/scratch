//
//  MyNewProjectAppDelegate.m
//  MyNewProject
//
//  Created by Aaron VonderHaar on 4/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MyNewProjectAppDelegate.h"
#import "RootViewController.h"


@implementation MyNewProjectAppDelegate

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
