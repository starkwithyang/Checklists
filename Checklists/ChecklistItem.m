//
//  ChecklistItem.m
//  Checklists
//
//  Created by yy on 15/10/21.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem
-(void)toggleChecked{
    self.checked =!self.checked;
}
@end
