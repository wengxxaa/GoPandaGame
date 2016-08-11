//
//  GameAchievement.m
//  GoPanda
//
//  Created by Ekaterina Krasnova on 08.06.16.
//  Copyright © 2016 Ekaterina Krasnova. All rights reserved.
//

#import "GameAchievement.h"
#import "GameStart.h"

@implementation GameAchievement


- (void)didMoveToView:(SKView *)view {
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint touchLocation = [[touches anyObject] locationInNode:self];
    SKNode *node = [self nodeAtPoint:touchLocation];
    
    SKView * skView = (SKView *)self.view;
    
    if ([node.name isEqualToString:@"okachievementsbutton"]) {
        
        GameStart *scene = [GameStart nodeWithFileNamed:@"GameStart"];
        scene.scaleMode = SKSceneScaleModeAspectFill;
        [skView presentScene:scene];
    }
}

@end
