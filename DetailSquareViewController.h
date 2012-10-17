//
//  DetailSquareViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 21/09/12.
//
//

#import <UIKit/UIKit.h>
#import "Square.h"

@interface DetailSquareViewController : UIViewController{
    Square *detailsquare;
}
@property(nonatomic,strong)Square *detailsquare;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (weak, nonatomic) IBOutlet UITextView *adresstext;
@property (weak, nonatomic) IBOutlet UITextView *subwaytext;
@property (weak, nonatomic) IBOutlet UITextView *phonetext;
@property (weak, nonatomic) IBOutlet UITextView *costtext;
@property (weak, nonatomic) IBOutlet UITextView *scheduletext;


@end
