//
//  Player.m
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name andLives:(NSInteger)lives
{
	self = [super init];
	if (self) {
		_lives = lives;
		_name = name;

	}
	return self;
}

- (void) loseALife
{
// if self.lives = 0 -> currentPlayer lose games, else if incorrect answer self.lives =- 1,
	
	
	self.lives =- 1;
	
	
}

@end
