//
//  main.m
//  GuessingGameObjC
//
//  Created by Austins Work on 8/15/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int userNumber = -1;
    int randomNumber = arc4random_uniform(20);
    NSMutableArray *mutableArray = [NSMutableArray array];

    for(int i = 0; i >= 0; i++){
        while(randomNumber != userNumber){
            NSNumber *number = @(randomNumber);
            NSLog(@"Enter a number: ");
            //NSLog(@"The random number is: %@", number);
            fpurge(stdin);
            scanf("%d", &userNumber);
            NSNumber *guess = @(userNumber);

            if(number == guess){
                printf("You guessed correctly!");
                return 1;
            }else{
                printf("Try again");
                [mutableArray insertObject:guess atIndex:i];
                
                NSLog(@"Your guesses are: %@", mutableArray);
            
            }
    }
    }
    return 0;
}
