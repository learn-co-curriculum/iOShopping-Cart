# 2/12/14

Making a shopping cart.

  1. Create an `FISCart` class. This class should have only one property
    * (NSMutableArray *)items;

  2. Create an `FISItem` class. This is a more interesting class. It has a two properties:
    * (NSString *)name
    * (NSNumber *)price

  3. `FISCart` can do a few things:
    * (NSNumber *)total
    * (NSNumber *)numOfItems
    * (void)addItem:(FISItem *)newItems;
    * (void)removeItem:(FISItem *)itemToRemove;
    * (NSArray *)itemsSortedByName;
    * (NSArray *)itemsSortedByPrice;
    * (NSArray *)itemsWithName:(NSString *)name;
    * (NSArray *)itemsMoreExpensiveThan:(NSNumber *)price;

  4. Make sure these all work!

  5. Extra Credit: override the `(NSString *)description` method to print out a nicely formatted cart. Remember to include the price for every item and the total at the bottom. Also! If you have more than one item that are the same (have the same name and price) then list a quantity...don't just list the same thing twice.
