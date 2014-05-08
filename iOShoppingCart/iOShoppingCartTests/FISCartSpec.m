//
//  FISCartSpec.m
//  iOShoppingCart
//
//  Created by Chris Gonzales on 5/8/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#import "FISCart.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "FISItem.h"

SpecBegin(FISCart)

describe(@"FISCart", ^{
    __block FISCart *cart;
    
    beforeAll(^{
       cart = [[FISCart alloc] init];
    });
    
    beforeEach(^{
        [cart.items removeAllObjects];
    });
    
    
    it(@"is an FISCart", ^{
        expect(cart).notTo.beNil();
        expect(cart).to.beInstanceOf([FISCart class]);
    });
    
    it(@"has items",^{
        expect(cart).to.respondTo(@selector(items));
        expect(cart).to.respondTo(@selector(setItems:));
        expect(cart.items).to.beKindOf([NSMutableArray class]);
    });
    
    it(@"can add an item to the cart",^{
        FISItem *item1 = [[FISItem alloc] initWithName:@"hot pockets" andPrice:@5];
        [cart addItem:item1];
        expect(cart.items[0]).to.equal(item1);
        
    });
    
    it(@"can return a total",^{
        FISItem *item1 = [[FISItem alloc] initWithName:@"reeses pb cups" andPrice:@1];
        FISItem *item2 = [[FISItem alloc] initWithName:@"diet coke" andPrice:@2];
        [cart addItem:item1];
        [cart addItem:item2];
        expect([cart total]).to.equal(@3);
    });
    
    
    
});

SpecEnd
