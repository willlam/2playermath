//
//  Player.h
//  2PlayerMath
//
//  Created by William Lam on 2016-03-14.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameModel.h"

@interface Player : NSObject

@property (nonatomic) NSInteger lives;

@property (nonatomic) NSString *name;

@property (nonatomic) NSInteger score;

@property (assign) BOOL lostTheGame;


- (instancetype)initWithName:(NSString *)name score:(NSInteger)score andLives:(NSInteger)lives;

- (void) loseALife;

@end
