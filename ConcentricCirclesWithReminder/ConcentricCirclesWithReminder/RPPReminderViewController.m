//
//  RPPReminderViewController.m
//  ConcentricCirclesWithReminder
//
//  Created by Rahul Phadnis on 11/4/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "RPPReminderViewController.h"
#import <UIKit/UIKit.h>

@interface RPPReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation RPPReminderViewController
-(IBAction) addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}
@end
