//
//  informationArqueologyViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 14/10/12.
//
//

#import "informationArqueologyViewController.h"

@interface informationArqueologyViewController ()

@end

@implementation informationArqueologyViewController
@synthesize detailArqueology=_detailArqueology;

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
    [self.adresstext setText:[_detailArqueology address]];
    [self.adresstext setBackgroundColor:[UIColor clearColor]];
    [self.subwaytext setText:[_detailArqueology subway]];
    [self.subwaytext setBackgroundColor:[UIColor clearColor]];
    [self.phonettext setBackgroundColor:[UIColor clearColor]];
    [self.phonettext setText:[_detailArqueology telephone]];
    [self.costtext setBackgroundColor:[UIColor clearColor]];
    [self.costtext setText:[_detailArqueology cost]];
    [self.scheduletext setBackgroundColor:[UIColor clearColor]];
    [self.scheduletext setText:[_detailArqueology schedule]];
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
    [self setPhonettext:nil];
    [self setCosttext:nil];
    [self setScheduletext:nil];
    [self setBackgroundimage:nil];
    [super viewDidUnload];
}
@end
