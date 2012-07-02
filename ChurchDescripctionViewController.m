//
//  ChurchDescripctionViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ChurchDescripctionViewController.h"
#import "ChurchImageViewController.h"

@implementation ChurchDescripctionViewController
@synthesize Title=_Title;
@synthesize Summary=_Summary;
@synthesize detailChurch=_detailChurch;

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
    [self.navigationItem setTitle:@"Iglesia"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Regresar";
    self.navigationItem.backBarButtonItem =tempral;
    [BackgroundChurch setImage:[UIImage imageNamed:@"fondo.png"]];
    [_Title setText:[_detailChurch nameChurch]];
    _Title.backgroundColor=[UIColor clearColor];
    [_Summary setText:[_detailChurch summary]];
    _Summary.backgroundColor=[UIColor clearColor];

    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    BackgroundChurch = nil;
    [self setTitle:nil];
    [self setSummary:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)DisplayImagen:(id)sender {
    ChurchImageViewController *imagenDisplay=[[ChurchImageViewController alloc]initWithNibName:@"ChurchImageViewController" bundle:nil];
    [imagenDisplay setDetailChurch:_detailChurch];
    [self.navigationController pushViewController:imagenDisplay animated:YES];
    
}
@end
