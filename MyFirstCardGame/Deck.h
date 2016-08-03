//
//  Deck.h
//  MyFirstCardGame
//
//  Created by Dean Silfen on 7/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Card; // forward declaration

@interface Deck : NSObject

@property NSArray<Card *> *cards;

-(Card *)topCard;

-(void)shuffle;

@end