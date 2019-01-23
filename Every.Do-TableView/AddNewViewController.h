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

@interface AddNewViewController : UIViewController // THIS IS THE DELEGATOR (client)

@property (nonatomic) id <AddNewDelegate> addNewDelegate; // THIS IS THE DELGATE PROPERTY (business card holder)

@end

NS_ASSUME_NONNULL_END
