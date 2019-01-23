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
@property (nonatomic) ToDoTableViewCell *tableViewCell;

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
    
    ToDoData *oneTask = self.toDoList[indexPath.row];       // Setting each row of array into a variable to pass into a "configureCell" method
    
    [cell configureCell:oneTask];       // "configureCell" is a custom method created in ToDoTableViewController
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoList.count;
}

// ============================== Mark:  Set up cell tap to details page ======================================================
- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

// ============================== Mark: Set up NEW button to create new page ==================================================
- (IBAction)newButton:(UIBarButtonItem *)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segueToNew"]) {
        AddNewViewController *newVC = (AddNewViewController *) segue.destinationViewController;
        newVC.addNewDelegate = self;
        // cast destinationVC as AddNewVC
        // set delegate
    }
}

// addNewVC.addNewDelegate = self;

-(void)newTodo:(ToDoData *)toDo {
    [self.toDoList addObject:toDo];
    NSLog(@"New input saved");
    [self.tableView reloadData];
    // Add the todo to your list
    // Reload your tableview (maybe needs to be done on the main thread)
}


// Swipe left to mark as complete
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    NSLog(@"Swipped Left");
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:[sender locationInView:self.tableView]];
    ToDoData *setComplete = self.toDoList[indexPath.row];
    setComplete.isComplete = YES;
    [[self.tableView cellForRowAtIndexPath:indexPath] configureCell: setComplete];

    // Set isComplete on the ToDoData for that row (indexPath.row)
    // Reload Tableview
}


@end
