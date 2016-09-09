//
//  BadManager.m
//  PizzaRestaurant
//
//  Created by Philip Ha on 2016-09-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "BadManager.h"

@implementation BadManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    for (NSString *topping in toppings) {
        if ([topping isEqualToString:@"anchovies"]) {
            return NO;
        }
    }
    return YES;
}


-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    
    return NO;
    
}

@end
