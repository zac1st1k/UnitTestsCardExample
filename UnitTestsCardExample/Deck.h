//
//  Deck.h
//  UnitTestsCardExample
//
//  Created by Zac on 13/02/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end