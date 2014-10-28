//
//  main.m
//  RandomItem
//
//  Created by Rahul Phadnis on 10/27/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items addObject:@"Four"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        for(NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
        
        BNRItem *myItem = [[BNRItem alloc] init];
        [myItem setItemName:@"Macbook Pro"];
        [myItem setSerialNumber:@"16643"];
        myItem.costInDollars = 700;
        //myItem.dateCreated = [[NSDate alloc]init];
        
        NSLog(@"[%@], %@, %@ %d",[myItem itemName],[myItem serialNumber],[myItem dateCreated], [myItem costInDollars]);
        
        NSLog(@"[name:%@], [serialNumber:%@], %@ %d",myItem.itemName, myItem.serialNumber,[myItem dateCreated], [myItem costInDollars]);
        
        NSLog(@"[description:%@]",myItem.description);
        
        NSLog(@"%@",myItem.description);
        
        {
            
            BNRItem *item1 = [[BNRItem alloc] initWithItemName:@"Computer" costInDollars:1500 serialNumner:@"Test123"];
            NSLog(@"item1 : %@", item1);
            
            
            BNRItem *item2 = [[BNRItem alloc] initWithItemName:@"ipad"];
            NSLog(@"item2:%@", item2);
            
            
        }
        
    }
    return 0;
}
