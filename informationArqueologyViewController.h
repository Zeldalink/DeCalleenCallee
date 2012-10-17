//
//  informationArqueologyViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 14/10/12.
//
//

#import <UIKit/UIKit.h>
#import"Arqueology.h"
@interface informationArqueologyViewController : UIViewController
{
    Arqueology *detailArqueology;

}
@property (weak, nonatomic) IBOutlet UITextView *adresstext;
@property (weak, nonatomic) IBOutlet UITextView *subwaytext;
@property (weak, nonatomic) IBOutlet UITextView *phonettext;
@property (weak, nonatomic) IBOutlet UITextView *costtext;
@property (weak, nonatomic) IBOutlet UITextView *scheduletext;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundimage;
@property(nonatomic,strong) Arqueology *detailArqueology;

@end
