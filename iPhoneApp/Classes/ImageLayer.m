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
    self.imageName = newImageName;
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
    CFURLRef pdfURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), (CFStringRef)newImageName, NULL, NULL);
    pdf = CGPDFDocumentCreateWithURL(pdfURL);
    CFRelease(pdfURL); pdfURL = NULL;
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
  CGPDFPageRef page = CGPDFDocumentGetPage(pdf, 1);
  CGContextSaveGState(ctx);
  CGContextTranslateCTM(ctx, 0, self.bounds.size.height);
  CGContextScaleCTM(ctx, 1, -1);
  CGContextSetRGBFillColor(ctx, .2, .2, .2, 1.0);
//  CGContextFillRect(ctx, self.bounds);
//  CGContextStrokeRect(ctx, self.bounds);
  CGAffineTransform pdfTransform = CGPDFPageGetDrawingTransform(page, kCGPDFCropBox, self.bounds, 0, FALSE);
  CGContextConcatCTM(ctx, pdfTransform);
//  CGContextStrokeRect(ctx, CGPDFPageGetBoxRect(page, kCGPDFCropBox));
  CGContextDrawPDFPage(ctx, page);
  CGContextRestoreGState(ctx);
}

//
// dealloc
//
// Releases instance memory.
//
- (void)dealloc
{
	[imageName release];
  CGPDFDocumentRelease(pdf); pdf = NULL;
	[super dealloc];
}


@end

