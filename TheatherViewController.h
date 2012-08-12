//
//  TheatherViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 24/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Theather.h"
@interface TheatherViewController : UIViewController{

    Theather *detailTheather;

}
@property (weak, nonatomic) IBOutlet UITextView *Summary;


@property (weak, nonatomic) IBOutlet UITextView *Title;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundTheather;
@property(nonatomic,strong)Theather *detailTheather;
@end
