//
//  ViewController.m
//  Table Oax
//
//  Created by Walter Gonzalez Domenzain on 18/01/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "HomeTable.h"
#import "cellOaxaca.h"

NSMutableArray *maNames;
NSMutableArray *maImgs;
NSMutableArray *maRole;
NSMutableArray *maAge;

@interface HomeTable ()

@end

@implementation HomeTable

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController
{
    maNames         =  [NSMutableArray arrayWithObjects: @"Walter González", @"Alejandra Bautista", @"Augusto Bustamante", @"José Chávez", @"Alberto Cordero", nil];

    maAge           =  [NSMutableArray arrayWithObjects: @"35", @"25", @"42", @"36", @"24", nil];
    
    maImgs          =  [NSMutableArray arrayWithObjects: @"chavo.png", @"chilindrina.png", @"jaimito.png", @"nono.png", @"clotilde.png", nil];
    
    maRole          =  [NSMutableArray arrayWithObjects: @"Profesor Curso", @"Alumna Guapa", @"Amigo Estudioso", @"Alumno Travieso", @"Alumno Inteligente", nil];
}
/**********************************************************************************************
 Table Functions
**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellOaxaca");
    static NSString *CellIdentifier = @"cellOaxaca";
    
    cellOaxaca *cell = (cellOaxaca *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellOaxaca alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblName.text       = maNames[indexPath.row];
    cell.lblRole.text       = maRole[indexPath.row];
    cell.lblAge.text        = maAge[indexPath.row];
    cell.imgUser.image      = [UIImage imageNamed:maImgs[indexPath.row]];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

@end
