//
//  Church.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Church : NSManagedObject

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSString * nameChurch;
@property (nonatomic, retain) NSString * nameImage;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSNumber * latitude;

@end
