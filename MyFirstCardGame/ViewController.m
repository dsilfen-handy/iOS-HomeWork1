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
@property (strong, nonatomic) IBOutlet UILabel *topLeftLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomLeftLabel;
@property (strong, nonatomic) IBOutlet UILabel *topRightLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomRightLabel;

@property Deck* deck;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
     _deck = [[Deck alloc] init];
  }
  return self;
}

- (IBAction)shuffleCards:(id)sender {
    [self.deck shuffle];
    Card *card = [self.deck topCard];
    self.cardLabel.text = [card label];
    NSString *suit = [card suit];
    self.topLeftLabel.text = suit;
    self.bottomLeftLabel.text = suit;
    self.topRightLabel.text = suit;
    self.bottomRightLabel.text = suit;    
}


@end
