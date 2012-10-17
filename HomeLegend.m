//
//  HomeLegend.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 08/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeLegend.h"
#import "Sitespecific.h"
#import "LegendDescriptionViewController.h"
#import "LegendImageViewController.h"
#import "Legend.h"
#import "DCCDAppDelegate.h"
#import "PlaceFromLocation.h"


@implementation HomeLegend
@synthesize locationManager;
@synthesize mapView=_mapView;
@synthesize nearestPlaces;
@synthesize sortedVenues;
@synthesize managedObjectContext=_managedObjectContext;
@synthesize coordinate;


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyNearestTenMeters];

        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    

    [super viewDidLoad];
   // self.locationManager = [[CLLocationManager alloc] init];
//	self.locationManager.delegate = self;
  //  [locationManager startMonitoringSignificantLocationChanges];
    
//    [locationManager setDesiredAccuracy:kCLLocationAccuracyNearestTenMeters];
    
    alreadyCenter = false;
    [self.navigationItem setTitle:@"De Calle en Calle"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Atrás";
    self.navigationItem.backBarButtonItem =tempral;
        
    NSString *deviceType = [UIDevice currentDevice].model;
    
	if([deviceType isEqualToString:@"iPhone"]){
		[self.locationManager startMonitoringSignificantLocationChanges];
	}
	
	else{
		[self.locationManager startUpdatingLocation];
		
	}
	
    
	//self.navigationItem.titleView = segmentedControl;

       // [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"Headiphone"] forBarMetrics:UIBarMetricsDefault];
       
    
    _mapView.delegate=self;
    
}
/*- (void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{MKCoordinateRegion mapRegion;   
    
    if (alreadyCenter) {
        
    }
    
    else {
        mapRegion.center = _mapView.userLocation.coordinate;
        mapRegion.span = MKCoordinateSpanMake(0.01, 0.01);
        [_mapView setRegion:mapRegion animated: YES];
        alreadyCenter = true;
    }
    
}*/

#pragma mark - paint for pin,selected which kind of class

- (MKAnnotationView *)mapView:(MKMapView *)map viewForAnnotation:(id <MKAnnotation>)annotation
{   
    static NSString *annotatioID;
    
    MKAnnotationView *annotationView =  (MKAnnotationView *)[_mapView dequeueReusableAnnotationViewWithIdentifier:annotatioID];
    
    if (annotationView == nil) {
        
        annotationView = [[MKAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:annotatioID];
        
    }
    if([annotation isKindOfClass:[MKUserLocation class]]){
        return nil;
    }
    if ([annotation isKindOfClass:[MyPoint class]]) {
        annotationView.image=[UIImage imageNamed:@"library.png"];
        annotationView.annotation = annotation;
        
        annotationView.canShowCallout = YES;
        UIButton *rigthButton =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        annotationView.rightCalloutAccessoryView = rigthButton;
        
        return annotationView;
    }
    
        else{
            return nil;
        }
        
        
    }
    
  /*  if ([annotation isKindOfClass:[MyPoint class]]) {
        annotationView.image=[UIImage imageNamed:@"library.png"];
        annotationView.annotation = annotation;
        
        annotationView.canShowCallout = YES;
        UIButton *rigthButton =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        annotationView.rightCalloutAccessoryView = rigthButton;
        
        return annotationView;
    }
    */
    
   

#pragma mark - Show information about annotationview

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    
    MyPoint *currentPint =(MyPoint *) view.annotation;
    
	LegendDescriptionViewController *legedDetail=[[LegendDescriptionViewController alloc]initWithNibName:@"LegendDescriptionViewController" bundle:nil];
    [legedDetail setDetailLegend:[currentPint pinLegend]];
    NSLog(@"audio name: %@",[[currentPint pinLegend] audioLegend]);
    [self.navigationController pushViewController:legedDetail animated:YES];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [_mapView setZoomEnabled:YES];
    [_mapView setScrollEnabled:YES];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void) centerMapOnUserLocation
{
	sortedVenues = [self sortVenues:nearestPlaces];
	MyPoint *venue = [sortedVenues objectAtIndex:0];
    NSLog(@"Venue Name: %@",[venue title]); 
    
	MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.02;
    span.longitudeDelta = 0.02;
    CLLocationCoordinate2D location;
    location.latitude = venue.coordinate.latitude;
    location.longitude =  venue.coordinate.longitude;
    region.span = span;
    region.center = location;
    [_mapView setRegion:region animated:NO];	
}

