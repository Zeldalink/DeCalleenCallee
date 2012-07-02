//
//  ChurchImageViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Church.h"
@interface ChurchImageViewController : UIViewController{
    Church *detailChurch;
}
@property (weak, nonatomic) IBOutlet UIImageView *ImagenDisplay;
@property(nonatomic,strong)Church *detailChurch;
@end
