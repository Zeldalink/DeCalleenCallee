//
//  ArqueologyDescripcionViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ArqueologyDescripcionViewController.h"
#import "Arqueology.h"


@implementation ArqueologyDescripcionViewController
@synthesize backgroundArqueology = _backgroundArqueology;
@synthesize Title = _Title;
@synthesize Summary = _Summary;
@synthesize detailArqueology=_detailArqueology;



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
    [self.navigationItem setTitle:@"Arqueología"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Regresar";
    self.navigationItem.backBarButtonItem =tempral;    
    [_backgroundArqueology setImage:[UIImage imageNamed:@"fondo.png"]];
    [_Title setText:[_detailArqueology nameArqueology]];
    _Title.backgroundColor=[UIColor clearColor];
    [_Summary setText:[_detailArqueology summary]];
    _Summary.backgroundColor=[UIColor clearColor];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTitle:nil];
    [self setSummary:nil];

    [self setBackgroundArqueology:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
