//
//  MyPointLibrary.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "Library.h"
@interface MyPointLibrary : NSObject<MKAnnotation, MKMapViewDelegate>{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    Library *pinLibrary;
}
@property(nonatomic,assign)  CLLocationCoordinate2D coordinate;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *subtitle;
@property(nonatomic,strong)Library *pinLibrary;
@property (nonatomic ,strong) NSNumber *distanceFromUser;

@end