- (NSArray *) sortVenues:(NSArray *) venuesArray
{
	NSSortDescriptor *sortDescriptor;
	sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"distanceFromUser"
												 ascending:YES];
	NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
	NSArray *sortedArray;
	
	sortedArray = [venuesArray sortedArrayUsingDescriptors:sortDescriptors];
    
	return sortedArray;
}


-(void)LegendsInMap:(CLLocation *)newLocation{
    
    
    DCCDAppDelegate *delegate=(DCCDAppDelegate *)[[UIApplication sharedApplication] delegate];
    _managedObjectContext= [delegate managedObjectContext];
    NSError *error;
    // Test listing all FailedBankInfos from the store
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Legend"
                                              inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [_managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    nearestPlaces=[[NSMutableArray alloc]init];
    
    for(int i=0;i<[fetchedObjects count];i++){
        
        // NSLog(@"%d",i);
        CLLocationCoordinate2D theCoordinate1;
        MyPoint *Legendall=[[MyPoint alloc]init];
        Legend *leyenda2= [fetchedObjects objectAtIndex:i];

        theCoordinate1.latitude=[[leyenda2 latitude]doubleValue];
        theCoordinate1.longitude=[[leyenda2 longitude]doubleValue];
        Legendall.coordinate=theCoordinate1;
        Legendall.title=[leyenda2 legendName];
        Legendall.subtitle=@"Leyenda";
        [Legendall setPinLegend:leyenda2];
        CLLocation *venueLocation=[[CLLocation alloc]initWithLatitude:theCoordinate1.latitude longitude:theCoordinate1.longitude];
        //Distance
        Legendall.distanceFromUser=[self calculateDistanceFromUserToVenue:newLocation venue:venueLocation];
        [nearestPlaces addObject:Legendall];
        NSLog(@"%@",Legendall.distanceFromUser);
        
    }
[self loadVenuesInMap];
}
- (NSNumber *) calculateDistanceFromUserToVenue:(CLLocation *)userLocation venue:(CLLocation *)venueLocation
{
	CLLocationDistance dist = [userLocation distanceFromLocation:venueLocation];
	NSNumber *distance=[[NSNumber alloc] initWithInt:dist];
	return distance;
}
- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    
	[self LegendsInMap:newLocation];
	[self centerMapOnUserLocation];
	[self.locationManager stopUpdatingLocation];
    
    [self.locationManager stopMonitoringSignificantLocationChanges];
    
}
- (void)locationManager:(CLLocationManager *)manager
	   didFailWithError:(NSError *)error
{
	NSLog(@"Error: %@", [error description]); 
	
	CLLocation *newLocation = [[CLLocation alloc] initWithLatitude:19.434088 longitude:-99.157727];
	
	
	[self LegendsInMap:newLocation];
	[self centerMapOnUserLocation];
	[self.locationManager stopUpdatingLocation];
    
    [self.locationManager stopMonitoringSignificantLocationChanges];
	
	
}

- (void) loadVenuesInMap
{
	int firstCount = 0;
    sortedVenues = [self sortVenues:nearestPlaces];

	for (MyPoint *venue in sortedVenues) {
		
		if (firstCount == 0) {
			[_mapView selectAnnotation:venue animated:YES];
		}
		[_mapView addAnnotation:venue];
 		firstCount ++;
	}
	
}
-(void)dealloc{
    [locationManager setDelegate:nil];
}

@end
