//
//  MergeSortViewController.h
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/17/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataViewController.h"

@interface MergeSortViewController : DataViewController

@property (weak, nonatomic) IBOutlet UILabel* description;

@property (weak, nonatomic) IBOutlet UIImageView* bestCaseImage;

@property (weak, nonatomic) IBOutlet UIImageView* averageCaseImage;

@property (weak, nonatomic) IBOutlet UIImageView* worstCaseImage;

@property (weak, nonatomic) IBOutlet UIImageView* spaceImage;

-(IBAction) overallDescription:(UIButton*)sender;

@end
