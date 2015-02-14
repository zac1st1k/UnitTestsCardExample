//
//  PlayingCardTestCase.m
//  UnitTestsCardExample
//
//  Created by Zac on 13/02/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PlayingCard.h"

@interface PlayingCardTestCase : XCTestCase

@end

@implementation PlayingCardTestCase

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
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testTheValidSuits
{
    NSArray *theSuits = [PlayingCard validSuits];
    int howMany = (int)[theSuits count];
    XCTAssertEqual(howMany, 4, @"Should be only 4");
    XCTAssertTrue([theSuits containsObject:@"♥"], "@Must have a heart");
    XCTAssertTrue([theSuits containsObject:@"♦"], "@Must have a diamond");
    XCTAssertTrue([theSuits containsObject:@"♠"], "@Must have a spade");
    XCTAssertTrue([theSuits containsObject:@"♣"], "@Must have a club");
}

- (void)testSetSuitAnyValidAccepted
{
    PlayingCard *card = [[PlayingCard alloc] init];
    [card setSuit:@"♥"];
    XCTAssertEqualObjects(card.suit, @"♥", "Should be an Heart");
    [card setSuit:@"♦"];
    XCTAssertEqualObjects(card.suit, @"♦", "Should be a Diamond");
    [card setSuit:@"♠"];
    XCTAssertEqualObjects(card.suit, @"♠", "Should be a Spade");
    [card setSuit:@"♣"];
    XCTAssertEqualObjects(card.suit, @"♣", "Should be a Club");
}

- (void)testSetSuitInvalidRejected
{
    PlayingCard *card = [[PlayingCard alloc] init];
    [card setSuit:@"A"];
    XCTAssertEqualObjects(card.suit, @"?", "Should not have been recognized");
    XCTAssertNotEqualObjects(card.suit, @"A", "Should not have matched");
}

@end
