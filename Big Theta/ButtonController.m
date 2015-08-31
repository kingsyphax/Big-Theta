//
//  ButtonController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 5/7/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "ButtonController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ButtonController

- (void)drawRect:(CGRect)rect {
    [[self layer] setBorderWidth:2.0f];
    [[self layer] setBorderColor:[UIColor lightGrayColor].CGColor];
    
    self.layer.cornerRadius = 8.0f;
    self.layer.masksToBounds = NO;
    self.layer.borderWidth = 1.0f;
    
    self.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.layer.shadowOpacity = 0.8;
    self.layer.shadowRadius = 12;
    self.layer.shadowOffset = CGSizeMake(12.0f, 12.0f);
}


@end
