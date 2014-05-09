//
//  FISItemSpec.m
//  iOShoppingCart
//
//  Created by Chris Gonzales on 5/8/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#import "FISItem.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISItem)

describe(@"FISItem", ^{
    __block FISItem *item;
    
    beforeAll(^{
        item = [[FISItem alloc] initWithName:@"hot pockets" andPrice:@5];
    });
    
    it(@"is an FISItem", ^{
        expect(item).notTo.beNil();
        expect(item).to.beInstanceOf([FISItem class]);
    });
    
    it(@"has a name",^{
        expect(item).to.respondTo(@selector(name));
        expect(item).to.respondTo(@selector(setName:));
        expect(item.name).to.beKindOf([NSString class]);
    });
    
    it(@"has a price",^{
        expect(item).to.respondTo(@selector(price));
        expect(item).to.respondTo(@selector(setPrice:));
        expect(item.price).to.beKindOf([NSNumber class]);
    });
    
});

SpecEnd
