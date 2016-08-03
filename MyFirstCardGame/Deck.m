//
//  Deck.m
//  MyFirstCardGame
//
//  Created by Dean Silfen on 7/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import "Deck.h"
#import "Card.h"
#include <stdlib.h>

static int NumberOfCards = 52;

@implementation Deck

- (instancetype)init {
    self = [super init];
    if (self) {
        _cards = [[self createCardsArray] copy];
    }
    return self;
}


- (Card *)topCard {
    return [[self cards] firstObject];
}


- (void)shuffle {
    NSMutableArray *oldCards = [[self cards] mutableCopy];
    NSMutableArray *newCards = [[NSMutableArray alloc] init];
    for (int i = 0; i<NumberOfCards; i++) {
        NSInteger currentlength = [oldCards count];
        if (currentlength != 0) {
            NSUInteger randomIndex = (NSUInteger)arc4random_uniform((unsigned int)currentlength);
            Card *randomlyPickedCard = [oldCards objectAtIndex:(NSUInteger)randomIndex];
            [newCards addObject:randomlyPickedCard];
            [oldCards removeObject:randomlyPickedCard];
        }
    }
    self.cards = newCards;
}

-(NSMutableArray *)createCardsArray {
    NSArray *suits = @[@"Hearts", @"Spades", @"Clubs", @"Diamonds"];
    NSArray *values = @[@"Ace", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"Jack", @"Queen", @"King"];
    NSMutableArray *internalCards = [[NSMutableArray alloc] init];
    for (NSString *suit in suits) {
        for (NSString *value in values) {
            Card *card = [[Card alloc] initWithSuit: suit value:value];
            [internalCards addObject: card];
        }
    }
    return internalCards;
}

@end
