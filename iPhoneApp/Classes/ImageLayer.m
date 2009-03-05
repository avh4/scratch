//
//  ImageLayer.m
//  Quartzeroids2
//
//  Created by Matt Gallagher on 13/02/09.
//  Copyright 2009 Matt Gallagher. All rights reserved.
//
//  Use of this file is subject to the BSD-style license in the license.txt file
//  distributed with the project.
//

#import "ImageLayer.h"


@implementation ImageLayer

@synthesize imageName;

//
// initWithImageNamed
//
// Init method for the object.
//
- (id)initWithImageNamed:(NSString *)newImageName
                   frame:(CGRect)newFrame
{
	self = [super init];
	if (self != nil)
	{
		self.anchorPoint = CGPointMake(0.5, 0.5);
		imageName = [newImageName retain];
		[self setNeedsDisplay];
		[self setFrame:newFrame];
	}
	return self;
}

//
// setImageName:
//
// Override of accessor to ensure layer is redraw when change occurs.
//
- (void)setImageName:(NSString *)newImageName
{
	if (newImageName != imageName)
	{
		[imageName release];
		imageName = [newImageName retain];
		[self setNeedsDisplay];
	} 
}

//
// drawInContext
//
// Draws the selected image in the layer.
//
- (void)drawInContext:(CGContextRef)ctx
{
	UIImage *image = [UIImage imageNamed:imageName];
  [image drawInRect:self.bounds];
  
  CGContextTranslateCTM(ctx, 0, self.bounds.size.height);
  CGContextScaleCTM(ctx, 1, -1);
  CGContextDrawImage(ctx, self.bounds, image.CGImage);
}

//
// dealloc
//
// Releases instance memory.
//
- (void)dealloc
{
	[imageName release];
	[super dealloc];
}


@end

