//
//  GameController.m
//  iPhoneApp
//
//  Created by Aaron VonderHaar on 3/5/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "GameController.h"
#import "ImageLayer.h"

@implementation GameController

- (void)updateContentViewFrame:(NSNotification *)notification
{
  double gameWidth = 300;
	double gameHeight = 200;
	
	CGSize contentSize = [contentView bounds].size;
  
	CGSize aspectSize = contentSize;
	double scale;
	if ((aspectSize.width / aspectSize.height) > (gameWidth / gameHeight))
	{
		scale = aspectSize.height / gameHeight;
		aspectSize.width = aspectSize.height * (gameWidth / gameHeight);
	}
	else
	{
		scale = aspectSize.width / gameWidth;
		aspectSize.height = aspectSize.width * (gameHeight / gameWidth);
	}
	
	[CATransaction begin];
	[CATransaction setValue:(id)kCFBooleanTrue forKey:kCATransactionDisableActions];
	backgroundLayer.transform = CATransform3DMakeScale(scale, scale, 1.0);
	backgroundLayer.frame =
  CGRectMake(
             0.5 * (contentSize.width - aspectSize.width),
             0.5 * (contentSize.height - aspectSize.height),
             aspectSize.width,
             aspectSize.height);
	[CATransaction commit];
}

- (void)awakeFromNib
{
  backgroundLayer = [[[ImageLayer alloc]
                      initWithImageNamed:@"background.png"
                      frame:CGRectZero]
                     autorelease];
  backgroundLayer.masksToBounds = YES;
  [[contentView layer] insertSublayer:backgroundLayer atIndex:0];
  [self updateContentViewFrame:nil];
}

@end
