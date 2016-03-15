//
//  ViewController.m
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) GameModel *game;

@end

@implementation ViewController

- (void)viewDidLoad {
	
	[super viewDidLoad];
	
	[self initializeViewController];
	
}

- (void)initializeViewController {
	
	Player *player1 = [[Player alloc] initWithName:@"Player 1" score:3 andLives:3];
	Player *player2 = [[Player alloc] initWithName:@"Player 2" score:4 andLives:3];
	
	NSArray<Player *> *players =  @[player1, player2];
	self.game = [[GameModel alloc] initWithPlayers:players];
	
	
	NSLog(@"Player 1 score = %@", self.game.player1);

	
	NSString *inStr1 = [NSString stringWithFormat:@"%ld", (long)self.game.player1.score ];
	NSString *inStr2 = [NSString stringWithFormat:@"%ld", (long)self.game.player2.score ];
	
	NSLog(@"Player 1 score = %@", inStr1);
	NSLog(@"Player 2 score = %@", inStr2);
	
	self.player1ScoreLabel.text = inStr1;
	self.player2ScoreLabel.text = inStr2;
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
