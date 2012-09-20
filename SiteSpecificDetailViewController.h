//
//  SiteSpecificDetailViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyPointMuseum.h"
#import "Museum.h"
#import "Arqueology.h"
#import "Church.h"
#import "Library.h"
#import "Theather.h"
#import "Square.h"
#import <QuartzCore/QuartzCore.h>

@interface SiteSpecificDetailViewController : UIViewController
{
    Museum *detailMuseum;
    
    IBOutlet UIScrollView *scroll;
    __weak IBOutlet UIImageView *backgroundimage;
    
    __weak IBOutlet UIImageView *ImageMuseum;
    
}
@property(nonatomic,strong) Museum *detailMuseum;
@property (weak, nonatomic) IBOutlet UITextView *Title;

@property (weak, nonatomic) IBOutlet UITextView *Summary;


@end
