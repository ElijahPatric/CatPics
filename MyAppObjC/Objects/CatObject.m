//
//  CatObject.m
//  MyAppObjC
//
//  Created by Elijah on 7/1/20.
//  Copyright © 2020 Elijah Patric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CatObject.h"

@interface CatObject()




@end

@implementation CatObject

-(instancetype)initWithURL:(NSString *)catURL catWidth:(NSNumber*)width catHeight:(NSNumber*)height {
    
    self = [super init];
    
    if (self) {
        self.catHeight = height;
        self.catWidth = width;
        self.catURL = catURL;
    }
     return self;
}


@end
