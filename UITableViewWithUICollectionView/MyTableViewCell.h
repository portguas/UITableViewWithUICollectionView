//
//  MyTableViewCell.h
//  UITableViewWithUICollectionView
//
//  Created by He,Yulong on 10/9/17.
//  Copyright © 2017 He,Yulong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *myCollectionView;

@end
