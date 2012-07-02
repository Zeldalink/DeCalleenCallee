//
//  MyPointChurch.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 10/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "Church.h"

@interface MyPointChurch : NSObject<MKAnnotation, MKMapViewDelegate>{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    Church *pinChurch;
}
@property(nonatomic,assign)  CLLocationCoordinate2D coordinate;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *subtitle;

@property (nonatomic,strong) Church *pinChurch;
@property (nonatomic ,strong) NSNumber *distanceFromUser;

@end
