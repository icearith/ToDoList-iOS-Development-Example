//
//  ToDoItem.h
//  ToDoList
//
//  Created by Arith Xu on 15/03/2015.
//  Copyright (c) 2015 Arith Xu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
