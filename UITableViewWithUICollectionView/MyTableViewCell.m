//
//  MyTableViewCell.m
//  UITableViewWithUICollectionView
//
//  Created by He,Yulong on 10/9/17.
//  Copyright © 2017 He,Yulong. All rights reserved.
//

#import "MyTableViewCell.h"
#import "MyCollectionViewCell.h"
#import <PureLayout.h>

static NSString * const kCollectionViewCell = @"CollectionViewCell";

@interface MyTableViewCell() {
    
}
@end

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGSize size = [UIScreen mainScreen].bounds.size;
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing = 5;
        layout.minimumInteritemSpacing = 5;
        layout.itemSize = CGSizeMake(size.width - 20 - 5 * 2, 80);
        self.myCollectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        self.myCollectionView.delegate = self;
        self.myCollectionView.dataSource = self;
//        self.myCollectionView.scrollEnabled = NO;

        [self.myCollectionView registerClass:[MyCollectionViewCell class] forCellWithReuseIdentifier:kCollectionViewCell];
        [self.contentView addSubview:self.myCollectionView];
        
        [self.myCollectionView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.contentView];
        [self.myCollectionView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.contentView withOffset:10];
        
        [self.myCollectionView autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.contentView];
        [self.myCollectionView autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.contentView withOffset:-10];
        
        
    }
    
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.myCollectionView.frame = self.contentView.bounds;
}


#pragma UICollectionViewDataSource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCell forIndexPath:indexPath];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

@end
