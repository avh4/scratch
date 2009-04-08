//
//  AppName2AppDelegate.h
//  AppName2
//
//  Created by Aaron VonderHaar on 4/7/09.
//  Copyright SPAWAR Systems Center San Diego 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppName2ViewController;

@interface AppName2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AppName2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AppName2ViewController *viewController;

@end

