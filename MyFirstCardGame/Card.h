//
//  Card.h
//  MyFirstCardGame
//
//  Created by Dean Silfen on 7/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property NSString *suit;
@property NSString *value;

- (instancetype)initWithSuit:(NSString *)suit value:(NSString *)value;
- (NSString *)label;

@end
