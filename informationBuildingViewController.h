//
//  informationBuildingViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 29/09/12.
//
//

#import <UIKit/UIKit.h>
#import "Building.h"


@interface informationBuildingViewController : UIViewController{
    Building *detailpoint;
}
@property(nonatomic,strong)Building *detailpoint;
@property (weak, nonatomic) IBOutlet UITextView *AdressText;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (weak, nonatomic) IBOutlet UITextView *subwayText;
@property (weak, nonatomic) IBOutlet UITextView *telephonenumber;
@property (weak, nonatomic) IBOutlet UITextView *costtext;
@property (weak, nonatomic) IBOutlet UITextView *scheduletext;

@end
