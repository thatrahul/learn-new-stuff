//
//  main.m
//  RandomItem
//
//  Created by Rahul Phadnis on 10/27/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

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
            
            BNRItem *item1 = [[BNRItem alloc] initWithItemName:@"Computer" costInDollars:1500 serialNumber:@"Test123"];
            NSLog(@"item1 : %@", item1);
            
            
            BNRItem *item2 = [[BNRItem alloc] initWithItemName:@"ipad"];
            NSLog(@"item2:%@", item2);
            
            
        }
        
        NSLog(@"Random stuff");
        
        int size = 10000;
        NSMutableArray *bnrItems = [[NSMutableArray alloc] initWithCapacity:size];
        
        for (int i=0; i<size; i++) {
            
            BNRItem *randomItem = [BNRItem randomItem];
            [bnrItems addObject:randomItem];
            
        }
        for (BNRItem *item in bnrItems) {
            NSLog(@"%@", item);
        }

        NSLog(@"BNRContainer stuff");
        
        BNRContainer *container = [[BNRContainer alloc] initWithCapacity:size];
        
        for (BNRItem *item in bnrItems) {
            [container addItem:item];
        }
        
        int total = container.costInDollars;
        
        NSLog(@"Total cost:%d and name %@", total, container.itemName);
        
        container = nil;
        
    }
    return 0;
}
