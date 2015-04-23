//
//  CitySelectTableViewCell.m
//  CityList
//
//  Created by Tim Geng on 4/22/15.
//
//

#import "CitySelectTableViewCell.h"
#import "CitySelectCollectionViewCell.h"

#define CitySelectCollectionViewCellIdentifier @"CitySelectCollectionViewCellIdentifier"

@implementation CitySelectTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [self.collectView registerNib:[UINib nibWithNibName:NSStringFromClass([CitySelectCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:CitySelectCollectionViewCellIdentifier];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (self.indexPath.row == 2) {
        return 9;
    }
    return 1;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CitySelectCollectionViewCell *cell = (CitySelectCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:CitySelectCollectionViewCellIdentifier forIndexPath:indexPath];
    
    cell.city.text = [self.citys objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)setDataModal:(NSIndexPath *)indexPath{
  
    switch (indexPath.row) {
        case 0:
            self.titleLabel.text = @"定位城市";
            self.citys = @[@"上海市"];
             
            break;
        case 1:
            
            self.titleLabel.text = @"最近访问城市";
            self.citys = @[@"上海市"];
            
            break;
        case 2:
            self.titleLabel.text = @"热门城市";
            self.citys = @[@"北京市",@"成都市",@"广州市",@"西安市",@"厦门市",@"郑州市",@"重庆市",@"鞍山市",@"上海市",];

            break;
        default:
            break;
    }
    self.indexPath = indexPath;
    [self.collectView reloadData];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
