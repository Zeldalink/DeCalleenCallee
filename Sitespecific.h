//
//  Sitespecific.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyPoint.h"
#import <CoreLocation/CoreLocation.h>
#import "MyPointarqueology.h"
#import "MyPointChurch.h"
#import "MyPointLibrary.h"
#import "MyPointMuseum.h"
#import "MyPointplace.h"
#import "MyPointtheater.h"
#import "MyPointBuilding.h"

@interface Sitespecific : UIViewController<MKMapViewDelegate,MKAnnotation,CLLocationManagerDelegate>{
	
    IBOutlet MKMapView *mapView;
    CLLocationManager *locationManager;
    NSArray *sortedVenues;

}

@property(nonatomic,strong)IBOutlet MKMapView *mapView;

@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@property(nonatomic,strong)CLLocationManager *locationManager;
@property (nonatomic, strong) NSMutableArray *nearestPlaces;
@property (nonatomic,strong) NSArray *sortedVenues;


-(void)LegendsInMap:(CLLocation *)newLocation;
//-(void)alllegends;
-(void)siteSpecific:(CLLocation *)newLocation;
- (NSNumber *) calculateDistanceFromUserToVenue:(CLLocation *)userLocation venue:(CLLocation *)venueLocation;
- (NSArray *) sortVenues:(NSArray *) venuesArray;
- (void) loadVenuesInMap;
//- (void)zoomToUserLocation:(MKUserLocation *)userLocation;
@end
