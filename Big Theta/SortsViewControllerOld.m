//
//  FirstViewController.m
//  Big Theta
//
//  Created by Nicholas Ward on 4/17/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "SortsViewController.h"
#import "InsertionSortViewController.h"
#import "MergeSortViewController.h"
#import "SelectionSortViewController.h"

@implementation SortsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewWillAppear:(BOOL)animated {
    //[self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([indexPath row] == 0) {
        InsertionSortViewController* newController = [[InsertionSortViewController alloc] initWithNibName:@"InsertionSortViewController" bundle:nil];
        
        [self.navigationController pushViewController:newController animated:YES];
    } else if ([indexPath row] == 1) {
        SelectionSortViewController* newController = [[SelectionSortViewController alloc] initWithNibName:@"SelectionSortViewController" bundle:nil];
        
        [self.navigationController pushViewController:newController animated:YES];
    } else if ([indexPath row] == 2) {
        MergeSortViewController* newController = [[MergeSortViewController alloc] initWithNibName:@"MergeSortViewController" bundle:nil];
        
        [self.navigationController pushViewController:newController animated:YES];
    }
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc] init];
    
    if ([indexPath row] == 0) {
        cell.textLabel.text = @"Insertion Sort";
    } else if ([indexPath row] == 1) {
        cell.textLabel.text = @"Selection Sort";
    } else if ([indexPath row] == 2) {
        cell.textLabel.text = @"Merge Sort";
    }
    
    return cell;
}

@end
