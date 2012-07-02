//
//  SquareDescriptionController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Square.h"

@interface SquareDescriptionController : UIViewController{
    Square *detailSquare;
}
- (IBAction)ImagenDisplay:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *Summary;
@property (weak, nonatomic) IBOutlet UITextView *Title;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundSquare;
@property(nonatomic,strong)Square *detailSquare;
@end
