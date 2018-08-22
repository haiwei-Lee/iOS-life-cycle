//
//  life_cycleTests.m
//  life-cycleTests
//
//  Created by lee on 2018/6/25.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface life_cycleTests : XCTestCase

@end

@implementation life_cycleTests

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
//    NSLog(@"=======%d",[self validatePhoneNum:@"+43100"]);
}

-(BOOL)validatePhoneNum:(NSString *)mobile{
    NSError * error = NULL;
    NSDataDetector * detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber error:&error];
    NSRange inputRange = NSMakeRange(0, mobile.length);
    NSArray * matches = [detector matchesInString:mobile options:0 range:inputRange];
    if (matches.count == 0 || matches.count > 1) return NO;
    NSTextCheckingResult * match = matches[0];
    if ([match resultType] == NSTextCheckingTypePhoneNumber) {
        return YES;
    }
    return NO;
}

- (void)featchPhoneNumber{
    
    NSString * str = @"如果重置密码失败，400-800-2222请拨打400 500 5555客服热线：13800000000或者是(010)22222222还可以拨打+86 17700000000以及其他的号码比如：8617700000000以及177-0000-0000和其他的样式177 0000 0000";
    NSError *error = NULL;
    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber error:&error];
    NSRange inputRange = NSMakeRange(0, [str length]);
    NSArray *matches = [detector matchesInString:str options:0 range:inputRange];
    
    for (NSTextCheckingResult * match in matches) {
        if ([match resultType] == NSTextCheckingTypePhoneNumber){
            NSLog(@"match phoneNumber : %@", match);
        }
    }
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
