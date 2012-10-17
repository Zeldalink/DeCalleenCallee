//
//  informationChurchViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 14/10/12.
//
//

#import "informationChurchViewController.h"

@interface informationChurchViewController ()

@end


@implementation informationChurchViewController
@synthesize detailChurch=_detailChurch;

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
    [self.adresstext setBackgroundColor:[UIColor clearColor]];
    [self.adresstext setText:[_detailChurch address]];
    [self.subwaytext setText:[_detailChurch subway]];
    [self.subwaytext setBackgroundColor:[UIColor clearColor]];
    [self.phonetext setBackgroundColor:[UIColor clearColor]];
    [self.phonetext setText:[_detailChurch telephone]];
    [self.costtext setBackgroundColor:[UIColor clearColor]];
    [self.costtext setText:[_detailChurch cost]];
    [self.scheduletext setBackgroundColor:[UIColor clearColor]];
    [self.scheduletext setText:[_detailChurch schedule]];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setAdresstext:nil];
    [self setSubwaytext:nil];
    [self setPhonetext:nil];
    [self setCosttext:nil];
    [self setScheduletext:nil];
    [self setBackgroundimage:nil];
    [super viewDidUnload];
}
@end
