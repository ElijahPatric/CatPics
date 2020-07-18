//
//  CatObject.h
//  MyAppObjC
//
//  Created by Elijah on 7/1/20.
//  Copyright © 2020 Elijah Patric. All rights reserved.
//

#ifndef CatObject_h
#define CatObject_h


#endif /* CatObject_h */
#import <UIKit/UIkit.h>
@interface CatObject : NSObject
-(instancetype)initWithURL:(NSString *)catURL catWidth:(NSNumber*)width catHeight:(NSNumber*)height;
@property (nonatomic,strong) NSNumber* catHeight;
@property (nonatomic,strong) NSNumber* catWidth;
@property (nonatomic, strong) NSString * catURL;
@property (nonatomic, strong) UIImage* catImage;

@end
