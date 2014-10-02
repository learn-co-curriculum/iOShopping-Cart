//
//  FISItem.m
//  iOShoppingCart
//
//  Created by Chris Gonzales on 5/8/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISItem.h"

@implementation FISItem

#pragma mark - initializers

-(instancetype)initWithName:(NSString *)name andPrice:(NSNumber *)price
{
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
    }
    return self;
}

@end
