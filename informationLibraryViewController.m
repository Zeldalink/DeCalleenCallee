//
//  informationLibraryViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 14/10/12.
//
//

#import "informationLibraryViewController.h"

@interface informationLibraryViewController ()

@end

@implementation informationLibraryViewController
@synthesize detaillibrary=_detaillibrary;
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
    [self.backgroundimage setImage:[UIImage imageNamed:@"fondo.png"]];
    [self.addresstext setBackgroundColor:[UIColor clearColor]];
    [self.addresstext setText:[_detaillibrary address]];
    [self.subwaytext setText:[_detaillibrary subway]];
    [self.subwaytext setBackgroundColor:[UIColor clearColor]];
    [self.phonetext setBackgroundColor:[UIColor clearColor]];
    [self.phonetext setText:[_detaillibrary telephone]];
    [self.costtext setBackgroundColor:[UIColor clearColor]];
    [self.costtext setText:[_detaillibrary cost]];
    [self.scheduletext setBackgroundColor:[UIColor clearColor]];
    [self.scheduletext setText:[_detaillibrary schedule]];
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
    [self setBackgroundimage:nil];
    [super viewDidUnload];
}
@end
