//
//  GrowthViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/21/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "GrowthViewController.h"

@implementation GrowthViewController

@synthesize graphImage;
@synthesize constantImage;
@synthesize linearImage;
@synthesize weirdImage;
@synthesize quadraticImage;

-(id) init {
    self = [super init];
    
    selected = 0;
    
    graphImage.image = [UIImage imageNamed:@"GRAPHS-generic.jpg"];
    
    constantImage.image = [UIImage imageNamed:@"O_1_bare.jpg"];
    linearImage.image = [UIImage imageNamed:@"O_n_bare.jpg"];
    weirdImage.image = [UIImage imageNamed:@"O_n_log_n_bare.jpg"];
    quadraticImage.image = [UIImage imageNamed:@"O_n^2_bare.jpg"];
    
    images = [NSArray arrayWithObjects:[UIImageView alloc], constantImage, linearImage, weirdImage, quadraticImage, nil];
    graph_files = [NSArray arrayWithObjects:@"GRAPHS-generic.jpg", @"GRAPHS-1.jpg", @"GRAPHS-x.jpg", @"GRAPHS-x_log_x.jpg", @"GRAPHS-x^2.jpg", nil];
    files_bare = [NSArray arrayWithObjects:@"", @"O_1_bare.jpg", @"O_n_bare.jpg", @"O_n_log_n_bare.jpg", @"O_n^2_bare.jpg", nil];
    files_full = [NSArray arrayWithObjects:@"", @"O_1.jpg", @"O_n.jpg", @"O_n_log_n.jpg", @"O_n^2.jpg", nil];
    
    return self;
}

- (void)viewDidLoad {
    [self init];
    
    [super viewDidLoad];

    graphImage.image = [UIImage imageNamed:@"GRAPHS-generic.jpg"];
    
    constantImage.image = [UIImage imageNamed:@"O_1_bare.jpg"];
    linearImage.image = [UIImage imageNamed:@"O_n_bare.jpg"];
    weirdImage.image = [UIImage imageNamed:@"O_n_log_n_bare.jpg"];
    quadraticImage.image = [UIImage imageNamed:@"O_n^2_bare.jpg"];
}

-(void) viewWillAppear:(BOOL)animated {
    [self select:0];
    
    graphImage.image = [UIImage imageNamed:@"GRAPHS-generic.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) select:(int) which {
    BOOL canDoNow = [images count] > 0;
    
    for (int i = 1; i < 5; i++) {
        if (i != which) {
            if (canDoNow) ((UIImageView*)[images objectAtIndex:i]).image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", [files_bare objectAtIndex:i]]];
        }
    }
    if (which > 0 && which != selected) {
        if (canDoNow) ((UIImageView*)[images objectAtIndex:which]).image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", [files_full objectAtIndex:which]]];
        
        selected = which;
    } else if (which == selected) {
        if (canDoNow) ((UIImageView*)[images objectAtIndex:which]).image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", [files_bare objectAtIndex:which]]];
        
        selected = 0;
    }
    
    graphImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", [graph_files objectAtIndex:selected]]];
}

-(IBAction)selectConstant:(UIButton*)sender {
    [self select:1];
}

-(IBAction)selectLinear:(UIButton*)sender {
    [self select:2];
}

-(IBAction)selectWeird:(UIButton*)sender {
    [self select:3];
}

-(IBAction)selectQuadratic:(UIButton*)sender {
    [self select:4];
}

@end
