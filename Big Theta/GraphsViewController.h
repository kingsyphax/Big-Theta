//
//  GraphsViewController.h
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/21/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GraphsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView* adjacencyListImage;

@property (weak, nonatomic) IBOutlet UIImageView* adjacencyMatrixImage;

@property (weak, nonatomic) IBOutlet UIImageView* incidenceListImage;

@property (weak, nonatomic) IBOutlet UIImageView* incidenceMatrixImage;

@end
