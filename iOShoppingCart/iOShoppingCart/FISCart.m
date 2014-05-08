//
//  FISCart.m
//  iOShoppingCart
//
//  Created by Chris Gonzales on 5/8/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISCart.h"

@implementation FISCart

#pragma mark - initializers
- (instancetype)init
{
    self = [super init];
    if (self) {
        _items = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - methods

-(NSNumber *)total
{
    NSInteger totalPrice = 0;
    for (FISItem *item in self.items) {
        totalPrice += [item.price integerValue];
    }
    
    return [NSNumber numberWithInteger:totalPrice];
}

-(void)addItem:(FISItem *)newItem
{
    [self.items addObject:newItem];
}

-(void)removeItem:(FISItem *)itemToRemove
{
    [self.items removeObject:itemToRemove];
}

-(NSNumber *)numOfItems
{
    NSInteger itemCount = [self.items count];
    return [NSNumber numberWithInteger:itemCount];
}

-(NSArray *)itemsSortedByName
{
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedItems = [self.items sortedArrayUsingDescriptors:sortDescriptors];
    
    return sortedItems;
}

-(NSArray *)itemsSortedByPrice
{
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"price" ascending:YES selector:@selector(compare:)];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedItems = [self.items sortedArrayUsingDescriptors:sortDescriptors];
    
    return sortedItems;
}

-(NSArray *)itemsWithName:(NSString *)name
{
    NSMutableArray *objectsWithName = [[NSMutableArray alloc] init];
    
    for (FISItem *item in self.items) {
        if ([item.name isEqualToString:name]) {
            [objectsWithName addObject:item];
        }
    }
    
    return objectsWithName;
}

-(NSArray *)itemsMoreExpensiveThan:(NSNumber *)price
{
    NSMutableArray *relativelyExpensiveObjects = [[NSMutableArray alloc] init];
    NSInteger paramPrice = [price integerValue];
    
    for (FISItem *item in self.items) {
        NSInteger itemPrice = [item.price integerValue];
        
        if (itemPrice > paramPrice) {
            [relativelyExpensiveObjects addObject:item];
        }
    }
    
    return relativelyExpensiveObjects;
}

@end
