//
//  Square.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/09/12.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Square : NSManagedObject

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * nameSquare;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * cost;
@property (nonatomic, retain) NSString * telephone;
@property (nonatomic, retain) NSString * schedule;
@property (nonatomic, retain) NSString * subway;

@end
