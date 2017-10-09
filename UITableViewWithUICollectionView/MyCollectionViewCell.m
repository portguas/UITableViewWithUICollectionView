//
//  MyCollectionViewCell.m
//  UITableViewWithUICollectionView
//
//  Created by He,Yulong on 10/9/17.
//  Copyright © 2017 He,Yulong. All rights reserved.
//

#import "MyCollectionViewCell.h"
#import <PureLayout.h>

@implementation MyCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"imageLeft"]];
        [self.contentView addSubview:self.myImageView];
        CGSize size = [UIScreen mainScreen].bounds.size;
//        [_myImageView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.contentView];
//        [_myImageView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.contentView];
//        [_myImageView autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.contentView];
//        [_myImageView autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.contentView];
//        [_myImageView autoSetDimension:ALDimensionWidth toSize:size.width - 20 - 5 * 2];
//        [_myImageView autoSetDimension:ALDimensionHeight toSize:80];
    }
    return self;
}

@end
