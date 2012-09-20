//
//  Legend.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 09/09/12.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Legend : NSManagedObject

@property (nonatomic, retain) NSString * audioLegend;
@property (nonatomic, retain) NSString * imageName;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSString * legendName;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * texttwitter;

@end
