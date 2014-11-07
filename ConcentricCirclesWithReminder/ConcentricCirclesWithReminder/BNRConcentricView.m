//
//  BNRConcentricView.m
//  ConcentricCircles
//
//  Created by Rahul Phadnis on 10/29/14.
//  Copyright (c) 2014 Rahul Phadnis. All rights reserved.
//

#import "BNRConcentricView.h"

@interface BNRConcentricView ()

@property (strong, nonatomic, setter=mySetColor:) UIColor *circleColor;

@end

@implementation BNRConcentricView

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor purpleColor];
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
    
    //float radius = (MIN (bounds.size.height, bounds.size.width)-10)/2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height)/ 2.0;
    
    UIBezierPath *path =[UIBezierPath new];
    path.lineWidth=5;
    //set the color
    [self.circleColor setStroke];
    //path.co
    
    for (float currentRadius = maxRadius ; currentRadius >0 ; currentRadius=currentRadius-20) {
        //move the pen
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        //add the circle
        [path addArcWithCenter:center radius:currentRadius startAngle:0 endAngle:M_PI*2 clockwise:YES];
    }
    
    
    
    //draw the line
    [path stroke];
}
//event when fingers touch the screen
- (void)touchesBegan:(NSSet *)touches
           withEvent:(UIEvent *)event {
    NSLog(@"%@ was touched", self);
    
    float red = (arc4random() % 100)/100.0;
    float green = (arc4random() % 100)/100.0;
    float blue = (arc4random() % 100)/100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    self.circleColor=randomColor;
    
}

-(void) mySetColor : (UIColor *) newColor
{
    _circleColor = newColor;
    NSLog(@"Updated color %@", _circleColor);
    [self setNeedsDisplay];
}

@end
