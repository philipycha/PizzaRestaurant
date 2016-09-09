//
//  HappyManager.m
//  PizzaRestaurant
//
//  Created by Philip Ha on 2016-09-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "HappyManager.h"

@implementation HappyManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    
    return YES;
}


-(void)kitchenDidMakePizza:(Pizza *)pizza{
    
    NSLog(@"Hope you enjoy the Pizza!");
    
    [self.delivery deliverPizza:pizza];
    
}

@end
