//
//  LegendDescriptionViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<Twitter/Twitter.h>
#import <Accounts/Accounts.h>
#import <AVFoundation/AVFoundation.h>
#import "Legend.h"
#import "FBConnect.h"
#import "JSON.h"
@interface LegendDescriptionViewController : UIViewController<AVAudioPlayerDelegate,FBSessionDelegate,FBDialogDelegate>
{
    __weak IBOutlet UIImageView *backgroundImage;
    Legend *detailLegend;
    IBOutlet UIButton *audioButton;
    AVAudioPlayer *audioPlayer;
    Facebook *facebook;
    NSArray *permissions
    ;
}

@property(nonatomic,retain)Facebook *facebook;
- (void) feedDialogButtonClicked;

@property (nonatomic, retain) NSArray *permissions;

@property (weak, nonatomic) IBOutlet UITextView *SummaryLegend;
@property (weak, nonatomic) IBOutlet UITextView *TitleLegend;
@property(strong)    AVAudioPlayer *audioPlayer;


@property (nonatomic,strong) Legend *detailLegend;
- (IBAction)TwitterPost:(id)sender;
- (IBAction)playMovie:(id)sender;
- (IBAction)playImage:(id)sender;
- (IBAction)Facebookpost:(id)sender;
- (void)fbDidLogin;
- (void)fbDidNotLogin:(BOOL)cancelled;
- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt;
- (void)fbDidLogout;
- (void)fbSessionInvalidated;

@end
