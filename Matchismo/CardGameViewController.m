//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Jawad Rashid on 4/4/14.
//  Copyright (c) 2014 nDataConsulting. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *myDeck;

@end

@implementation CardGameViewController

- (Deck *)myDeck
{
    if(!_myDeck) _myDeck = [[PlayingCardDeck alloc] init];
    return _myDeck;
}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        Card *card = [self.myDeck drawRandomCard];
        if(!card) {
            NSLog(@"Run out of cards. Creating a new deck");
            self.myDeck = nil;
            card = [self.myDeck drawRandomCard];
        }
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}


@end
