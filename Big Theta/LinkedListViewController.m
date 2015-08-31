
//
//  LinkedListViewController.m
//  Big Theta
//
//  Created by Youdong on 5/6/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "LinkedListViewController.h"

@implementation LinkedListViewController

@synthesize accessImage;
@synthesize searchImage;
@synthesize insertionImage;
@synthesize deletionImage;
@synthesize spaceImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    accessImage.image = [UIImage imageNamed:@"O_n_yellow.jpg"];
    searchImage.image = [UIImage imageNamed:@"O_n_yellow.jpg"];
    insertionImage.image = [UIImage imageNamed:@"O_1.jpg"];
    deletionImage.image = [UIImage imageNamed:@"O_1.jpg"];
    spaceImage.image = [UIImage imageNamed:@"O_1.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
