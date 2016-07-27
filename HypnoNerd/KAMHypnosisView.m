//
//  KAMHypnosisView.m
//  Hypnosister
//
//  Created by ka1em on 16-7-26.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import "KAMHypnosisView.h"

@interface KAMHypnosisView ()

@property (strong, nonatomic) UIColor *circleColor;

@end

@implementation KAMHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    //根据bounds计算中心点
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    //根据视图宽和高中的较小值计算圆形的半径
//    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    
    //使最外层圆形成为视图的外接圆
    float maxRudis = hypot(bounds.size.width, bounds.size.height) / 2.0;
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
//    以中点为圆心，radius为半径，定义一个0到M_PI ＊ 2.0弧度的路径（整圆）
//    [path addArcWithCenter:center
//                    radius:radius
//                startAngle:0.0
//                  endAngle:M_PI * 2.0
//                 clockwise:YES];
    
    for (float currentRadius = maxRudis; currentRadius > 0 ; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x+currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
//    设置颜色
//    [[UIColor blackColor] setStroke];
    [self.circleColor setStroke];
    
    path.lineWidth = 10;
    
//    绘制路径
    [path stroke];
}

//KAMHypnosisView被触摸时会收到消息
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched", self);
    
    //获取三个0-1之间的数字
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
}

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}
@end
