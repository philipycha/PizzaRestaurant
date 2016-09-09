//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Philip Ha on 2016-09-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"


@interface DeliveryService : NSObject

@property (strong, nonatomic) NSMutableArray *deliveredPizza;
@property (strong, nonatomic) DeliveryCar *car;

-(void) deliverPizza:(Pizza *)pizza;
-(NSMutableArray *) pizzaList;


@end
