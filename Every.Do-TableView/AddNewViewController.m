//
//  AddNewViewController.m
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "AddNewViewController.h"

@interface AddNewViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextField *previewTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityTextField;

@end

@implementation AddNewViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)doneButtonPressed:(UIBarButtonItem *)sender {
    NSString *titleTextFieldStr = self.textField.text;
    NSString *previewTextFieldStr = self.previewTextField.text;
    NSString *priortyTextFieldStr = self.priorityTextField.text;
    
    ToDoData *titleToSave = [[ToDoData alloc] initWithTitle:titleTextFieldStr andToDoPreview:previewTextFieldStr andPriorityNumber:priortyTextFieldStr];
    
    [self.addNewDelegate newTodo:titleToSave]; // CALL THE DELEGATGE (phone call to the plumber)
    
    [self.navigationController popViewControllerAnimated: YES];
}



@end
