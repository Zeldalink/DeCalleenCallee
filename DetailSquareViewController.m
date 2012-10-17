//
//  DetailSquareViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 21/09/12.
//
//

#import "DetailSquareViewController.h"

@interface DetailSquareViewController ()

@end

@implementation DetailSquareViewController
@synthesize detailsquare=_detailsquare;

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
    [self.navigationItem setTitle:@"Información"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    [self.background setImage:[UIImage imageNamed:@"fondo.png" ]];
    [self.adresstext setBackgroundColor:[UIColor clearColor]];
    [self.adresstext setText:[_detailsquare nameSquare]];
    [self.subwaytext setBackgroundColor:[UIColor clearColor]];
    [self.subwaytext setText:[_detailsquare subway]];
    [self.phonetext setText:[_detailsquare telephone]];
    [self.phonetext setBackgroundColor:[UIColor clearColor]];
    [self.costtext setBackgroundColor:[UIColor clearColor]];
    [self.costtext setText:[_detailsquare cost]];
    [self.scheduletext setBackgroundColor:[UIColor clearColor]];
    [self.scheduletext setText:[_detailsquare schedule]];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setBackground:nil];
    [self setAdresstext:nil];
    [self setSubwaytext:nil];
    [self setPhonetext:nil];
    [self setCosttext:nil];
    [self setScheduletext:nil];
    [super viewDidUnload];
}
@end
