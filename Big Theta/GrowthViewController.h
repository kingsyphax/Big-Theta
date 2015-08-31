//
//  GrowthViewController.h
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/21/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GrowthViewController : UIViewController {
    @private
    int selected;
    NSArray *images;
    NSArray *graph_files;
    NSArray *files_bare, *files_full;
}

@property (weak, nonatomic) IBOutlet UIImageView* graphImage;

@property (weak, nonatomic) IBOutlet UIImageView* constantImage;

@property (weak, nonatomic) IBOutlet UIImageView* linearImage;

@property (weak, nonatomic) IBOutlet UIImageView* weirdImage;

@property (weak, nonatomic) IBOutlet UIImageView* quadraticImage;

-(void) select:(int) which;

-(IBAction)selectConstant:(UIButton*)sender;

-(IBAction)selectLinear:(UIButton*)sender;

-(IBAction)selectWeird:(UIButton*)sender;

-(IBAction)selectQuadratic:(UIButton*)sender;

@end
