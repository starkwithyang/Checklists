//
//  AddItemViewControllerTableViewController.m
//  Checklists
//
//  Created by yy on 15/11/10.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "AddItemViewControllerTableViewController.h"

@interface AddItemViewControllerTableViewController ()


@end

@implementation AddItemViewControllerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (IBAction)cancel:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    
}
- (IBAction)Done:(id)sender {
   [self.presentingViewController dismissViewControllerAnimated:YES completion:nil]; 
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
