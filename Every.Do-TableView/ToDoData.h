//
//  ToDoData.h
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDoData : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *toDoPreview;
@property (nonatomic) NSString *prioritiyNumber;
@property BOOL isComplete;

- (instancetype)initWithTitle: (NSString *)title andToDoPreview: (NSString *)toDoPreview andPriorityNumber: (NSString *)priorityNumber;

@end

NS_ASSUME_NONNULL_END
