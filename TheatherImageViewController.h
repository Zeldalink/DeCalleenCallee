//
//  TheatherImageViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Theather.h"
@interface TheatherImageViewController : UIViewController{

    Theather *detailTheater;
}
@property (weak, nonatomic) IBOutlet UIImageView *ImagenDisplay;
@property(nonatomic,strong)Theather *detailTheater;
@end
