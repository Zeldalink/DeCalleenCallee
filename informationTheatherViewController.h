//
//  informationTheatherViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 14/10/12.
//
//

#import <UIKit/UIKit.h>
#import "Theather.h"
@interface informationTheatherViewController : UIViewController{
    Theather *detailTheather;
}
@property (weak, nonatomic) IBOutlet UITextView *subwaytext;
@property (weak, nonatomic) IBOutlet UITextView *phonetext;
@property (weak, nonatomic) IBOutlet UITextView *addresstext;
@property (weak, nonatomic) IBOutlet UITextView *costtext;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundimage;
@property (weak, nonatomic) IBOutlet UITextView *scheduletext;
@property(nonatomic,strong)Theather *detailTheather;
@end
