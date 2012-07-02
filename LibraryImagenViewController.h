//
//  LibraryImagenViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 25/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Library.h"
@interface LibraryImagenViewController : UIViewController{
    Library *detailLibrary;
}
@property (weak, nonatomic) IBOutlet UIImageView *ImagenView;
@property(nonatomic,strong)Library *detailLibrary;
@end
