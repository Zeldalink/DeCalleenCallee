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

@interface SiteSpecificDetailViewController : UIViewController
{
    Museum *detailMuseum;
    
    __weak IBOutlet UIImageView *backgroundimage;
    
    
}
@property(nonatomic,strong) Museum *detailMuseum;
@property (weak, nonatomic) IBOutlet UITextView *Title;

@property (weak, nonatomic) IBOutlet UITextView *Summary;


@end
