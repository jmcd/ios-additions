//
//  ios_additionsTests.m
//  ios-additionsTests
//
//  Created by John McDowall on 11/02/2014.
//  Copyright (c) 2014 John McDowall. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JMDAssert.h"

@interface ios_additionsTests : XCTestCase

@end

@implementation ios_additionsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
	[JMDAssert condition:NO]

    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
