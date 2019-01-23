//
//  ToDoTableViewCell.h
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoData.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *mainTask;
@property (weak, nonatomic) IBOutlet UILabel *previewLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;

-(void)configureCell:(ToDoData*)task;
@end

NS_ASSUME_NONNULL_END
