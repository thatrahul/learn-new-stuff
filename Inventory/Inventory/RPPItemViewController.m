//
//  BNRItemViewController.m
//  Inventory
//
//  Created by Rahul Phadnis on 11/5/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "RPPItemViewController.h"
#import "RPPItemStore.h"
#import "BNRItem.h"

@implementation RPPItemViewController

- (instancetype) init
{
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self) {
        for(int i=0 ; i<10; i++) {
            [[RPPItemStore sharedStore] createItem];
        }
        
    }
    
    return self;
}

-(instancetype)initWithStyle:(UITableViewStyle)style {
    return [self init];
}

- (NSInteger) tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    NSInteger count = [[[RPPItemStore sharedStore] allItems] count];
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //create an instance of UITableViewCell
    // UITableViewCell *row = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"UTTableViewCell"];
    
    UITableViewCell *row = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
   // NSArray *items = [[RPPItemStore sharedStore] allItems];
    
    BNRItem *item = [[RPPItemStore sharedStore] itemAtIndex: (int) indexPath.row ];
    row.textLabel.text = [item description];
    return row;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}
@end
