//
//  TheatherViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TheatherViewController.h"
#import "Theather.h"
#import "informationTheatherViewController.h"

@implementation TheatherViewController
@synthesize Summary=_Summary;
@synthesize Title=_Title;
@synthesize backgroundTheather;
@synthesize detailTheather=_detailTheather;

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
    [self.navigationItem setTitle:@"Teatro"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Regresar";
    self.navigationItem.backBarButtonItem =tempral;
    [backgroundTheather setImage:[UIImage imageNamed:@"fondo.png"]];
    [_Title setText:[_detailTheather nameTheather]];
    _Title.backgroundColor=[UIColor clearColor];
    [_Summary setText:[_detailTheather summary]];
    _Summary.backgroundColor=[UIColor clearColor];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setBackgroundTheather:nil];
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
- (IBAction)moreInformation:(id)sender{
    informationTheatherViewController *newwindow=[[informationTheatherViewController alloc]initWithNibName:@"informationTheatherViewController" bundle:nil];
[newwindow setDetailTheather:_detailTheather];
    [self.navigationController pushViewController:newwindow animated:YES];

}

@end
