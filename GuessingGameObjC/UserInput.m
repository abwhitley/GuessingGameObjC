//
//  UserInput.m
//  GuessingGameObjC
//
//  Created by Austins Work on 8/25/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
NSNumber  *getNumberFromUser(int maxValidChoice){
    int choice = 0;
    int numberOfItemsScanned = 0;
    
    int firstValidChoice = 0;
    while((numberOfItemsScanned != 1) && ((choice <= firstValidChoice)|| (choice > maxValidChoice))){
        printf("enter a number between 0 and %d", maxValidChoice);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%d", &choice);
        
    }
    return @(choice);
}


