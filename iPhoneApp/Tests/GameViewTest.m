//
//  GameViewTest.m
//  iPhoneApp
//
//  Created by Aaron VonderHaar on 3/9/09.
//  Copyright 2009 Aaron VonderHaar. All rights reserved.
//

#import "GTMUIKit+UnitTesting.h"
#import <OCMock/OCMock.h>

@interface GameViewTest : SenTestCase { }
@end

@implementation GameViewTest

- (void)testDefaultState
{
  GameView *gv = [[GameView alloc] init];
  GTMAssertObjectImageEqualToImageNamed(gv, @"Game View default state.png", nil);
}

@end
