//
//  HomeLegend.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 08/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <AVFoundation/AVFoundation.h>
#import "MyPoint.h"




@interface HomeLegend : UIViewController<MKMapViewDelegate,MKAnnotation,CLLocationManagerDelegate,AVAudioPlayerDelegate>
{
	CLLocationManager *locationManager;
    IBOutlet MKMapView *mapView;
    BOOL alreadyCenter;
    NSArray *sortedVenues;
    NSMutableArray *zonesLocation;
	NSMutableArray *zonesNames;
    

}

@property(nonatomic,strong)IBOutlet MKMapView *mapView;
@property(nonatomic,strong)CLLocationManager *locationManager;
@property (nonatomic, strong) NSMutableArray *nearestPlaces;
@property (nonatomic,strong) NSArray *sortedVenues;
@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
-(void)LegendsInMap:(CLLocation *)newLocation;
//-(void)alllegends;
- (NSNumber *) calculateDistanceFromUserToVenue:(CLLocation *)userLocation venue:(CLLocation *)venueLocation;
- (NSArray *) sortVenues:(NSArray *) venuesArray;
- (void) loadVenuesInMap;

@end
