//
//  ViewController.m
//  MyAppObjC
//
//  Created by Elijah on 6/24/20.
//  Copyright © 2020 Elijah Patric. All rights reserved.
//

#import "ViewController.h"
#import "CatCall.h"
#import "CatObject.h"
#import "CatCell.h"
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *loadButton;
@property (strong,nonatomic) NSMutableArray *catArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_titleLabel setText:(@"Fetch Cat Pics")];
    [_loadButton setTitle:(@"Get Cat Pic") forState:(UIControlStateNormal)];
    self.catArray = [[NSMutableArray alloc]init];
}

- (IBAction)loadButtonPressed:(UIButton *)sender {
    
    CatCall *myCat = [[CatCall alloc]init];
    CatObject *myObj = [myCat getCatObject];
    [self.catArray insertObject:myObj atIndex:0];
    [self.tableView reloadData];
   
}


# pragma mark - UITableView Methods
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CatCell *cell = [tableView dequeueReusableCellWithIdentifier:(@"cell")];
    CatObject *catObj = self.catArray[indexPath.row];
    cell.catImageView.image = catObj.catImage;
    cell.heightLabel.text = [NSString stringWithFormat:@"orginal image height: %@", [catObj.catHeight stringValue]];
    cell.widthLabel.text = [NSString stringWithFormat:@"orginal image height: %@", [catObj.catWidth stringValue]];

    
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.catArray.count;
}


@end
