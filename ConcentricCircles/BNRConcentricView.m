//
//  BNRConcentricView.m
//  ConcentricCircles
//
//  Created by Rahul Phadnis on 10/29/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "BNRConcentricView.h"

@implementation BNRConcentricView

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + (bounds.size.width/2.0);
    center.y = bounds.origin.y + (bounds.size.height/2.0);
    
    float radius = (MIN (bounds.size.height, bounds.size.width)-10)/2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height)/ 2.0;
    
    UIBezierPath *path =[UIBezierPath new];
    path.lineWidth=5;
    //set the color
    [[UIColor greenColor] setStroke];
    //path.co
    
    for (float currentRadius = maxRadius ; currentRadius >0 ; currentRadius=currentRadius-20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0 endAngle:M_PI*2 clockwise:YES];
    }
    
    
    
    //draw the line
    [path stroke];
}


@end
