//
//  LinkedViewController.h
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 5/6/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataViewController.h"

@interface LinkedViewController : DataViewController

@property (weak, nonatomic) IBOutlet UIImageView* accessImage;

@property (weak, nonatomic) IBOutlet UIImageView* searchImage;

@property (weak, nonatomic) IBOutlet UIImageView* insertionImage;

@property (weak, nonatomic) IBOutlet UIImageView* deletionImage;

@property (weak, nonatomic) IBOutlet UIImageView* spaceImage;

@end
