//
//  TextFilterToolbar.m
//  StoryAppProto
//
//  Created by Marco Argiolas on 31/07/13.
//  Copyright (c) 2013 Marco Argiolas. All rights reserved.
//

#import "TextFilterToolbar.h"
#import "GlobalDefines.h"

@implementation TextFilterToolbar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.frame = frame;
        alignmentButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width/5, FILTER_TOOLBAR_HEIGHT)];
        [alignmentButton setBackgroundColor:TEXT_FILTER_COLOR];
        [alignmentButton setImage:[UIImage imageNamed:@"Btn-CreateText-Align-Left.png"] forState:UIControlStateNormal];
        [alignmentButton addTarget:self action:@selector(alignmentButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:alignmentButton];
        
        fontColorButton = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width/5, 0, self.frame.size.width/5, FILTER_TOOLBAR_HEIGHT)];
        [fontColorButton setBackgroundColor:TEXT_FILTER_COLOR];
        [fontColorButton setImage:[UIImage imageNamed:@"Btn-CreateText-Eyedropper.png"] forState:UIControlStateNormal];
        [fontColorButton addTarget:self action:@selector(fontColorButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:fontColorButton];
        
        fontsButton = [[UIButton alloc] initWithFrame:CGRectMake((self.frame.size.width/5)*2, 0, self.frame.size.width/5, FILTER_TOOLBAR_HEIGHT)];
        [fontsButton setBackgroundColor:TEXT_FILTER_COLOR];
        [fontsButton setImage:[UIImage imageNamed:@"Btn-CreateText-Font.png"] forState:UIControlStateNormal];
        [fontsButton addTarget:self action:@selector(fontsButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:fontsButton];
        
        bkColorButton = [[UIButton alloc] initWithFrame:CGRectMake((self.frame.size.width/5)*3, 0, self.frame.size.width/5, FILTER_TOOLBAR_HEIGHT)];
        [bkColorButton setBackgroundColor:TEXT_FILTER_COLOR];
        [bkColorButton setImage:[UIImage imageNamed:@"Btn-CreateText-Color.png"] forState:UIControlStateNormal];
        [bkColorButton addTarget:self action:@selector(bkColorButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:bkColorButton];
        
        fontSizeButton = [[UIButton alloc] initWithFrame:CGRectMake((self.frame.size.width/5)*4, 0, self.frame.size.width/5, FILTER_TOOLBAR_HEIGHT)];
        [fontSizeButton setBackgroundColor:TEXT_FILTER_COLOR];
        [fontSizeButton setImage:[UIImage imageNamed:@"Btn-CreateText-FontSize.png"] forState:UIControlStateNormal];
        [fontSizeButton addTarget:self action:@selector(fontSizeButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:fontSizeButton];
        
    }
    return self;
}

-(void)alignmentButtonPressed
{
    NSLog(@"ALIGNMENT BUTTON");
}

-(void)fontColorButtonPressed
{
    NSLog(@"FONT COLOR BUTTON");
}
-(void)fontsButtonPressed
{
    NSLog(@"FONTS BUTTON");
}
-(void)bkColorButtonPressed
{
    NSLog(@"BKCOLOR BUTTON");
}
-(void)fontSizeButtonPressed
{
    NSLog(@"FONT SIZE BUTTON");
}
@end
