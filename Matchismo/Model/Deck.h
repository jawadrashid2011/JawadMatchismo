//
//  Deck.h
//  Matchismo
//
//  Created by Jawad Rashid on 4/4/14.
//  Copyright (c) 2014 nDataConsulting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"


@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
