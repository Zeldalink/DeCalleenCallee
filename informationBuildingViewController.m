//
//  informationBuildingViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 29/09/12.
//
//

#import "informationBuildingViewController.h"

@interface informationBuildingViewController ()

@end

@implementation informationBuildingViewController
@synthesize detailpoint=_detailpoint;

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
    self.AdressText.text = [_detailpoint address];
    self.AdressText.backgroundColor=[UIColor clearColor];
    self.background.image=[UIImage imageNamed:@"fondo.png"];
    self.navigationItem.title=@"Información";
    self.telephonenumber.text=[_detailpoint telephone];
    self.telephonenumber.backgroundColor=[UIColor clearColor];
    self.subwayText.text=[_detailpoint subway];
    self.subwayText.backgroundColor=[UIColor clearColor];
    self.scheduletext.text=[_detailpoint schedule];
    self.scheduletext.backgroundColor=[UIColor clearColor];
    self.costtext.text=[_detailpoint cost];
    self.costtext.backgroundColor=[UIColor clearColor];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setAdressText:nil];
    [self setBackground:nil];
    [self setSubwayText:nil];
    [self setTelephonenumber:nil];
    [self setCosttext:nil];
    [self setScheduletext:nil];
    [super viewDidUnload];
}
@end
