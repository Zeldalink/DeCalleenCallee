//
//  Square.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Square : NSManagedObject

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * nameImage;
@property (nonatomic, retain) NSString * nameSquare;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;

@end
