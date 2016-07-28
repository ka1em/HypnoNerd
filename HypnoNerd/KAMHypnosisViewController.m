//
//  KAMHypnosisViewController.m
//  HypnoNerd
//
//  Created by ka1em on 16-7-27.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import "KAMHypnosisViewController.h"
#import "KAMHypnosisView.h"

@implementation KAMHypnosisViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        //
        self.tabBarItem.title = @"Hypnotize";
        
        //
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        self.tabBarItem.image = i;
    }
    
    return self;
}
- (void)loadView
{
    //创建一个KAMHypnosisView对象
    KAMHypnosisView *backgroundView = [[KAMHypnosisView alloc]init];
    
    //将BNRHypnosisView对象赋给视图控制器的view属性
    self.view = backgroundView;
}
@end
