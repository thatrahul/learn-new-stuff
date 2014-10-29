//
//  BNRContainer.m
//  RandomItem
//
//  Created by Rahul Phadnis on 10/28/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

-(instancetype) initWithCapacity: (int) capacity {
    return [self initWithCapacityAndName:capacity name:@"Container"];
}

-(instancetype) initWithCapacityAndName: (int)capacity name: (NSString*) name {
    self = [super initWithItemName:name];
    if (self) {
        subItems = [[NSMutableArray alloc] initWithCapacity:capacity];
    }
    return self;
}

-(void) addItem: (BNRItem*) item {
    [subItems addObject:item ];
}

- (int) costInDollars {
    int totalCost = 0;
    for (BNRItem *item in subItems) {
        totalCost = totalCost + item.costInDollars;
    }
    return totalCost;
}

- (void)dealloc {
    NSLog(@"deallocating now");
}

@end
