//
//  IncidenceListViewController.h
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/17/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataViewController.h"

@interface IncidenceListViewController : DataViewController

@property (weak, nonatomic) IBOutlet UILabel* description;

@property (weak, nonatomic) IBOutlet UIImageView* addVertexImage;

@property (weak, nonatomic) IBOutlet UIImageView* addEdgeImage;

@property (weak, nonatomic) IBOutlet UIImageView* queryImage;

@property (weak, nonatomic) IBOutlet UIImageView* removeVertexImage;

@property (weak, nonatomic) IBOutlet UIImageView* removeEdgeImage;

@property (weak, nonatomic) IBOutlet UIImageView* spaceImage;

-(IBAction) overallDescription:(UIButton*)sender;

@end
