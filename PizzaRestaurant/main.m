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

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        
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
            
            // And then send some message to the kitchen...
            
            NSMutableArray *toppings = [[NSMutableArray alloc] init];
            [toppings addObjectsFromArray:commandWords];
            [toppings removeObjectAtIndex:0];
            
            NSString *sizeString = [commandWords firstObject];
            PizzaSize pizzasize;
            
            if ([sizeString isEqualToString:@"small"]) {
                pizzasize = small;
            } else if ([sizeString isEqualToString:@"medium"]) {
                pizzasize = medium;
            } else if ([sizeString isEqualToString:@"large"]) {
                pizzasize = large;
            }
            
            Pizza *newPizza = [restaurantKitchen makePizzaWithSize:pizzasize toppings:toppings];
            
            NSLog(@"your pizza %@", newPizza);
    
        
        }
    
    }

    return 0;

}

