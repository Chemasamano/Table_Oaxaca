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

UIAlertView     *alert;

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
    self.lblSelectedName.text = maNames[indexPath.row];
    NSString *strTemp;
    
    strTemp = [self.lblSelectedName.text stringByAppendingString: @" fué seleccionado"];
    
    if (indexPath.row == 2)
    {
        alert = [[UIAlertView alloc] initWithTitle:@"Alerta Oaxaca"
                                                        message:strTemp
                                                       delegate:self
                                              cancelButtonTitle:@"Cancelar"
                                              otherButtonTitles:@"Guardar", @"Publicar", nil];
        [alert show];
    }
}

/**********************************************************************************************
 Alert View Functions
 **********************************************************************************************/
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"Alert buttons pressed");
    
    if(buttonIndex == 0)
    {
        NSLog(@"Cancelar");
    }
    else if(buttonIndex == 1)
    {
        NSLog(@"Guardar");
    }
    else if(buttonIndex == 2)
    {
        NSLog(@"Publicar");
    }
}


/*
 
 UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alerta"
 message:NSLocalizedString(@"Message", nil)
 delegate:nil
 cancelButtonTitle:NSLocalizedString(@"OK", nil)
 otherButtonTitles:nil];
 [alert show];
 */

/*
NSString                    *initalTextString;
NSArray                     *activityItems;
UIImage                     *imageScreen;
UIActivityViewController    *activityViewController;

imageScreen = [UIImage imageNamed:@"Logo.png"];
initalTextString = @"Hola desde mi clase de iOS en la UAG =)";

activityItems = @[imageScreen, initalTextString];

//Init activity view controller
activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];

activityViewController.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, nil];



[self presentViewController:activityViewController animated:YES completion:nil];
*/

@end
