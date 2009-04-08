//
//  AppName1AppDelegate.h
//  AppName1
//
//  Created by Aaron VonderHaar on 4/7/09.
//  Copyright SPAWAR Systems Center San Diego 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppName1ViewController;

@interface AppName1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AppName1ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AppName1ViewController *viewController;

@end

