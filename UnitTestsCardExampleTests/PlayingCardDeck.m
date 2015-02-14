//
//  PlayingCardDeck.m
//  UnitTestsCardExample
//
//  Created by Zac on 14/02/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface PlayingCardDeckTestCase : XCTestCase

@end

@implementation PlayingCardDeckTestCase

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

- (void)testPlayingCardDeckHasTheCorrectInitialCards
{
    PlayingCardDeck *deck = [[PlayingCardDeck alloc] init];
    NSMutableArray *hearts = [@[] mutableCopy];
    NSMutableArray *diamonds = [@[] mutableCopy];
    NSMutableArray *clubs = [@[] mutableCopy];
    NSMutableArray *spades = [@[] mutableCopy];
    PlayingCard *randomCard;
    do {
        randomCard = (PlayingCard *)[deck drawRandomCard];
        if ([randomCard.suit isEqualToString:@"♥"]) [hearts addObject:randomCard];
        if ([randomCard.suit isEqualToString:@"♦"]) [diamonds addObject:randomCard];
        if ([randomCard.suit isEqualToString:@"♠"]) [spades addObject:randomCard];
        if ([randomCard.suit isEqualToString:@"♣"]) [clubs addObject:randomCard];
    } while (randomCard);
    NSUInteger expectedCount = 13;
    XCTAssertEqual([hearts count], expectedCount, @"Should be 13 cards");
    XCTAssertEqual([diamonds count], expectedCount, @"Should be 13 cards");
    XCTAssertEqual([spades count], expectedCount, @"Should be 13 cards");
    XCTAssertEqual([clubs count], expectedCount, @"Should be 13 cards");
}

- (void)testPlayingCardDeckAnswersPlayingCards
{
    PlayingCardDeck *deck = [[PlayingCardDeck alloc] init];
    id card = [deck drawRandomCard];
    XCTAssertTrue([card isKindOfClass:[PlayingCard class]], @"We should be drawing instances of PlayingCard from this deck.");
}

@end
