//
//  BNRItem.h
//  RandomItem
//
//  Created by Rahul Phadnis on 10/27/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
// property definitions
{
    NSString *_itemName;
    NSString *_serialNumber;
    NSDate *_dateCreated;
    int _costInDollars;

}
//initializers
-(instancetype) initWithItemName: (NSString*) name;
-(instancetype) initWithItemName: (NSString*) name
                   costInDollars:(int) value
                    serialNumner: (NSString*) sno;

// API definition
- (void) setItemName : (NSString *) name;

- (NSString*) itemName;

- (void) setSerialNumber : (NSString *) sno;

- (NSString*) serialNumber;

- (void) setCostInDollars : (int) cost;

- (int) costInDollars;

- (NSDate *) dateCreated;

//class methods (aka static methods in java)
+ (BNRItem *) randomItem;


@end
