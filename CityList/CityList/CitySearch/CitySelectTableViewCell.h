//
//  CitySelectTableViewCell.h
//  CityList
//
//  Created by Tim Geng on 4/22/15.
//
//

#import <UIKit/UIKit.h>

@interface CitySelectTableViewCell : UITableViewCell<UICollectionViewDataSource,UICollectionViewDelegate>


@property(nonatomic,weak) IBOutlet UICollectionView *collectView;
@property(nonatomic,weak) IBOutlet UILabel *titleLabel;
@property(nonatomic,strong) NSIndexPath *indexPath;
@property(nonatomic,strong) NSArray *citys;
-(void)setDataModal:(NSIndexPath *)indexPath;



@end
