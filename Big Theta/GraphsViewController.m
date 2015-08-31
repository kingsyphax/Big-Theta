//
//  GraphsViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/21/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "GraphsViewController.h"
#import "AdjacencyListViewController.h"
#import "AdjacencyMatrixViewController.h"
#import "IncidenceListViewController.h"
#import "IncidenceMatrixViewController.h"

@implementation GraphsViewController

@synthesize adjacencyMatrixImage;
@synthesize adjacencyListImage;
@synthesize incidenceMatrixImage;
@synthesize incidenceListImage;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    adjacencyListImage.image = [UIImage imageNamed:@"adjacencyList.png"];
    
    adjacencyMatrixImage.image = [UIImage imageNamed:@"adjacencyMatrix.png"];
    
    incidenceListImage.image = [UIImage imageNamed:@"incidenceList.png"];
    
    incidenceMatrixImage.image = [UIImage imageNamed:@"incidenceMatrix.png"];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self.navigationController popViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) AdjacencyListPressed: (UIButton*) button {
    AdjacencyListViewController* newController = [[AdjacencyListViewController alloc] initWithNibName:@"AdjacencyListViewController" bundle:nil];
    
    //[self changeBoxColor: @"selection"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) AdjacencyMatrixPressed: (UIButton*) button {
    AdjacencyMatrixViewController* newController = [[AdjacencyMatrixViewController alloc] initWithNibName:@"AdjacencyMatrixViewController" bundle:nil];
    
    //[self changeBoxColor: @"selection"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) IncidenceListPressed: (UIButton*) button {
    IncidenceListViewController* newController = [[IncidenceListViewController alloc] initWithNibName:@"IncidenceListViewController" bundle:nil];
    
    //[self changeBoxColor: @"selection"];
    [self.navigationController pushViewController:newController animated:YES];
}

- (IBAction) IncidenceMatrixPressed: (UIButton*) button {
    IncidenceMatrixViewController* newController = [[IncidenceMatrixViewController alloc] initWithNibName:@"IncidenceMatrixViewController" bundle:nil];
    
    //[self changeBoxColor: @"selection"];
    [self.navigationController pushViewController:newController animated:YES];
}


@end
