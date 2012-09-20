//
//  Sitespecific.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Sitespecific.h"
#import "LegendParentViewController.h"
#import "LegendDescriptionViewController.h"
#import "SiteSpecificDetailViewController.h"
#import "ArqueologyDescripcionViewController.h"
#import "LibraryDetailViewController.h"
#import "TheatherViewController.h"
#import "ChurchDescripctionViewController.h"
#import "SquareDescriptionController.h"
#import "Square.h"
#import "DCCDAppDelegate.h"
#import "Arqueology.h"
#import "Church.h"
#import "Library.h"
#import "Theather.h"
#import "Square.h"
#import "Museum.h"


@implementation Sitespecific
@synthesize mapView=_mapView;
@synthesize nearestPlaces;
@synthesize locationManager;
@synthesize sortedVenues;
@synthesize managedObjectContext=_managedObjectContext;
@synthesize coordinate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
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
    // Do any additional setup after loading the view from its nib.
  //  [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"Headiphone"] forBarMetrics:UIBarMetricsDefault];
    
    
    [self.navigationItem setTitle:@"De Calle en Calle"];
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *tempral=[[UIBarButtonItem alloc]init];
    tempral.title=@"Atrás";
    self.navigationItem.backBarButtonItem =tempral;

    self.locationManager = [[CLLocationManager alloc] init];
	self.locationManager.delegate = self;
    [locationManager startMonitoringSignificantLocationChanges];
    NSString *deviceType = [UIDevice currentDevice].model;
    
	if([deviceType isEqualToString:@"iPhone"]){
		[self.locationManager startMonitoringSignificantLocationChanges];
	}
	
	else{
		[self.locationManager startUpdatingLocation];
		
	}
    _mapView.delegate=self;
    
    

    _mapView.delegate=self;
} 

#pragma mark - Difference about Categories of sites in Map

