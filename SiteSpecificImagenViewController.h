//
//  SiteSpecificImagenViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Museum.h"

@interface SiteSpecificImagenViewController : UIViewController
{
    Museum *detailMuseum;
    
    
    
}
@property(nonatomic,strong) Museum *detailMuseum;
@property (weak, nonatomic) IBOutlet UIImageView *SiteImagen;
@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@end
