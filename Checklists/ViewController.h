//
//  ViewController.h
//  Checklists
//
//  Created by yy on 15/9/8.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewControllerTableViewController.h"

@interface ViewController : UITableViewController<AddItemViewControllerTableViewControllerDelegate>
- (IBAction)addItem:(id)sender;


@end

