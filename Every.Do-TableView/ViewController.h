//
//  ViewController.h
//  Every.Do-TableView
//
//  Created by Matthew Chan on 2019-01-22.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, AddNewDelegate>

@property (nonatomic, weak) id <UITableViewDelegate> tableViewDelegate;
@property (nonatomic, weak) id <UITableViewDataSource> tableViewDataSource;

@end

