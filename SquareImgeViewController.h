//
//  SquareImgeViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Square.h"

@interface SquareImgeViewController : UIViewController
{

    Square *detailSquare;
}
@property (weak, nonatomic) IBOutlet UIImageView *Imagendisplay;
@property(nonatomic,strong)Square *detailSquare;
@end
