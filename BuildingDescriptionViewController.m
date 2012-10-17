//
//  BuildingDescriptionViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/09/12.
//
//

#import "BuildingDescriptionViewController.h"
#import "informationBuildingViewController.h"
#import "Building.h"
@interface BuildingDescriptionViewController ()

@end

@implementation BuildingDescriptionViewController
@synthesize Summary=_Summary;
@synthesize Title=_Title;
@synthesize backgroundSquare;
@synthesize detailBuilding=_detailBuilding;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Edificios Históricos"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Atrás";
    self.navigationItem.backBarButtonItem =tempral;
    [backgroundSquare setImage:[UIImage imageNamed:@"fondo.png"]];
    [_Title setText:[_detailBuilding nameBuilding]];
    _Title.font=[UIFont fontWithName:@"Noteworthy-Bold" size:14.0];
    _Title.backgroundColor=[UIColor clearColor];
    [_Summary setText:[_detailBuilding summary]];
    _Summary.font =[UIFont fontWithName:@"Noteworthy-Bold" size:13.0];
    _Summary.backgroundColor=[UIColor clearColor];

}
- (void)viewDidUnload
{
    [self setBackgroundSquare:nil];
    [self setTitle:nil];
    [self setSummary:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)information:(id)sender {
    informationBuildingViewController *detail=[[informationBuildingViewController alloc]initWithNibName:@"informationBuildingViewController" bundle:nil];
    [detail setDetailpoint:_detailBuilding];
    [self.navigationController pushViewController:detail animated:YES];
}
@end
