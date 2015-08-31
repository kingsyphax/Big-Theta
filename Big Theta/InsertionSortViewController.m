//
//  InsertionSortViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/17/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "InsertionSortViewController.h"
#import "TabBarController.h"
#import "AppDelegate.h"

@implementation InsertionSortViewController

@synthesize description;
@synthesize bestCaseImage;
@synthesize averageCaseImage;
@synthesize worstCaseImage;
@synthesize spaceImage;
@synthesize bestCaseDetails;
@synthesize worstCaseDetails;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bestCaseImage.image = [UIImage imageNamed:@"O_n.jpg"];
    
    averageCaseImage.image = [UIImage imageNamed:@"O_n^2.jpg"];
    
    worstCaseImage.image = [UIImage imageNamed:@"O_n^2.jpg"];
    
    spaceImage.image = [UIImage imageNamed:@"O_1.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)bestCaseDescription:(UIButton *)sender {
    if (bestCaseDetails.hidden) {
        if (!worstCaseDetails.hidden) {
            [UIView animateWithDuration:0.5f animations:^{
                [worstCaseDetails setAlpha:0.0f];
            } completion:^(BOOL finished){
                worstCaseDetails.hidden = YES;
                
                [bestCaseDetails setAlpha:0.0f];
                bestCaseDetails.hidden = NO;
                
                [UIView animateWithDuration:0.5f animations:^{
                    [bestCaseDetails setAlpha:1.0f];
                }];
            }];
        } else {
            [bestCaseDetails setAlpha:0.0f];
            bestCaseDetails.hidden = NO;
            
            [UIView animateWithDuration:1.0f animations:^{
                [bestCaseDetails setAlpha:1.0f];
            }];
        }
    } else {
        [UIView animateWithDuration:1.0f animations:^{
            [bestCaseDetails setAlpha:0.0f];
        } completion:^(BOOL finished){
            bestCaseDetails.hidden = YES;
        }];
    }
}

-(IBAction)worstCaseDescription:(UIButton *)sender {
    if (worstCaseDetails.hidden) {
        if (!bestCaseDetails.hidden) {
            [UIView animateWithDuration:0.5f animations:^{
                [bestCaseDetails setAlpha:0.0f];
            } completion:^(BOOL finished){
                bestCaseDetails.hidden = YES;
                
                [worstCaseDetails setAlpha:0.0f];
                worstCaseDetails.hidden = NO;
                
                [UIView animateWithDuration:0.5f animations:^{
                    [worstCaseDetails setAlpha:1.0f];
                }];
            }];
        } else {
            [worstCaseDetails setAlpha:0.0f];
            worstCaseDetails.hidden = NO;
        
            [UIView animateWithDuration:1.0f animations:^{
                [worstCaseDetails setAlpha:1.0f];
            }];
        }
    } else {
        [UIView animateWithDuration:1.0f animations:^{
            [worstCaseDetails setAlpha:0.0f];
        } completion:^(BOOL finished){
            worstCaseDetails.hidden = YES;
        }];
    }
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
