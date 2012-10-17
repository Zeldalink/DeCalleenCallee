//
//  MuseumViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 05/10/12.
//
//

#import <UIKit/UIKit.h>
#import "Museum.h"

@interface MuseumViewController : UIViewController{

    Museum *detailmuseum;
}
@property (weak, nonatomic) IBOutlet UITextView *addresstext;
@property (weak, nonatomic) IBOutlet UITextView *subwaytext;
@property (weak, nonatomic) IBOutlet UITextView *phonetext;
@property (weak, nonatomic) IBOutlet UITextView *costtext;
@property (weak, nonatomic) IBOutlet UITextView *scheduletext;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property(strong,nonatomic)Museum *detailmuseum;

@end
