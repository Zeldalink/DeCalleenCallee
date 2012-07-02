//
//  LegendParentViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 10/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LegendParentViewController.h"

@implementation LegendParentViewController
@synthesize HomeLegendViewController=_HomeLegendViewController;
@synthesize HomeLegendNavigationController=_HomeLegendNavigationController;

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

    HomeLegend *controller = [[HomeLegend alloc]initWithNibName:@"HomeLegend" bundle:nil];
	_HomeLegendNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
	
	[_HomeLegendNavigationController.view setFrame:self.view.bounds];
	[self.view addSubview:_HomeLegendNavigationController.view];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
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
