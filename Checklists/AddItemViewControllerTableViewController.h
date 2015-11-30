//
//  AddItemViewControllerTableViewController.h
//  Checklists
//
//  Created by yy on 15/11/10.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChecklistItem.h"
@class AddItemViewControllerTableViewController;
@class ChecklistItem;
@protocol AddItemViewControllerTableViewControllerDelegate <NSObject>


-(void)addItemViewControllerTableViewControllerDidCancel:(AddItemViewControllerTableViewController*)controller;
-(void)addItemViewController:(AddItemViewControllerTableViewController*)controller
         didFinishAddingItem:(ChecklistItem*)item;

@end
@interface AddItemViewControllerTableViewController : UITableViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property(nonatomic,weak)id<AddItemViewControllerTableViewControllerDelegate>delegate;

@end
