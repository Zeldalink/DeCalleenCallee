//
//  MyPoint.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "Legend.h"

@interface MyPoint : NSObject<MKAnnotation, MKMapViewDelegate>{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    Legend *pinLegend;
}
@property(nonatomic,assign)  CLLocationCoordinate2D coordinate;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *subtitle;
@property (nonatomic ,strong) NSNumber *distanceFromUser;

@property (nonatomic,strong) Legend *pinLegend;

@end
