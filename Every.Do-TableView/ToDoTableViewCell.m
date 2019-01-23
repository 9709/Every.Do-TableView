//
//  ToDoTableViewCell.m
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "ToDoTableViewCell.h"

@implementation ToDoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureCell:(ToDoData*)task{
    self.mainTask.text = task.title;
    self.previewLabel.text = task.toDoPreview;
    self.priorityLabel.text = task.prioritiyNumber;
}

@end
