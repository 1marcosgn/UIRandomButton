//
//  UIRandomButton.h
//  NSCButton
//
//  Created by Marcos on 9/28/15.
//  Copyright (c) 2015 Garcia, Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FUIButton.h>

typedef NS_ENUM(NSInteger, NSCButtonBaseColor){
    
    NSCButtonBaseColorTurquoise,
    NSCButtonBaseColorEmerald,
    NSCButtonBaseColorPeterRiver,
    NSCButtonBaseColorAmethyst,
    NSCButtonBaseColorWetAsphalt,
    NSCButtonBaseColorSunFlower,
    NSCButtonBaseColorCarrot,
    NSCButtonBaseColorAlizarin,
    NSCButtonBaseColorClouds,
    NSCButtonBaseColorConcrete,
    
};

@interface UIRandomButton : UIButton

-(id)initWithFrame:(CGRect)frame andColor:(NSCButtonBaseColor)inBaseColor;

@end
