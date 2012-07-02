//
//  Legend.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 19/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Legend : NSManagedObject

@property (nonatomic, retain) NSString * imageName;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSString * legendName;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * texttwitter;
@property (nonatomic, retain) NSString * audioLegend;

@end
