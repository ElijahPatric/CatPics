//
//  AppDelegate.h
//  MyAppObjC
//
//  Created by Elijah on 6/24/20.
//  Copyright © 2020 Elijah Patric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

