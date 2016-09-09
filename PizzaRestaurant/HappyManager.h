//
//  HappyManager.h
//  PizzaRestaurant
//
//  Created by Philip Ha on 2016-09-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface HappyManager : NSObject <KitchenDelegate>

@property (nonatomic, strong) DeliveryService *delivery;

-(void)kitchenDidMakePizza:(Pizza *)pizza;


@end
