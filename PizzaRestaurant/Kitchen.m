//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    
    // ask delegate if we shoul dmake a pizza
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        
        // ask delgate if we should UPGRADE
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            
            size = large;
            
        }
        // make pizza
        
        Pizza *pizza = [[Pizza alloc] initWithSize:size Toppings:toppings];
        
        // tell delegate we made pizza.
        SEL kitchenDidMakePizza = @selector(kitchenDidMakePizza:);
        
        BOOL shouldDo = [self.delegate respondsToSelector:kitchenDidMakePizza];
        
        if(shouldDo){
            [self.delegate kitchenDidMakePizza:pizza];
        }
        
        return pizza;
        
    } else if (self.delegate == nil) {
        
        Pizza *pizza = [[Pizza alloc] initWithSize:size Toppings:toppings];

        return pizza;
        
    }
    
    return nil;
}

//-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
//    
//    if (toppings.count >= 5) {
//        
//        return YES;
//        
//    } else {
//        
//        return NO;
//    }
//    
//}
//
//-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
//    
//    if (arc4random_uniform(2)) {
//        
//        return YES;
//        
//    } else {
//        
//        return NO;
//        
//    }
//    
//}
//
//-(void)kitchenDidMakePizza:(Pizza *)pizza{
//    
//    SEL kitchenDidMakePizza = @selector(kitchenDidMakePizza:);
//    
//    BOOL shouldDo = [self.delegate respondsToSelector:kitchenDidMakePizza];
//    
//    if(shouldDo){
//        [self.delegate kitchenDidMakePizza:pizza];
//    }
//}

@end
