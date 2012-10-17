//
//  SitespecificParentViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 10/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SitespecificParentViewController.h"

@implementation SitespecificParentViewController
@synthesize SiteSpecificdViewController=_SiteSpecificViewController;
@synthesize SiteSpecificNavigationController=_SiteSpecificNavigationController;

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
   Sitespecific *controller = [[Sitespecific alloc]initWithNibName:@"Sitespecific" bundle:nil];
	_SiteSpecificNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
	
	[_SiteSpecificNavigationController.view setFrame:self.view.bounds];
	[self.view addSubview:_SiteSpecificNavigationController.view];

    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

/*- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}*/

@end
