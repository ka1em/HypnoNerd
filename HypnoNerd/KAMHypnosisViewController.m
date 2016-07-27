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

- (void)loadView
{
    //创建一个KAMHypnosisView对象
    KAMHypnosisView *backgroundView = [[KAMHypnosisView alloc]init];
    
    //将BNRHypnosisView对象赋给视图控制器的view属性
    self.view = backgroundView;
}
@end
