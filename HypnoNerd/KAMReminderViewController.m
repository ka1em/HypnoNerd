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

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        //设置标签项的标题
        self.tabBarItem.title = @"Reminder";
        
        //从图像文件创建一个UIImage对象
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        
        self.tabBarItem.image = i;
    }
    
    return self;
}
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
