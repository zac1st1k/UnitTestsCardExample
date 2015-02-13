//
//  Card.h
//  UnitTestsCardExample
//
//  Created by Zac on 13/02/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end