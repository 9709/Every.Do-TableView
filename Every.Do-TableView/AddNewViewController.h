//
//  AddNewViewController.h
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoData.h"

@protocol AddNewDelegate

- (void) newTodo: (ToDoData *)toDo;

@end



NS_ASSUME_NONNULL_BEGIN

@interface AddNewViewController : UIViewController

@property (nonatomic) id <AddNewDelegate> addNewDelegate;

@end

NS_ASSUME_NONNULL_END
