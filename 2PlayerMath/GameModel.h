//
//  GameModel.h
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic) NSInteger currentPlayer;
@property (nonatomic, strong) NSArray *playerList;
@property (nonatomic, assign) int inputAnswer;
@property (nonatomic, assign) int questionAnswer;
@property (nonatomic) NSString *displayQuestion;
@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property 

- (instancetype)initWithPlayers:(NSArray *)players andName:(NSString *)name;

-(void) questionGenerator:(Player *)player;

- (BOOL) answerCheck;

@end
