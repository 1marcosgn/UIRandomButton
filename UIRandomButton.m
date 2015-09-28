//
//  UIRandomButton.m
//  NSCButton
//
//  Created by Marcos on 9/28/15.
//  Copyright (c) 2015 Garcia, Marcos. All rights reserved.
//

#import "UIRandomButton.h"

@implementation UIRandomButton

-(id)initWithFrame:(CGRect)frame andColor:(NSCButtonBaseColor)inBaseColor
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self setupButtonWithColor:inBaseColor];
    }
    
    return self;
}

-(void)setupButtonWithColor:(NSCButtonBaseColor)inBaseColor
{
    self.titleLabel.textColor = [UIColor whiteColor];
    
    switch (inBaseColor) {
        case NSCButtonBaseColorTurquoise:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorTurquoise];
            break;
        case NSCButtonBaseColorEmerald:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorEmerald];
            break;
        case NSCButtonBaseColorPeterRiver:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorPeterRiver];
            break;
        case NSCButtonBaseColorAmethyst:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorAmethyst];
            break;
        case NSCButtonBaseColorWetAsphalt:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorWetAsphalt];
            break;
        case NSCButtonBaseColorSunFlower:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorSunFlower];
            break;
        case NSCButtonBaseColorCarrot:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorCarrot];
            break;
        case NSCButtonBaseColorAlizarin:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorAlizarin];
            break;
        case NSCButtonBaseColorClouds:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorClouds];
            break;
        case NSCButtonBaseColorConcrete:
            self.backgroundColor = [self theNewColor:NSCButtonBaseColorConcrete];
            break;
            
        default:
            break;
    }
}

-(NSArray *)randomColor:(int)randomAverage
{
    NSMutableArray *randomColorArrayElements = [[NSMutableArray alloc]init];
    
    float a,b,c = 0.0f;
    
    a = rand() % randomAverage;
    b = rand() % randomAverage;
    c = rand() % randomAverage;
    
    [randomColorArrayElements addObject:@(a)];
    [randomColorArrayElements addObject:@(b)];
    [randomColorArrayElements addObject:@(c)];
    
    return [randomColorArrayElements copy];
}


-(UIColor *)randomColorArray:(NSArray *)colorsArray
{
    UIColor *newColor = [UIColor colorWithRed:[colorsArray[0]intValue]/255.0f green:[colorsArray[1]intValue]/255.0f blue:[colorsArray[2]intValue]/255.0f alpha:1.0f];
    return newColor;
}

-(UIColor *)theNewColor:(int)colorToPerform
{
    return [self randomColorArray:[self randomColor:colorToPerform * 100 - 250]];
}


@end
