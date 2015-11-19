//
//  AddItemViewControllerTableViewController.h
//  Checklists
//
//  Created by yy on 15/11/10.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewControllerTableViewController : UITableViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end
