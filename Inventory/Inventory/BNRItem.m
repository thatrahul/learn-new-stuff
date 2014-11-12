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
                    serialNumber: (NSString*) sno {
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
    return [self initWithItemName:name costInDollars:0 serialNumber:@""];
}

-(instancetype) initWithItemName: (NSString*) name
                    serialNumber: (NSString*) sno {
    return [self initWithItemName:name costInDollars:-1 serialNumber:sno];
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
//- (NSString *) description {
//    NSString *description = [[NSString alloc] initWithFormat:@"[name:%@], [serialNumber:%@], %@, [cost:%d]",self.itemName, self.serialNumber,[self dateCreated], [self costInDollars]];
//                             
//   return description;
//                             
//}

- (NSString *) description {
    NSString *description = [[NSString alloc] initWithFormat:@"%@ (%@) :(Worth $%d)",self.itemName, self.serialNumber, [self costInDollars]];
    
    return description;
    
}


+ (BNRItem *) randomItem {
    
    NSArray *adjectiveList = @[@"Fluffy", @"Bright", @"Shiny"];
    NSArray *nounList = @[@"Bear", @"Spork", @"Mac", @"Dell",@"Windows"];
    int randomInt = arc4random();
    int adjectiveIndex = randomInt % [adjectiveList count];
    int nounIndex = randomInt % [nounList count];
    
    NSString *name = [NSString stringWithFormat:@"%@ %@", [adjectiveList objectAtIndex:adjectiveIndex],
    [nounList objectAtIndex:nounIndex]];
    
    NSString *serialNumber = [NSString stringWithFormat:@"%c%c%c%c" ,'0' + arc4random()%10, 'A' + arc4random()%26,'0' + arc4random()%10, 'A' + arc4random()%26];
    
    int value = arc4random() % 100;

    BNRItem *item = [[BNRItem alloc] initWithItemName:name costInDollars:value serialNumber:serialNumber];
    return item;
}

@end
