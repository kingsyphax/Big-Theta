//
//  SortsViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/21/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "SortsViewController.h"
#import "SelectionSortViewController.h"
#import "InsertionSortViewController.h"
#import "MergeSortViewController.h"
#import "TabBarController.h"
#import "QuickSortViewController.h"
#import "HeapSortViewController.h"
#import "TimSortViewController.h"

@implementation SortsViewController

@synthesize selectionImage;
@synthesize insertionImage;
@synthesize mergeImage;
@synthesize quickImage;
@synthesize heapImage;
@synthesize timImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    selectionImage.image = [UIImage imageNamed:@"selectionSort.png"];
    
    insertionImage.image = [UIImage imageNamed:@"insertionSort.png"];

    mergeImage.image = [UIImage imageNamed:@"mergeSort5.png"];

    quickImage.image = [UIImage imageNamed:@"speed.jpg"];
    
    heapImage.image = [UIImage imageNamed:@"heap.png"];
    
    timImage.image = [UIImage imageNamed:@"tim.png"];

    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) SelectionImagePressed: (UIButton*) button {
    SelectionSortViewController* newController = [[SelectionSortViewController alloc] initWithNibName:@"SelectionSortViewController" bundle:nil];
    
    //[self changeBoxColor: @"selection"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) InsertionImagePressed: (UIButton*) button {
    InsertionSortViewController* newController = [[InsertionSortViewController alloc] initWithNibName:@"InsertionSortViewController" bundle:nil];
    
    //[self changeBoxColor: @"insertion"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) MergeImagePressed: (UIButton*) button {
    MergeSortViewController* newController =
    [[MergeSortViewController alloc] initWithNibName:@"MergeSortViewController" bundle:nil];
    
    //[self changeBoxColor: @"merge"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) QuickImagePressed: (UIButton*) button {
    QuickSortViewController* newController =
    [[QuickSortViewController alloc] initWithNibName:@"QuickSortViewController" bundle:nil];
    
    //[self changeBoxColor: @"merge"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) HeapImagePressed: (UIButton*) button {
    HeapSortViewController* newController =
    [[HeapSortViewController alloc] initWithNibName:@"HeapSortViewController" bundle:nil];
    
    //[self changeBoxColor: @"merge"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) TimImagePressed: (UIButton*) button {
    TimSortViewController* newController =
    [[TimSortViewController alloc] initWithNibName:@"TimSortViewController" bundle:nil];
    
    //[self changeBoxColor: @"merge"];
    [self.navigationController pushViewController:newController animated:YES];
}

//- (IBAction) changeBoxColor: (NSString) type {
//    
//}

@end
