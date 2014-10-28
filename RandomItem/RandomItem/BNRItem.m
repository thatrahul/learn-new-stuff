//
//  BNRItem.m
//  RandomItem
//
//  Created by Rahul Phadnis on 10/27/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
// initializers
-(instancetype) initWithItemName: (NSString*) name
                   costInDollars:(int) value
                    serialNumner: (NSString*) sno {
    self =[super init];
    if (self) {
        //assign the values to instance variables
        _itemName = name;
        _serialNumber = sno;
        _costInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

-(instancetype) initWithItemName: (NSString*) name {
    return [self initWithItemName:name costInDollars:0 serialNumner:@""];
}

-(instancetype) init {
    return [self initWithItemName:@""];
}

- (void) setItemName : (NSString *) name
{
    _itemName = name;
    
}

- (NSString*) itemName
{
    return _itemName;
}

- (void) setSerialNumber : (NSString *) sno {
    _serialNumber = sno;
}

- (NSString*) serialNumber {
    return _serialNumber;
}

- (void) setCostInDollars : (int) cost {
    _costInDollars = cost;
}
- (int) costInDollars {
    return _costInDollars;
}

- (NSDate *) dateCreated {
    return _dateCreated;
}
- (NSString *) description {
    NSString *description = [[NSString alloc] initWithFormat:@"[name:%@], [serialNumber:%@], %@, [cost:%d]",self.itemName, self.serialNumber,[self dateCreated], [self costInDollars]];
                             
   return description;
                             
}

@end
