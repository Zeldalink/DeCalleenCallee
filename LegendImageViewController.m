//
//  LegendImageViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LegendImageViewController.h"
#import "Legend.h"
#import "DCCDAppDelegate.h"


@implementation LegendImageViewController
@synthesize ImagenDisplay;
@synthesize detailLegend=_detailLegend;
@synthesize managedObjectContext=_managedObjectContext;

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
    
    
    [self.navigationItem setTitle:@"Leyendas"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setImagenDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void)viewWillAppear:(BOOL)animated{
    
    
    
    [ImagenDisplay setImage:[UIImage imageNamed:[_detailLegend imageName]]];
    [super viewWillAppear:animated];
}

@end
