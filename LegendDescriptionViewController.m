//
//  LegendDescriptionViewController.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LegendDescriptionViewController.h"
#import "LegendImageViewController.h"
#import "Legend.h"




@implementation LegendDescriptionViewController
@synthesize SummaryLegend = _SummaryLegend;
@synthesize TitleLegend = _TitleLegend;
@synthesize facebook;
@synthesize detailLegend = _detailLegend;
@synthesize permissions;

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
    facebook = [[Facebook alloc] initWithAppId:@"225902810852696" andDelegate:self];

    [self.navigationItem setTitle:@"Leyendas"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Regresar";
    self.navigationItem.backBarButtonItem =tempral;
    //    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"Headiphone"] forBarMetrics:UIBarMetricsDefault];
    [backgroundImage setImage:[UIImage imageNamed:@"fondo.png"]];
    [_TitleLegend setText:[_detailLegend legendName]];
    _TitleLegend.backgroundColor =[UIColor clearColor];
    [_SummaryLegend setText:[_detailLegend summary]];
    _SummaryLegend.backgroundColor =[UIColor clearColor];
 
   NSString *musicPath=[[NSBundle mainBundle]pathForResource:[_detailLegend audioLegend] ofType:@"mp3"];
    NSURL *musicURL=[NSURL fileURLWithPath:musicPath];
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:musicURL error:nil];
    [audioPlayer setDelegate:self];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"FBAccessTokenKey"] 
        && [defaults objectForKey:@"FBExpirationDateKey"]) {
        facebook.accessToken = [defaults objectForKey:@"FBAccessTokenKey"];
        facebook.expirationDate = [defaults objectForKey:@"FBExpirationDateKey"];
    }  
    
    permissions = [[NSArray alloc] initWithObjects:
                                @"user_likes", 
                                @"read_stream",
                                nil];

   // NSLog(@"Current legend name : %@",[_detailLegend legendName]);
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated{

}
- (void)viewDidUnload
{
    [self setTitleLegend:nil];
    [self setSummaryLegend:nil];
    backgroundImage = nil;
    audioPlayer=nil;
    audioButton=nil;
    [super viewDidUnload];
   
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
#pragma mark - Twitter

- (IBAction)TwitterPost:(id)sender {
    
    TWTweetComposeViewController *tweetController=[[TWTweetComposeViewController alloc]init];
    [tweetController setInitialText:[_detailLegend texttwitter]];
    [self dismissModalViewControllerAnimated:YES];
    
    [self presentModalViewController:tweetController animated:YES];

}
#pragma mark - Audio File

- (IBAction)playMovie:(id)sender {
    if([audioPlayer isPlaying]){
        [audioPlayer stop];
        [audioButton setImage:[UIImage imageNamed:@"folder_music.png"] forState:UIControlStateNormal];

    }
    else {
        [audioPlayer play];
        
        [audioButton setImage:[UIImage imageNamed:@"folder_musicba.png"] forState:UIControlStateNormal];
    }
    
}
-(void)audioPlayerBeginInterruption:(AVAudioPlayer *)player{
    [audioPlayer play];
  
}
-(void)audioPlayerEndInterruption:(AVAudioPlayer *)player{
    
    [audioPlayer play];
    
}

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    [audioButton setImage:[UIImage imageNamed:@"folder_music.png"] forState:UIControlStateNormal];
    

}

#pragma mark - Image

- (IBAction)playImage:(id)sender {
    
    LegendImageViewController *presentImage=[[LegendImageViewController alloc]initWithNibName:@"LegendImageViewController" bundle:nil];
    [presentImage setDetailLegend:_detailLegend];
    [self.navigationController pushViewController:presentImage animated:YES];
    
}
#pragma mark - Facebook
- (void)fbDidLogin {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[facebook accessToken] forKey:@"FBAccessTokenKey"];
    [defaults setObject:[facebook expirationDate] forKey:@"FBExpirationDateKey"];
    [defaults synchronize];
    
}

- (IBAction)Facebookpost:(id)sender {
       
       
    [self feedDialogButtonClicked];
    
    }

-(void)feedDialogButtonClicked{
    

    NSMutableDictionary *params = 
    [NSMutableDictionary dictionaryWithObjectsAndKeys:
     @"he aqui algo bueno",@"message",
     @"De Calle en Calle", @"name",
     @"Cuenta que De Calle en Calle ...", @"caption",
     [_detailLegend legendName], @"description",
     @"http://www.facebook.com/pages/De-Calle-en-Calle/105502459578905", @"link",
     @"http://img.photobucket.com/albums/v622/Zeldalink/LOGOAPP2.png", @"picture",
     nil];  
    [facebook dialog:@"feed"
           andParams:params
         andDelegate:self];
}

- (void)fbDidNotLogin:(BOOL)cancelled{}
- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt{}
- (void)fbDidLogout{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"FBAccessTokenKey"]) {
        [defaults removeObjectForKey:@"FBAccessTokenKey"];
        [defaults removeObjectForKey:@"FBExpirationDateKey"];
        [defaults synchronize];
    }
}
- (void)fbSessionInvalidated{}
    @end
