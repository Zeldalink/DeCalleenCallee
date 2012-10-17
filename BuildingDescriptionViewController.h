//
//  BuildingDescriptionViewController.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/09/12.
//
//

#import <UIKit/UIKit.h>
#import "Building.h"
@interface BuildingDescriptionViewController : UIViewController{
    Building *detailBuilding;
}
@property (weak, nonatomic) IBOutlet UITextView *Summary;
@property (weak, nonatomic) IBOutlet UITextView *Title;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundSquare;
@property(nonatomic,strong)Building *detailBuilding;
- (IBAction)information:(id)sender;

@end
