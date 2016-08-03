//
//  Card.m
//  MyFirstCardGame
//
//  Created by Dean Silfen on 7/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import "Card.h"

@implementation Card

// in initalizers refer to properties prepending with `_`
- (instancetype)initWithSuit:(NSString *)suit value:(NSString *)value; {
    self = [super init];
    if (self) {
        _suit = suit;
        _value = value;
    }
    return self;
}

- (NSString *)label {
    NSString *formattedLabel = @"%@ / %@";
    return [NSString stringWithFormat:formattedLabel, self.suit, self.value];
}

@end
