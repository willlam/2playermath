//
//  GameModel.m
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "GameModel.h"


@implementation GameModel

const int kMaxNumber = 20;

- (instancetype)initWithPlayers:(NSArray *)players
{
	self = [super init];
	if (self) {
		for (int i = 0; i < players.count; i++)  {
			
			if (i == 0) {
				_player1 = players[i];
			} else if (i == 1) {
				_player2 = players[i];
			}
			
		}
	
		_currentPlayer = _player1;
	}
	return self;
}

- (void) questionGenerator:(Player *)player
{
	int firstNumber = arc4random_uniform(kMaxNumber);
	int secondNumber = arc4random_uniform(kMaxNumber);
	
	self.questionAnswer = firstNumber + secondNumber;
	
	if (player == self.player1) {
		self.displayQuestion = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player1.name, firstNumber, secondNumber];
		
	} else if (player == self.player2) {
		self.displayQuestion = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player2.name, firstNumber, secondNumber];
	}
	
}

- (BOOL) isCorrectAnswer
{
	if ((self.questionAnswer = self.inputAnswer)) {
		 NSLog(@"Correct!");
		return YES;
	}
	 NSLog(@"Incorrect!");
	return NO;
}


@end
