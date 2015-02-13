//
//  Card.m
//  UnitTestsCardExample
//
//  Created by Zac on 13/02/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    return score;
}

@end
