//
//  ViewController.m
//  MyFirstCardGame
//
//  Created by Justin Williams on 6/21/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "Card.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *cardLabel;
@property Deck* deck;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    // Initialize your game or deck here.
    
     _deck = [[Deck alloc] init];
  }
  return self;
}

- (IBAction)shuffleCards:(id)sender {
    [self.deck shuffle];
    self.cardLabel.text = [[self.deck topCard] label];
}


@end
