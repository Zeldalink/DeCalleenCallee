//
//  Arqueology.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Arqueology : NSManagedObject

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSString * nameArqueology;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * nameImage;

@end