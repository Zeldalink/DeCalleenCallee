//
//  MyPointarqueology.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "Arqueology.h"
@interface MyPointarqueology : NSObject<MKAnnotation, MKMapViewDelegate>{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    Arqueology *pinArque;
}
@property(nonatomic,assign)  CLLocationCoordinate2D coordinate;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *subtitle;
@property(nonatomic,strong) Arqueology *pinArque;
@property (nonatomic ,strong) NSNumber *distanceFromUser;

@end
