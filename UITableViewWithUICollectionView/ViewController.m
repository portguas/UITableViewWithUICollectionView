//
//  ViewController.m
//  UITableViewWithUICollectionView
//
//  Created by He,Yulong on 10/9/17.
//  Copyright © 2017 He,Yulong. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

static NSString * const kTableviewCell = @"MyTableViewCell";
@interface ViewController ()

@property (strong, nonatomic) UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addUITableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addUITableView {
    self.myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    self.myTableView.estimatedRowHeight = 60;
    self.myTableView.rowHeight = UITableViewAutomaticDimension;
    [self.myTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:kTableviewCell];
    [self.view addSubview:self.myTableView];
}

#pragma UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTableviewCell forIndexPath:indexPath];
    [cell.myCollectionView reloadData];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

@end
