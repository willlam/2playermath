//
//  ViewController.m
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
//	
//	Player *player1 = [[Player alloc] initWithLives:3 andScore:0];
//	Player *player2 = [[Player alloc] initWithLives:3 andScore:0];
	
	GameModel *startGame = [[GameModel alloc] initWithPlayers:@[player1, player2]];
	
	

	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
