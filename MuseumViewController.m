//
//  MuseumViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 05/10/12.
//
//

#import "MuseumViewController.h"

@interface MuseumViewController ()

@end

@implementation MuseumViewController
@synthesize detailmuseum=_detailmuseum;

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
    [self.background setImage:[UIImage imageNamed:@"fondo.png"]];
    [self.addresstext setBackgroundColor:[UIColor clearColor]];
    [self.addresstext setText:[_detailmuseum address]];
    [self.subwaytext setBackgroundColor:[UIColor clearColor]];
    [self.subwaytext setText:[_detailmuseum subway]];
    [self.scheduletext setBackgroundColor:[UIColor clearColor]];
    [self.scheduletext setText:[_detailmuseum schedule]];
    [self.phonetext setBackgroundColor:[UIColor clearColor]];
    [self.phonetext setText:[_detailmuseum telephone]];
    [self.costtext setBackgroundColor:[UIColor clearColor]];
    [self.costtext setText:[_detailmuseum cost]];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setAddresstext:nil];
    [self setSubwaytext:nil];
    [self setPhonetext:nil];
    [self setCosttext:nil];
    [self setScheduletext:nil];
    [self setBackground:nil];
    [super viewDidUnload];
}
@end
