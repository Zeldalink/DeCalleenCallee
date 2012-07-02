//
//  ArqueologyImageViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Arqueology.h"

@interface ArqueologyImageViewController : UIViewController{
    Arqueology *detailArqueology;
}

@property (weak, nonatomic) IBOutlet UIImageView *ImagenView;
@property(nonatomic,strong)Arqueology *detailArqueology;


@end
