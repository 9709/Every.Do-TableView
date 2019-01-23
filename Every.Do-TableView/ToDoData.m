//
//  ToDoData.m
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "ToDoData.h"

@implementation ToDoData

- (instancetype)initWithTitle: (NSString *)title andToDoPreview: (NSString *)toDoPreview andPriorityNumber: (NSString *)priorityNumber
{
    self = [super init];
    if (self) {
        _title = title;
        _toDoPreview = toDoPreview;
        _prioritiyNumber = priorityNumber;
    }
    return self;
}

@end
