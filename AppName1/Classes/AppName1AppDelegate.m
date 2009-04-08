//
//  AppName1AppDelegate.m
//  AppName1
//
//  Created by Aaron VonderHaar on 4/7/09.
//  Copyright SPAWAR Systems Center San Diego 2009. All rights reserved.
//

#import "AppName1AppDelegate.h"
#import "AppName1ViewController.h"

@implementation AppName1AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
