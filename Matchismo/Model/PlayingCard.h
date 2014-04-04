//
//  PlayingCard.h
//  Matchismo
//
//  Created by Jawad Rashid on 4/4/14.
//  Copyright (c) 2014 nDataConsulting. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
