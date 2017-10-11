//
//  NextViewController.h
//  UITableViewWithUICollectionView
//
//  Created by He,Yulong on 10/10/17.
//  Copyright © 2017 He,Yulong. All rights reserved.
//

#import "ViewController.h"

@interface NextViewController : ViewController<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end
