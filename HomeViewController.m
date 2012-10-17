//
//  HomeViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeLegend.h"
#import "Sitespecific.h"
#import "LegendParentViewController.h"
#import "SitespecificParentViewController.h"

@implementation HomeViewController
@synthesize homeTabBarController=_homeTabBarController;
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
    UIViewController *viewController1 = [[LegendParentViewController alloc] initWithNibName:@"LegendParentViewController" bundle:nil];
    [self.navigationController.navigationBar setHidden:YES];
     UITabBarItem *tab1 = [[UITabBarItem alloc] initWithTitle:@"Leyendas" image:[UIImage imageNamed:@"book"] tag:1];
     
     
     [viewController1 setTabBarItem:tab1];
    
    UIViewController *viewController2=[[SitespecificParentViewController alloc]initWithNibName:@"SitespecificParentViewController" bundle:nil];
    UITabBarItem *tab2=[[UITabBarItem alloc]initWithTitle:@"Sitios Interes" image:[UIImage imageNamed:@"map"] tag:2];
    [viewController2 setTabBarItem:tab2];
    
    _homeTabBarController = [[UITabBarController alloc] init];
    
	_homeTabBarController.viewControllers=[NSArray arrayWithObjects:viewController1,viewController2, nil];
    [_homeTabBarController.view setFrame:self.view.bounds];
	
	[self.view addSubview:_homeTabBarController.view];

    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (NSUInteger) supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return (UIDeviceOrientationIsValidInterfaceOrientation(interfaceOrientation));
}


@end
