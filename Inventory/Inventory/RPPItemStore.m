//
//  RPPItemStore.m
//  Inventory
//
//  Created by Rahul Phadnis on 11/5/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "RPPItemStore.h"
#import "BNRItem.h"
// this is a class extension.
// read more at https://developer.apple.com/library/ios/documentation/cocoa/conceptual/programmingwithobjectivec/CustomizingExistingClasses/CustomizingExistingClasses.html
@interface RPPItemStore()
@property (nonatomic) NSMutableArray *privateItems;
@end

@implementation RPPItemStore


+ (instancetype) sharedStore {
    static RPPItemStore *itemStore;
    
    if (!itemStore) {
        itemStore = [[self alloc] initPrivate];
    }
    return itemStore;
    
}

+ (instancetype) init {
    [NSException raise:@"Singleton" format:@"Use + [RPPItemStore sharedStore]"];
    //TODO: Why return nil when we are raising an exception here
    return nil;
}

- (BNRItem *) createItem {
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}

- (NSArray *) allItems {
    return [self.privateItems copy];
}

- (BNRItem *) itemAtIndex: (int) index {
    return [self.privateItems objectAtIndex:index];
}

//private initializer defined only in .m file.
- (instancetype) initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [NSMutableArray new];
    }
    return self;
}

@end
