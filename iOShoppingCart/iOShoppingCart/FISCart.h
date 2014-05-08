//
//  FISCart.h
//  iOShoppingCart
//
//  Created by Chris Gonzales on 5/8/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISItem.h"

@interface FISCart : NSObject

@property (strong, nonatomic) NSMutableArray *items;

-(NSNumber *)total;
-(void)addItem:(FISItem *)newItem;
-(NSNumber *)numOfItems;
-(NSArray *)itemsSortedByName;
-(NSArray *)itemsSortedByPrice;
-(NSArray *)itemsWithName:(NSString *)name;

@end
