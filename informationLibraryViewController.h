//
//  informationLibraryViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 14/10/12.
//
//

#import <UIKit/UIKit.h>
#import "Library.h"

@interface informationLibraryViewController : UIViewController{
    Library *detaillibrary;
}
@property(nonatomic,strong)Library *detaillibrary;
@property (weak, nonatomic) IBOutlet UITextView *addresstext;
@property (weak, nonatomic) IBOutlet UITextView *subwaytext;
@property (weak, nonatomic) IBOutlet UITextView *phonetext;
@property (weak, nonatomic) IBOutlet UITextView *costtext;
@property (weak, nonatomic) IBOutlet UITextView *scheduletext;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundimage;

@end
