//
//  LegendParentViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 10/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeLegend.h"

@interface LegendParentViewController : UIViewController
{
	UINavigationController *HomeLegendNavigationController;
	HomeLegend *HomeLegendViewController;
    
}

@property (nonatomic,strong) UINavigationController *HomeLegendNavigationController;
@property (nonatomic,strong) HomeLegend *HomeLegendViewController;

@end
