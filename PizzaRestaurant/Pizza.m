//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)pizzaSize Toppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _pizzaSize = pizzaSize;
        _toppings = toppings;
    }
    return self;
}


-(NSString *)description {


    NSString *pizzaString;
    
    switch (self.pizzaSize) {
        case 0:
            pizzaString = @"small";
            break;
        case 1:
            pizzaString = @"medium";
            break;
        case 2:
            pizzaString = @"large";
            break;
        default: pizzaString = @"invalid size";
            break;
    }
    
    return [NSString stringWithFormat:@"Your pizza size is %@ and your toppings are %@", pizzaString, self.toppings];
}

@end
    
