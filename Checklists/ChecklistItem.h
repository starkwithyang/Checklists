//
//  ChecklistItem.h
//  Checklists
//
//  Created by yy on 15/10/21.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject
@property(nonatomic,copy)NSString *text;
@property(nonatomic,assign)BOOL checked;
-(void)toggleChecked;
@end
