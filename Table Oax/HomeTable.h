//
//  ViewController.h
//  Table Oax
//
//  Created by Walter Gonzalez Domenzain on 18/01/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTable : UIViewController<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>
//Buttons

//Images

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblSelectedName;

//Table
@property (strong, nonatomic) IBOutlet UITableView *tblMain;

//Views


@end

