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
    NSLog(@"当前文本框所输入的内容是:%@",_textField.text);
   [self.presentingViewController dismissViewControllerAnimated:YES completion:nil]; 
    
    
}
-(NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;//我将要选中某一行了
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.textField becomeFirstResponder];
    
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSString *newText =[textField.text stringByReplacingCharactersInRange:range withString:string];
   /* if ([newText length]>0) {
        self.doneBarButton.enabled =YES;
    }else{
        self.doneBarButton.enabled =NO;
    }*/
    self.doneBarButton.enabled =([newText length]>0);
    //编辑启动状态 赋值给newText length>0
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
