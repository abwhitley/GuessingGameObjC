//
//  main.m
//  GuessingGameObjC
//
//  Created by Austins Work on 8/15/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
BOOL runGame(void);
int main(int argc, const char * argv[]) {
    BOOL playGame = YES;
    while(playGame){
        playGame = runGame();
    }


    return 0;
}
BOOL runGame(void){
    int userNumber = -1;
    int randomNumber = arc4random_uniform(5);
    NSMutableArray *mutableArray = [NSMutableArray array];
    int playAgain = -1;
    
    for(int i = 0; i >= 0; i++){
        while(randomNumber != userNumber){
            NSNumber *number = @(randomNumber);
            NSLog(@"Enter a number: ");
            NSNumber *guess = getNumberFromUser(5);
            if(number == guess){
                printf("You guessed correctly!");
                printf("Would you like to play again?");
                printf("Enter 0 for No");
                printf("Enter 1 for Yes");
                fpurge(stdin);
                scanf("%d", &playAgain);
                if(playAgain == 0)
                    return NO;
                else
                    return YES;
            }else{
                printf("Try again");
                [mutableArray insertObject:guess atIndex:i];
                
                NSLog(@"Your guesses are: %@", mutableArray);
                
            }
        }
    }
    return 0;
}
