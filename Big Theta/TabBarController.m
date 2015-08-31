//
//  TabBarController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/23/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "TabBarController.h"
#import "GrowthViewController.h"

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) growthWithSelection:(int)which {
    self.selectedIndex = 0;
        
    [((GrowthViewController*)[[self.viewControllers objectAtIndex:0] topViewController]) init];
    [((GrowthViewController*)[[self.viewControllers objectAtIndex:0] topViewController]) select:which];
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    if ([viewController isEqual:[self.viewControllers objectAtIndex:0]]) {
        [self growthWithSelection:0];
    }
}

@end
