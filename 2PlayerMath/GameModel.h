//
//  GameModel.h
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@class Player;

@interface GameModel : NSObject


@property (nonatomic, strong) Player * currentPlayer;
@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;


@property (nonatomic, strong) NSArray *playerList;
@property (nonatomic, assign) int inputAnswer;
@property (nonatomic, assign) int questionAnswer;

@property (nonatomic) NSString *displayQuestion;


- (instancetype)initWithPlayers:(NSArray *)players;

-(void) questionGenerator:(Player *)player;


- (BOOL) isCorrectAnswer;

@end
