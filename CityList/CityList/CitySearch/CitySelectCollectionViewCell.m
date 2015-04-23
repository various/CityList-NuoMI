//
//  CitySelectCollectionViewCell.m
//  CityList
//
//  Created by Tim Geng on 4/23/15.
//
//

#import "CitySelectCollectionViewCell.h"

@implementation CitySelectCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    self.city.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.city.layer.borderWidth = 1.0;
    self.city.layer.cornerRadius = 5.0;
    self.city.layer.masksToBounds = YES;
}

@end
