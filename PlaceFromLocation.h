//
//  PlaceFromLocation.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Legend.h"
@interface PlaceFromLocation : NSObject{

    Legend *currentLegend;
    NSNumber *distanceFrom;
}
@property(nonatomic,strong)Legend *currentLegend;
@property(nonatomic,strong)NSNumber *distanceFrom;


@end
