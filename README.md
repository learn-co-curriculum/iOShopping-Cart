---
  tags: oop, beginner, methods, arrays, iteration, todo
  languages: objc
---

Making a shopping cart.

  1. Create an `FISCart` class. This class should have only one property. This
     property is going to be an `NSMutableArray` where you will put all of your
     items. 

    * (NSMutableArray *)items;

  2. Create an `FISItem` class. This is a more interesting class. It has a two properties:
    * (NSString *)name
    * (NSNumber *)price

  3. `FISCart` can do a few things. 
    * `(NSNumber *)total`
      * Returns the total cost of the cart
    * `(NSNumber *)numOfItems`
      * returns how many items are in your cart.
    * `(void)addItem:(FISItem *)newItem`
      * Adds an item to the cart array.
    * `(void)removeItem:(FISItem *)itemToRemove`
      * removes the item from the cart array.
    * `(NSArray *)itemsSortedByName`
      * returns an array of the items, sorted by name.
    * `(NSArray *)itemsSortedByPrice`
      * returns an array of the items, sorted by price.
    * `(NSArray *)itemsWithName:(NSString *)name`
      * returns an array of items with the name provided.
    * `(NSArray *)itemsMoreExpensiveThan:(NSNumber *)price`
      * returns an array of items more expensive then the provided price

  4. Make sure these all work!

  5. Extra Credit: override the `(NSString *)description` method to print out a nicely formatted cart. Remember to include the price for every item and the total at the bottom. Also! If you have more than one item that are the same (have the same name and price) then list a quantity...don't just list the same thing twice.
