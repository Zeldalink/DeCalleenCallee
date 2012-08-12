//
//  LibraryDetailViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 25/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Library.h"

@interface LibraryDetailViewController : UIViewController{
    Library *detailLibrary;
}


@property (weak, nonatomic) IBOutlet UITextView *Summary;
@property (weak, nonatomic) IBOutlet UITextView *Title;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundLibrary;
@property(nonatomic,strong)Library *detailLibrary;
@end
