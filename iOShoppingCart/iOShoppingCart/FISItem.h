//
//  FISItem.h
//  iOShoppingCart
//
//  Created by Chris Gonzales on 5/8/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISItem : NSObject

-(instancetype)initWithName:(NSString *)name
                   andPrice:(NSNumber *)price;

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *price;

@end
