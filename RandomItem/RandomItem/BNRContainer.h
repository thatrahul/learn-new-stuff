//
//  BNRContainer.h
//  RandomItem
//
//  Created by Rahul Phadnis on 10/28/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    int initialCapacity;
    NSMutableArray *subItems;
}

-(instancetype) initWithCapacity: (int)capacity;
-(instancetype) initWithCapacityAndName: (int)capacity name: (NSString*) name;

-(void) addItem: (BNRItem*) item;


@end
