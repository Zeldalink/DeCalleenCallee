//
//  DCCDAppDelegate.h
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 08/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"
#import "FBRequest.h"

@interface DCCDAppDelegate : UIResponder <UIApplicationDelegate,FBSessionDelegate, FBRequestDelegate,FBDialogDelegate>{
    
Facebook *facebook;
}

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic,retain)Facebook *facebook;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@property (strong, nonatomic) UINavigationController *navigationController;
@property(strong,nonatomic)UIViewController *viewController;
- (void)fbDidLogin;
- (void)fbDidNotLogin:(BOOL)cancelled;
- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt;
- (void)fbDidLogout;
- (void)fbSessionInvalidated;
@end
