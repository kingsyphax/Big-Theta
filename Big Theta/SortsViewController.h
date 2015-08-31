//
//  SortsViewController.h
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/21/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarController.h"

@interface SortsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView* selectionImage;

@property (weak, nonatomic) IBOutlet UIImageView* insertionImage;

@property (weak, nonatomic) IBOutlet UIImageView* mergeImage;

@property (weak, nonatomic) IBOutlet UIImageView* quickImage;

@property (weak, nonatomic) IBOutlet UIImageView* heapImage;

@property (weak, nonatomic) IBOutlet UIImageView* timImage;

@end
