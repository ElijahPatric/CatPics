//
//  CatCall.m
//  MyAppObjC
//
//  Created by Elijah on 6/29/20.
//  Copyright © 2020 Elijah Patric. All rights reserved.
//fetch random cat image https://api.thecatapi.com/v1/images/search

#import <UIKit/UIKit.h>
#import "CatCall.h"
#import "CatObject.h"
@interface CatCall()
@property (nonatomic,strong) NSMutableArray *catArray;
#define catURLString @"https://api.thecatapi.com/v1/images/search"
@end

@implementation CatCall

- (CatObject *)getCatObject {
    
    NSURL *catURL = [NSURL URLWithString:catURLString];
    NSData *catData = [NSData dataWithContentsOfURL:catURL];
    NSError *error = nil;
    
    NSArray *catArray = [NSJSONSerialization JSONObjectWithData:catData options:0 error:&error];
    NSDictionary *catDict = catArray[0];
    
    NSString *imageURLString = catDict[@"url"];
    NSNumber* imageWidth = catDict[@"width"];
    NSNumber* imageHeight = catDict[@"height"];
    
    CatObject *catObject = [[CatObject alloc] initWithURL:imageURLString catWidth:imageWidth catHeight:imageHeight];
    
    NSData *imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: imageURLString]];
    
    UIImage *catImage = [UIImage imageWithData:imageData];
    
    catObject.catImage = catImage;
    
    
    
    return catObject;
    
}





@end
