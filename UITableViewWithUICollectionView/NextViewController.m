//
//  NextViewController.m
//  UITableViewWithUICollectionView
//
//  Created by He,Yulong on 10/10/17.
//  Copyright © 2017 He,Yulong. All rights reserved.
//

#import "NextViewController.h"
#import <PureLayout.h>
#import "MyCollectionViewCell.h"
static NSString * const kCollectionViewCellVC = @"CollectionViewCell";

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGSize size = [UIScreen mainScreen].bounds.size;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    layout.itemSize = CGSizeMake(size.width - 20 - 5 * 2, 80);
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    //        self.myCollectionView.scrollEnabled = NO;
    
    [self.collectionView registerClass:[MyCollectionViewCell class] forCellWithReuseIdentifier:kCollectionViewCellVC];
    [self.view addSubview:self.collectionView];
    
    [self.collectionView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.view];
    [self.collectionView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.view withOffset:10];
    
    [self.collectionView autoSetDimension:ALDimensionWidth toSize:[UIScreen mainScreen].bounds.size.width];
    [self.collectionView autoSetDimension:ALDimensionHeight toSize:200];
    [self.collectionView autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.view];
    [self.collectionView autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.view withOffset:-10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UICollectionViewDataSource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellVC forIndexPath:indexPath];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

@end
