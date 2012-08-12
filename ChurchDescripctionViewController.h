//
//  ChurchDescripctionViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Church.h"
@interface ChurchDescripctionViewController : UIViewController{

    __weak IBOutlet UIImageView *BackgroundChurch;

    Church*detailChurch;
}
@property (weak, nonatomic) IBOutlet UITextView *Title;
@property (weak, nonatomic) IBOutlet UITextView *Summary;
@property(nonatomic,strong)Church*detailChurch;
@end