- (MKAnnotationView *)mapView:(MKMapView *)map viewForAnnotation:(id <MKAnnotation>)annotation
{   
    static NSString *annotatioID;
    
    MKAnnotationView *annotationView =  (MKAnnotationView *)[_mapView dequeueReusableAnnotationViewWithIdentifier:annotatioID];
    
    if (annotationView == nil) {
        
        annotationView = [[MKAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:annotatioID];
        
    }
    
    if ([annotation isKindOfClass:[MyPointMuseum class]]) {
        annotationView.image=[UIImage imageNamed:@"museum.png"];
        annotationView.annotation = annotation;
        
        annotationView.canShowCallout = YES;
        UIButton *rigthButton =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        annotationView.rightCalloutAccessoryView = rigthButton;
        
        return annotationView;
    }
    else if([annotation isKindOfClass:[MyPointarqueology class]]){
    
        annotationView.image=[UIImage imageNamed:@"arqueology.png"];
        annotationView.annotation = annotation;
        
        annotationView.canShowCallout = YES;
        UIButton *rigthButton =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        annotationView.rightCalloutAccessoryView = rigthButton;
        
        return annotationView;

    }
    else if([annotation isKindOfClass:[MyPointLibrary class]]){
        
        annotationView.image=[UIImage imageNamed:@"libraryb.png"];
        annotationView.annotation = annotation;
        
        annotationView.canShowCallout = YES;
        UIButton *rigthButton =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        annotationView.rightCalloutAccessoryView = rigthButton;
        
        return annotationView;
        
    }
    else if([annotation isKindOfClass:[MyPointChurch class]]){
        
        annotationView.image=[UIImage imageNamed:@"church.png"];
        annotationView.annotation = annotation;
        
        annotationView.canShowCallout = YES;
        UIButton *rigthButton =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        annotationView.rightCalloutAccessoryView = rigthButton;
        
        return annotationView;
        
    }
    else if([annotation isKindOfClass:[MyPointplace class]]){
        
        annotationView.image=[UIImage imageNamed:@"place.png"];
        annotationView.annotation = annotation;
        
        annotationView.canShowCallout = YES;
        UIButton *rigthButton =  [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        annotationView.rightCalloutAccessoryView = rigthButton;
        
        return annotationView;
        
    }
    

    else if([annotation isKindOfClass:[MyPointtheater class]]){
        
        annotationView.image=[UIImage imageNamed:@"theater.png"];
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
#pragma mark - Show Detail about Categories


- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{

    if ([view.annotation isKindOfClass:[MyPointMuseum class]]) {
    
        MyPointMuseum *mypoint1=(MyPointMuseum *)view.annotation;
        SiteSpecificDetailViewController *siteSpecific=[[SiteSpecificDetailViewController alloc]initWithNibName:@"SiteSpecificDetailViewController" bundle:nil];    
        [siteSpecific setDetailMuseum:[mypoint1 pinMuseum]];
        [self.navigationController pushViewController:siteSpecific animated:YES];
    }
    else if([view.annotation isKindOfClass:[MyPointarqueology class]]){
       
        MyPointarqueology *mypointarqueology=(MyPointarqueology *)view.annotation;
        
        ArqueologyDescripcionViewController *arqueology=[[ArqueologyDescripcionViewController alloc]initWithNibName:@"ArqueologyDescripcionViewController" bundle:nil];
        [arqueology setDetailArqueology:[mypointarqueology pinArque]];
        
        [self.navigationController pushViewController:arqueology animated:YES];
    
    }
    else if([view.annotation isKindOfClass:[MyPointLibrary class]]){
        MyPointLibrary *mypointlibrary=(MyPointLibrary *)view.annotation;
        LibraryDetailViewController *detail=[[LibraryDetailViewController alloc]initWithNibName:@"LibraryDetailViewController" bundle:nil];
        [detail setDetailLibrary:[mypointlibrary pinLibrary]];
        [self.navigationController pushViewController:detail animated:YES];
    
    }
    else if([view.annotation isKindOfClass:[MyPointChurch class]]){
        MyPointChurch *mypointchurch=(MyPointChurch *)view.annotation;
        ChurchDescripctionViewController *churchpoint=[[ChurchDescripctionViewController alloc]initWithNibName:@"ChurchDescripctionViewController" bundle:nil];
 
        [churchpoint setDetailChurch:[mypointchurch pinChurch]];
        [self.navigationController pushViewController:churchpoint animated:YES];
    }
    else if([view.annotation isKindOfClass:[MyPointtheater class]]){
        MyPointtheater *myponttheather=(MyPointtheater*)view.annotation;
        TheatherViewController *theather=[[TheatherViewController alloc]initWithNibName:@"TheatherViewController" bundle:nil];
        [theather setDetailTheather:[myponttheather pinTheather]];
        [self.navigationController pushViewController:theather animated:YES];
    }
    else if([view.annotation  isKindOfClass:[MyPointplace class]]){
        MyPointplace *squarepoint=(MyPointplace *)view.annotation;
        SquareDescriptionController *squarepo=[[SquareDescriptionController alloc]initWithNibName:@"SquareDescriptionController" bundle:nil];
        [squarepo setDetailSquare:[squarepoint pinSquare]];
        [self.navigationController pushViewController:squarepo animated:YES];
    }
}




    - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    [_mapView setZoomEnabled:YES];
    [_mapView setScrollEnabled:YES];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
#pragma mark - 

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
    
	[self siteSpecific:newLocation];
	[self centerMapOnUserLocation];
	[self.locationManager stopUpdatingLocation];
    
    [self.locationManager stopMonitoringSignificantLocationChanges];
    
}
- (void)locationManager:(CLLocationManager *)manager
	   didFailWithError:(NSError *)error
{
	NSLog(@"Error: %@", [error description]); 
	
	CLLocation *newLocation = [[CLLocation alloc] initWithLatitude:19.434088 longitude:-99.157727];
	
	
	[self siteSpecific:newLocation];
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
#pragma mark - Read Sites from Core Data and save in NSArray
-(void)siteSpecific:(CLLocation *)newLocation{
    
    DCCDAppDelegate *delegate=(DCCDAppDelegate *)[[UIApplication sharedApplication] delegate];
    _managedObjectContext= [delegate managedObjectContext];
    NSError *error;
    // Test listing all FailedBankInfos from the store
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Arqueology"
                                              inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [_managedObjectContext executeFetchRequest:fetchRequest error:&error];
    nearestPlaces=[[NSMutableArray alloc]init];

        for(int i=0;i<[fetchedObjects count];i++){
        CLLocationCoordinate2D theCoordinate1;
        MyPointarqueology *myAnntation1=[[MyPointarqueology alloc]init];
        
        Arqueology *arqueologysite= [fetchedObjects objectAtIndex:i];
        
        theCoordinate1.latitude=[[arqueologysite latitude]doubleValue];
        theCoordinate1.longitude=[[arqueologysite longitude]doubleValue];
        myAnntation1.coordinate=theCoordinate1;
        myAnntation1.title=[arqueologysite nameArqueology];
        myAnntation1.subtitle=[arqueologysite category];
        [myAnntation1 setPinArque:arqueologysite];
        CLLocation *venueLocation=[[CLLocation alloc]initWithLatitude:theCoordinate1.latitude longitude:theCoordinate1.longitude];
        //Distance
        myAnntation1.distanceFromUser=[self calculateDistanceFromUserToVenue:newLocation venue:venueLocation];
        [nearestPlaces addObject:myAnntation1];
        NSLog(@"%@",myAnntation1.distanceFromUser);

    }
    
    NSFetchRequest *fetchRequestmuseos= [[NSFetchRequest alloc]init];
    NSEntityDescription *entidad=[NSEntityDescription entityForName:@"Museum" inManagedObjectContext:_managedObjectContext];
    [fetchRequestmuseos setEntity:entidad];
    NSArray *fetchedObjectsmuseos=[_managedObjectContext executeFetchRequest:fetchRequestmuseos error:&error];
    
    
    for(int i=0;i<[fetchedObjectsmuseos count];i++){
        
        CLLocationCoordinate2D theCoordinate2;
        MyPointMuseum *myAnnotationmuseum=[[MyPointMuseum alloc]init];
        Museum *mymuseum=[fetchedObjectsmuseos objectAtIndex:i];
        theCoordinate2.latitude= [[mymuseum latitude]floatValue];
        theCoordinate2.longitude=[[mymuseum longitude]floatValue];
        myAnnotationmuseum.coordinate=theCoordinate2;
        myAnnotationmuseum.title=[mymuseum nameMuseum];
        myAnnotationmuseum.subtitle=[mymuseum category];
        [myAnnotationmuseum setPinMuseum:mymuseum];
        CLLocation *venueLocation=[[CLLocation alloc]initWithLatitude:theCoordinate2.latitude longitude:theCoordinate2.longitude];
        
        myAnnotationmuseum.distanceFromUser=[self calculateDistanceFromUserToVenue:newLocation venue:venueLocation];
        [nearestPlaces addObject:myAnnotationmuseum];
        NSLog(@"%@",myAnnotationmuseum.distanceFromUser);

    }
    
    NSFetchRequest *fetchRequestChurch=[[NSFetchRequest alloc]init];
    NSEntityDescription *entitychurch=[NSEntityDescription entityForName:@"Church" inManagedObjectContext:_managedObjectContext];
    [fetchRequestChurch setEntity:entitychurch];
    NSArray *fetchedObjectsChurch=[_managedObjectContext executeFetchRequest:fetchRequestChurch error:&error];
    
  //  NSMutableArray *annotationsChurch=[[NSMutableArray alloc]init];
    for(int i=0;i<[fetchedObjectsChurch count];i++){
        
        CLLocationCoordinate2D theCoordinate3;
        MyPointChurch *myAnnotationchurch=[[MyPointChurch alloc]init];
        Church *mychurch=[fetchedObjectsChurch objectAtIndex:i];
        theCoordinate3.latitude=[[mychurch latitude]floatValue];
        theCoordinate3.longitude=[[mychurch longitude]floatValue];
        myAnnotationchurch.coordinate=theCoordinate3;
        myAnnotationchurch.title=[mychurch nameChurch];
        myAnnotationchurch.subtitle=[mychurch category];
        [myAnnotationchurch setPinChurch:mychurch];
        CLLocation *venueLocation=[[CLLocation alloc]initWithLatitude:theCoordinate3.latitude longitude:theCoordinate3.longitude];
        
        myAnnotationchurch.distanceFromUser=[self calculateDistanceFromUserToVenue:newLocation venue:venueLocation];
        [nearestPlaces addObject:myAnnotationchurch];
        NSLog(@"%@",myAnnotationchurch.distanceFromUser);
    }
    
    
    NSFetchRequest *fetchRequestLibrary=[[NSFetchRequest alloc]init];
    NSEntityDescription *entityLibrary=[NSEntityDescription entityForName:@"Library" inManagedObjectContext:_managedObjectContext];
    [fetchRequestLibrary setEntity:entityLibrary];
    NSArray *fecthedObjetsLibrary=[_managedObjectContext executeFetchRequest:fetchRequestLibrary error:&error];
    
    
    for(int i=0;i<[fecthedObjetsLibrary count];i++){
        CLLocationCoordinate2D theCoordinate4;
        MyPointLibrary *myannotationLibrary=[[MyPointLibrary alloc]init];
        Library *mylibrary=[fecthedObjetsLibrary objectAtIndex:i];
        theCoordinate4.latitude=[[mylibrary latitude]floatValue];
        theCoordinate4.longitude=[[mylibrary longitude]floatValue];
        myannotationLibrary.coordinate=theCoordinate4;
        myannotationLibrary.title=[mylibrary nameLibrary];
        myannotationLibrary.subtitle=[mylibrary category];
        [myannotationLibrary setPinLibrary:mylibrary];
        CLLocation *venueLocation=[[CLLocation alloc]initWithLatitude:theCoordinate4.latitude longitude:theCoordinate4.longitude];
        
        myannotationLibrary.distanceFromUser=[self calculateDistanceFromUserToVenue:newLocation venue:venueLocation];
        [nearestPlaces addObject:myannotationLibrary];
        NSLog(@"%@",myannotationLibrary.distanceFromUser);   
    }
    
    NSFetchRequest *fetchRequestTheater=[[NSFetchRequest alloc]init];
    NSEntityDescription *entityTheather=[NSEntityDescription entityForName:@"Theather" inManagedObjectContext:_managedObjectContext];
    [fetchRequestTheater setEntity:entityTheather];
    NSArray *fetchedObjectsTheather=[_managedObjectContext executeFetchRequest:fetchRequestTheater error:&error];
    
 //   NSMutableArray *annotationsTheather=[[NSMutableArray alloc]init];
    
    for(int i=0;i<[fetchedObjectsTheather count];i++){
        CLLocationCoordinate2D theCoordinate5;
        MyPointtheater *myannotationTheather=[[MyPointtheater alloc]init];
        Theather *mytheather=[fetchedObjectsTheather objectAtIndex:i];
        theCoordinate5.latitude=[[mytheather latitude]floatValue];
        theCoordinate5.longitude=[[mytheather longitude]floatValue];
        myannotationTheather.coordinate=theCoordinate5;
        myannotationTheather.title=[mytheather nameTheather];
        myannotationTheather.subtitle=[mytheather category];
        [myannotationTheather setPinTheather:mytheather];
        CLLocation *venueLocation=[[CLLocation alloc]initWithLatitude:theCoordinate5.latitude longitude:theCoordinate5.longitude];
        
        myannotationTheather.distanceFromUser=[self calculateDistanceFromUserToVenue:newLocation venue:venueLocation];
        [nearestPlaces addObject:myannotationTheather];
        NSLog(@"%@",myannotationTheather.distanceFromUser);   
    }
    
    NSFetchRequest *fetchRequestSquare=[[NSFetchRequest alloc]init];
    NSEntityDescription *entitySquare=[NSEntityDescription entityForName:@"Square" inManagedObjectContext:_managedObjectContext];
    [fetchRequestSquare setEntity:entitySquare];
    NSArray *fetchedObjectsSquare=[_managedObjectContext executeFetchRequest:fetchRequestSquare error:&error];
    
    //NSMutableArray *annotationsSquare=[[NSMutableArray alloc]init];
    for(int i=0;i<[fetchedObjectsSquare count];i++){
        CLLocationCoordinate2D theCoordinate6;
        MyPointplace *myannotationSquare=[[MyPointplace alloc]init];
        Square *mysquare=[fetchedObjectsSquare objectAtIndex:i];
        theCoordinate6.latitude=[[mysquare latitude]floatValue];
        theCoordinate6.longitude=[[mysquare longitude]floatValue];
        myannotationSquare.coordinate=theCoordinate6;
        myannotationSquare.title=[mysquare nameSquare];
        myannotationSquare.subtitle=[mysquare category];
        [myannotationSquare setPinSquare:mysquare];
        CLLocation *venueLocation=[[CLLocation alloc]initWithLatitude:theCoordinate6.latitude longitude:theCoordinate6.longitude];
        
        myannotationSquare.distanceFromUser=[self calculateDistanceFromUserToVenue:newLocation venue:venueLocation];
        [nearestPlaces addObject:myannotationSquare];
        NSLog(@"%@",myannotationSquare.distanceFromUser);  
    }
[self loadVenuesInMap];
}


@end
