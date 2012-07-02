//
//  ArqueologyDescripcionViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Arqueology.h"

@interface ArqueologyDescripcionViewController : UIViewController{
   
    Arqueology *detailArqueology;

}
@property (weak, nonatomic) IBOutlet UIImageView *backgroundArqueology;
@property (weak, nonatomic) IBOutlet UITextView *Title;

@property (weak, nonatomic) IBOutlet UITextView *Summary;

- (IBAction)ImagenArqueology:(id)sender;
@property(nonatomic,strong)Arqueology *detailArqueology;
@end
