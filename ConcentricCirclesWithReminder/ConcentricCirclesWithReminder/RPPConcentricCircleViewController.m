//
//  RPPConcentricCircleViewController.m
//  ConcentricCirclesWithReminder
//
//  Created by Rahul Phadnis on 11/4/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "RPPConcentricCircleViewController.h"
# import "BNRConcentricView.h"

@implementation RPPConcentricCircleViewController
-(void) loadView
{
    //create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRConcentricView *concentricView =[[BNRConcentricView alloc] initWithFrame:frame];
    self.view = concentricView;
}

@end
