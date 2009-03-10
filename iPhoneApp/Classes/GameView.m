//
//  GameView.m
//  iPhoneApp
//
//  Created by Aaron VonderHaar on 3/9/09.
//  Copyright 2009 SPAWAR Systems Center San Diego. All rights reserved.
//

#import "GameView.h"


@implementation GameView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
  CGContextRef ctx = UIGraphicsGetCurrentContext();
  CGContextSetRGBFillColor(ctx, 1.0, 1.0, 1.0, 1.0);
  CGContextFillRect(ctx, self.bounds);

  UIImage *image = [UIImage imageWithContentsOfFile:@"box.png"];
  
  CGGradientRef gradient;
  CGColorSpaceRef myColorspace;
  size_t num_locations = 2;
  CGFloat locations[2] = { 0.0, 1.0 };
  CGFloat components[8] = { 1.0, 0.5, 0.4, 1.0,  // Start color
  0.8, 0.8, 0.3, 1.0 }; // End color
  
  myColorspace = CGColorSpaceCreateDeviceRGB();
  gradient = CGGradientCreateWithColorComponents (myColorspace, components,
                                                    locations, num_locations);
  CGContextDrawLinearGradient(ctx, gradient, CGPointMake(0, 0), CGPointMake(0, self.bounds.size.height), 0);

  CGContextDrawImage(ctx, CGRectMake(10, 10, 100, 100), [image CGImage]);
  CGColorSpaceRelease(myColorspace);
  CGGradientRelease(gradient);
}


- (void)dealloc {
    [super dealloc];
}


@end
