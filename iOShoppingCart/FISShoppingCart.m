//  FISShoppingCart.m

#import "FISShoppingCart.h"

@implementation FISShoppingCart

- (NSUInteger)calculateTotalPriceInCents {
    NSUInteger totalPriceInCents = 0;
    for (FISItem *item in self.items) {
        totalPriceInCents += item.priceInCents;
    }
    return totalPriceInCents;
}

- (void)addItem:(FISItem *)item {
    [self.items addObject:item];
}

- (void)removeItem:(FISItem *)item {
    NSUInteger index = [self.items indexOfObject:item];
    [self.items removeObjectAtIndex:index];
}

- (void)removeAllItemsLikeItem:(FISItem *)item {
    [self.items removeObject:item];
}

- (void)sortItemsByNameAsc {
    NSSortDescriptor *sortByNameAsc = [NSSortDescriptor sortDescriptorWithKey:@"name"
                                                                    ascending:YES
                                                                     selector:@selector(caseInsensitiveCompare:)];
    NSArray *sortedItems = [self.items sortedArrayUsingDescriptors:@[sortByNameAsc]];
    self.items = [NSMutableArray arrayWithArray:sortedItems];
}

- (void)sortItemsByNameDesc {
    NSSortDescriptor *sortByNameDesc = [NSSortDescriptor sortDescriptorWithKey:@"name"
                                                                     ascending:NO
                                                                      selector:@selector(caseInsensitiveCompare:)];
    NSArray *sortedItems = [self.items sortedArrayUsingDescriptors:@[sortByNameDesc]];
    self.items = [NSMutableArray arrayWithArray:sortedItems];
}

- (void)sortItemsByPriceInCentsAsc {
    NSSortDescriptor *sortByPriceInCentsAsc = [NSSortDescriptor sortDescriptorWithKey:@"priceInCents"
                                                                    ascending:YES];
    NSArray *sortedItems = [self.items sortedArrayUsingDescriptors:@[sortByPriceInCentsAsc]];
    self.items = [NSMutableArray arrayWithArray:sortedItems];
}

- (void)sortItemsByPriceInCentsDesc {
    NSSortDescriptor *sortByPriceInCentsDesc = [NSSortDescriptor sortDescriptorWithKey:@"priceInCents"
                                                                            ascending:NO];
    NSArray *sortedItems = [self.items sortedArrayUsingDescriptors:@[sortByPriceInCentsDesc]];
    self.items = [NSMutableArray arrayWithArray:sortedItems];
}

- (NSArray *)allItemsWithName:(NSString *)name {
    NSPredicate *namePredicate = [NSPredicate predicateWithFormat:@"name LIKE %@", name];
    NSArray *filteredArray = [self.items filteredArrayUsingPredicate:namePredicate];
    return filteredArray;
}

- (NSArray *)allItemsWithMinimumPriceInCents:(NSUInteger)priceInCents {
    NSPredicate *minimumPriceInCentsCents = [NSPredicate predicateWithFormat:@"priceInCents >= %lu", priceInCents];
    NSArray *filteredArray = [self.items filteredArrayUsingPredicate:minimumPriceInCentsCents];
    return filteredArray;
}

- (NSArray *)allItemsWithMaximumPriceInCents:(NSUInteger)priceInCents {
    NSPredicate *maximumPriceInCentsPredicate = [NSPredicate predicateWithFormat:@"priceInCents <= %lu", priceInCents];
    NSArray *filteredArray = [self.items filteredArrayUsingPredicate:maximumPriceInCentsPredicate];
    return filteredArray;
}


@end
