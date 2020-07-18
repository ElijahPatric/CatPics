//
//  CatCell.h
//  MyAppObjC
//
//  Created by Elijah on 7/15/20.
//  Copyright © 2020 Elijah Patric. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CatCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *widthLabel;
@property (weak, nonatomic) IBOutlet UIImageView *catImageView;


@end

NS_ASSUME_NONNULL_END
