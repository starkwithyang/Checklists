//
//  ViewController.m
//  Checklists
//
//  Created by yy on 15/9/8.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "ViewController.h"
#import "ChecklistItem.h"//现在我们需要用到这个对象
#import "AddItemViewControllerTableViewController.h"
@interface ViewController ()


@end

@implementation ViewController{
    
    NSMutableArray *_items;//声明一个可变数组

}
/*- (IBAction)addItem:(id)sender{
    
}*/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _items =[[NSMutableArray alloc]initWithCapacity:20];
    
    ChecklistItem *item;
    item =[[ChecklistItem alloc]init];
    item.text =@"碟中谍五又上映了";
    item.checked =NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc]init];
   // _row0item = [[ChecklistItem alloc]init];
    item.text =@"港囧已经上映了,但没去看了";
    item.checked =NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc]init];
    // _row0item = [[ChecklistItem alloc]init];
    item.text =@"iphone6s摄像头升级到1200万了，而且加入了3D touch技术,挺好用的";
    item.checked =NO;
    [_items addObject:item];
 
    item = [[ChecklistItem alloc]init];
    // _row0item = [[ChecklistItem alloc]init];
    item.text =@"生活大爆炸真好看";
    item.checked =NO;
    [_items addObject:item];
   
    
    item = [[ChecklistItem alloc]init];
    // _row0item = [[ChecklistItem alloc]init];
    item.text =@"中秋节已经过了";
    item.checked =NO;
    [_items addObject:item];
}
-(void)configureCheckmarkForCell:(UITableViewCell*)cell withChecklistItem:(ChecklistItem*)item{
    /*if (item.checked)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }*/
    UILabel *label =(UILabel *)[cell viewWithTag:1001];
    if (item.checked) {
        label.text =@"√";
    }else{
        label.text =@"";
    }
    
}

-(void)configureTextForCell:(UITableViewCell*)cell withChecklistItem:(ChecklistItem *)item{
    UILabel *label =(UILabel*)[cell viewWithTag:1000];
    label.text = item.text;
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell =[tableView cellForRowAtIndexPath:indexPath];
    ChecklistItem *item =_items[indexPath.row];
    [item toggleChecked];
   
    [self configureCheckmarkForCell:cell withChecklistItem:item];

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_items count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    ChecklistItem *item = _items[indexPath.row];
    
    [self configureTextForCell:cell withChecklistItem:item];
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    return cell;
}
-(void)tableView:(UITableView*)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [_items removeObjectAtIndex:indexPath.row];
    NSArray*indexPaths =@[indexPath];
    [tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];//删除
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"AddItem"])
    {
        UINavigationController *navigationController =segue.destinationViewController;
        AddItemViewControllerTableViewController *controller= (AddItemViewControllerTableViewController*)navigationController.topViewController;
        controller.delegate =self;
        
        
    }
}
-(void)addItemViewControllerTableViewControllerDidCancel:(AddItemViewControllerTableViewController *)controller{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)addItemViewController:(AddItemViewControllerTableViewController *)controller didFinishAddingItem:(ChecklistItem *)item{
    
   NSInteger newRowIndex =[_items count];
   [_items addObject:item];
    
    
   
    NSIndexPath*indexPath =[NSIndexPath indexPathForRow:newRowIndex inSection:0];
    
    NSArray *indexPaths =@[indexPath];
    
    [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
