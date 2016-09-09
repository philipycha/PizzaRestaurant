//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "BadManager.h"
#import "HappyManager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings!");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        
        //BadManager *badManager = [[BadManager alloc] init];
        
        HappyManager *happyManager = [[HappyManager alloc] init];
        
        DeliveryService *deliveryMan = [[DeliveryService alloc] init];
        
        happyManager.delivery = deliveryMan;
        
        happyManager.delivery.car = [[DeliveryCar alloc] init];
        
        
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"You ordered a %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            
            if ([commandWords count] < 2) {
                NSLog(@"invalid command");
                continue;
            } else if ([commandWords count] == 2) {
                NSLog(@"not enough toppings! specify at least one");
                continue;
            }
            
            // And then send some message to the kitchen...
            
            
            
            
            
            
            
            
            NSMutableArray *toppings = [[NSMutableArray alloc] initWithArray:commandWords];
            
//            NSString *managerType = [toppings objectAtIndex:0];
//            
//            
//            [toppings removeObjectAtIndex:0];
            
            
//            if ([managerType isEqualToString:@"bad"]) {
//                restaurantKitchen.delegate = badManager;
//            }
//            
//            else if ([managerType isEqualToString:@"happy"]) {
//                restaurantKitchen.delegate = happyManager;
//            }
            
            NSString *sizeString = [toppings firstObject];
            
            [toppings removeObjectAtIndex:0];
            
            PizzaSize pizzasize;
            
            if ([sizeString isEqualToString:@"small"]) {
                pizzasize = small;
            } else if ([sizeString isEqualToString:@"medium"]) {
                pizzasize = medium;
            } else if ([sizeString isEqualToString:@"large"]) {
                pizzasize = large;
            }
            
            Pizza *newPizza = [restaurantKitchen makePizzaWithSize:pizzasize toppings:toppings];
            
            [happyManager.delivery deliverPizza:newPizza];
//                [happyManager.delivery deliverPizza:newPizza];
//                [happyManager.delivery deliverPizza:newPizza];
//                [happyManager.delivery deliverPizza:newPizza];
            
            NSLog(@"%@", [happyManager.delivery pizzaList]);
    
            
        }
    
    }

    return 0;

}

