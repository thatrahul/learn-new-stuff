//
//  RPPItemStore.h
//  Inventory
//
//  Created by Rahul Phadnis on 11/5/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;

@interface RPPItemStore : NSObject

@property (nonatomic,readonly,copy, getter=allItems) NSArray *allItems;

+ (instancetype) sharedStore;
- (BNRItem *) createItem;

- (BNRItem *) itemAtIndex: (int) index;


@end
