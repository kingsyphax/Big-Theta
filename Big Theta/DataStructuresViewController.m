//
//  DataStructuresViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 5/6/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "DataStructuresViewController.h"
#import "ArrayViewController.h"
#import "LinkedViewController.h"
#import "StackViewController.h"
#import "SkipListViewController.h"
#import "BSTViewController.h"
#import "HTViewController.h"

@implementation DataStructuresViewController

@synthesize ArrayImage;
@synthesize LinkedImage;
@synthesize StackImage;
@synthesize SkipImage;
@synthesize BSTImage;
@synthesize HTImage;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    ArrayImage.image = [UIImage imageNamed:@"array.png"];
    
    LinkedImage.image = [UIImage imageNamed:@"linked.png"];
    
    StackImage.image = [UIImage imageNamed:@"stack.png"];
    
    SkipImage.image = [UIImage imageNamed:@"skip.png"];
    
    BSTImage.image = [UIImage imageNamed:@"bst.png"];
    
    HTImage.image = [UIImage imageNamed:@"hash.png"];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) ArrayImagePressed: (UIButton*) button {
    ArrayViewController* newController = [[ArrayViewController alloc] initWithNibName:@"ArrayViewController" bundle:nil];
    
    //[self changeBoxColor: @"array"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) LinkedImagePressed: (UIButton*) button {
    LinkedViewController* newController = [[LinkedViewController alloc] initWithNibName:@"LinkedViewController" bundle:nil];
    
    //[self changeBoxColor: @"linked list"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) StackImagePressed: (UIButton*) button {
    StackViewController* newController = [[StackViewController alloc] initWithNibName:@"StackViewController" bundle:nil];
    
    //[self changeBoxColor: @"stack"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) SkipImagePressed: (UIButton*) button {
    SkipListViewController* newController = [[SkipListViewController alloc] initWithNibName:@"SkipListViewController" bundle:nil];
    
    //[self changeBoxColor: @"stack"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) BSTImagePressed: (UIButton*) button {
    BSTViewController* newController = [[BSTViewController alloc] initWithNibName:@"BSTViewController" bundle:nil];
    
    //[self changeBoxColor: @"stack"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) HTImagePressed: (UIButton*) button {
    HTViewController* newController = [[HTViewController alloc] initWithNibName:@"HTViewController" bundle:nil];
    
    //[self changeBoxColor: @"stack"];
    [self.navigationController pushViewController:newController animated:YES];
}

-(IBAction)swipeLeft:(UIScrollView*)sender {
    
}

//- (IBAction) changeBoxColor: (NSString) type {
//
//}

@end

