//
//  ViewController.m
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "ViewController.h"
#import "ToDoData.h"
#import "ToDoTableViewCell.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSMutableArray *toDoList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.toDoList = [@[
                       [[ToDoData alloc] initWithTitle:@"Pack bag" andToDoPreview:@"Laptop, and ipad" andPriorityNumber:@"3"],
                       [[ToDoData alloc] initWithTitle:@"Laundry" andToDoPreview:@"White cloths" andPriorityNumber:@"3"],
                       [[ToDoData alloc] initWithTitle:@"Groceries" andToDoPreview:@"fruites" andPriorityNumber:@"1"],
                       [[ToDoData alloc] initWithTitle:@"Return item" andToDoPreview:@"Birthday gift" andPriorityNumber:@"2"],
                       [[ToDoData alloc] initWithTitle:@"Birthday card" andToDoPreview:@"For Jon" andPriorityNumber:@"3"],
                       [[ToDoData alloc] initWithTitle:@"Call home" andToDoPreview:@"Call at 8pm" andPriorityNumber:@"2"],
                       ] mutableCopy];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath:indexPath];
    
    ToDoData *oneTask = self.toDoList[indexPath.row];
    
    [cell configureCell:oneTask];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoList.count;
}

// Mark:  Set up cell tap to details page
- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"segueToDetailsPage" sender:nil];
    return YES;
}



@end
