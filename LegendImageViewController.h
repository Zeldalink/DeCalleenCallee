//
//  LegendImageViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Legend.h"

@interface LegendImageViewController : UIViewController
{
    Legend *detailLegend;
}

@property (weak, nonatomic) IBOutlet UIImageView *ImagenDisplay;
@property (nonatomic,strong) Legend *detailLegend;
@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@end
