//
//  MyPointBuilding.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 21/09/12.
//
//

#import <Foundation/Foundation.h>
#import "Building.h"
#import <MapKit/MapKit.h>

@interface MyPointBuilding : NSObject<MKAnnotation, MKMapViewDelegate>{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    Building *pinArque;
}
@property(nonatomic,assign)  CLLocationCoordinate2D coordinate;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *subtitle;
@property(nonatomic,strong) Building *pinBuilding;
@property (nonatomic ,strong) NSNumber *distanceFromUser;
@end
