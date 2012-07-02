//
//  SitespecificParentViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 10/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Sitespecific.h"

@interface SitespecificParentViewController : UIViewController{
	UINavigationController *SiteSpecificNavigationController;
	Sitespecific *SiteSpecificViewController;
    
}

@property (nonatomic,strong) UINavigationController *SiteSpecificNavigationController;
@property (nonatomic,strong) Sitespecific *SiteSpecificdViewController;

@end
