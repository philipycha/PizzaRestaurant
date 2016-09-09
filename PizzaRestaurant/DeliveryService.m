//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Philip Ha on 2016-09-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveredPizza = [[NSMutableArray alloc] init];
        _car = [[DeliveryCar alloc] init];
        
    }
    return self;
}

-(NSMutableArray *) pizzaList{
    
    NSLog(@"We have delivered %lu pizzas", (unsigned long)self.deliveredPizza.count);
    return self.deliveredPizza;
    
}

-(void) deliverPizza:(Pizza *)pizza{
    
    [self.deliveredPizza addObject:pizza];
    
    [self.car deliverPizza:pizza];
    
}



@end
