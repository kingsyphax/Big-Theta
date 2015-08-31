//
//  SelectionSortViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/17/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "SelectionSortViewController.h"

@implementation SelectionSortViewController

@synthesize description;
@synthesize bestCaseImage;
@synthesize averageCaseImage;
@synthesize worstCaseImage;
@synthesize spaceImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bestCaseImage.image = [UIImage imageNamed:@"O_n^2.jpg"];
    
    averageCaseImage.image = [UIImage imageNamed:@"O_n^2.jpg"];
    
    worstCaseImage.image = [UIImage imageNamed:@"O_n^2.jpg"];
    
    spaceImage.image = [UIImage imageNamed:@"O_1.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) overallDescription:(UIButton *)sender {
    if (description.hidden) {
        [description setAlpha:0.0f];
        description.hidden = NO;
        
        [UIView animateWithDuration:1.0f animations:^{
            [description setAlpha:1.0f];
        }];
    } else {
        [UIView animateWithDuration:1.0f animations:^{
            [description setAlpha:0.0f];
        } completion:^(BOOL finished){
            description.hidden = YES;
        }];
    }
}

@end
