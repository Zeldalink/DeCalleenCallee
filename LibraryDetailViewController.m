//
//  LibraryDetailViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 25/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LibraryDetailViewController.h"
#import "informationLibraryViewController.h"
@implementation LibraryDetailViewController

@synthesize Summary=_Summary;
@synthesize Title=_Title;
@synthesize backgroundLibrary;
@synthesize detailLibrary=_detailLibrary;
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
    [self.navigationItem setTitle:@"Biblioteca"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Atrás";
    self.navigationItem.backBarButtonItem =tempral;
    [backgroundLibrary setImage:[UIImage imageNamed:@"fondo.png"]];
    [_Title setText:[_detailLibrary nameLibrary]];
    _Title.backgroundColor =[UIColor clearColor];
    [_Summary setText:[_detailLibrary summary]];
    _Summary.backgroundColor=[UIColor clearColor];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setBackgroundLibrary:nil];
    [self setTitle:nil];
    [self setSummary:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (IBAction)moreInformation:(id)sender {
    informationLibraryViewController*newwindow=[[informationLibraryViewController alloc]initWithNibName:@"informationLibraryViewController" bundle:nil];
    [newwindow setDetaillibrary:_detailLibrary];
    
    [self.navigationController pushViewController:newwindow animated:YES];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
