//
//  Lhw_commonTest.m
//  life-cycleTests
//
//  Created by lee on 2018/8/15.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Lhw_commonTest : XCTestCase

@end

@implementation Lhw_commonTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"test");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
