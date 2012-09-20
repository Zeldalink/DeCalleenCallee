//
//  Building.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 10/09/12.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Building : NSManagedObject

@property (nonatomic, retain) NSString * nameBuilding;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * telephone;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * cost;
@property (nonatomic, retain) NSNumber * latitud;
@property (nonatomic, retain) NSNumber * longitud;
@property (nonatomic, retain) NSString * schedule;
@property (nonatomic, retain) NSString * subway;
@property (nonatomic, retain) NSString * category;

@end
