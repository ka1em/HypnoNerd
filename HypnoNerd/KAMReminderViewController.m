//
//  KAMReminderViewController.m
//  HypnoNerd
//
//  Created by ka1em on 16-7-28.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import "KAMReminderViewController.h"

@interface KAMReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *dataPicker;

@end

@implementation KAMReminderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"BNRReminderViewController loaded its view");
}

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.dataPicker.date;
    NSLog(@"Setting a reminder for %@", date);
}


@end
