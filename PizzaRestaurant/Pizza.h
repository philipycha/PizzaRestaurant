//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Philip Ha on 2016-09-08.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Pizza : NSObject

typedef enum {
    small = 0,
    medium = 1,
    large = 2,
}PizzaSize;

@property (nonatomic, assign) PizzaSize pizzaSize;
@property (strong, nonatomic) NSArray * toppings;

- (instancetype)initWithSize:(PizzaSize)pizzaSize Toppings:(NSArray *)toppings;

//-(NSString *) pizzaString;

@end
