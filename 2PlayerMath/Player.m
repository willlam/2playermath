//
//  Player.m
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name score:(NSInteger)score andLives:(NSInteger)lives
{
	self = [super init];
	if (self) {
		_lives = lives;
		_name = name;
		_score = score;

	}
	return self;
}

- (void) loseALife
{
	self.lives =- 1;
	
	if ((self.lives = 0)) {
		self.lostTheGame = YES;
	}
}

@end
