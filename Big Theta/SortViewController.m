//
//  SortViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 5/7/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "SortViewController.h"
#import "TabBarController.h"

@implementation SortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) constantGrowth:(UIButton*) sender {
    [((TabBarController*)[[self parentViewController] parentViewController]) growthWithSelection:1];
}

-(IBAction) linearGrowth:(UIButton*) sender {
    [((TabBarController*)[[self parentViewController] parentViewController]) growthWithSelection:2];
}

-(IBAction) weirdGrowth:(UIButton*) sender {
    [((TabBarController*)[[self parentViewController] parentViewController]) growthWithSelection:3];
}

-(IBAction) quadraticGrowth:(UIButton*) sender {
    [((TabBarController*)[[self parentViewController] parentViewController]) growthWithSelection:4];
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
