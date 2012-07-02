//
//  SiteSpecificDetailViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SiteSpecificDetailViewController.h"
#import "SiteSpecificImagenViewController.h"
#import "Museum.h"

@implementation SiteSpecificDetailViewController
@synthesize Title=_Title;
@synthesize Summary = _Summary;

@synthesize detailMuseum=_detailMuseum;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
   // [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"Headiphone"] forBarMetrics:UIBarMetricsDefault];
    
    [self.navigationItem setTitle:@"Museo"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Regresar";
    self.navigationItem.backBarButtonItem =tempral;
    [_Title setText:[_detailMuseum nameMuseum]];
    _Title.backgroundColor =[UIColor clearColor];
    
    [_Summary setText:[_detailMuseum summary]];
    _Summary.backgroundColor=[UIColor clearColor];
    [backgroundimage setImage:[UIImage imageNamed:@"fondo.png"]];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTitle:nil];
    [self setSummary:nil];
    backgroundimage = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (IBAction)ImagenDisplaySite:(id)sender {
    
    SiteSpecificImagenViewController *presentImage=[[SiteSpecificImagenViewController alloc]initWithNibName:@"SiteSpecificImagenViewController" bundle:nil];
    [presentImage setDetailMuseum:_detailMuseum];
    [self.navigationController pushViewController:presentImage animated:YES];
    
    
}
@end
