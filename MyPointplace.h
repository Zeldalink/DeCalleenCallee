//
//  MyPointplace.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "Square.h"
@interface MyPointplace : NSObject<MKAnnotation, MKMapViewDelegate>{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    Square * pinSquare;
}
@property(nonatomic,assign)  CLLocationCoordinate2D coordinate;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *subtitle;
@property(nonatomic,strong)Square *pinSquare;
@property (nonatomic ,strong) NSNumber *distanceFromUser;

@end
