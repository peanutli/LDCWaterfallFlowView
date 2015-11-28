//
//  ViewController.m
//  LDCWaterfallFlowView
//
//  Created by apple on 15/11/29.
//  Copyright © 2015年 dachuan.com. All rights reserved.
//

#import "ViewController.h"
#import "LDCCollectionViewFlowLayout.h"
#import "LDCCell.h"

@interface ViewController ()

@end

@implementation ViewController

 NSString * kCellID = @"cellID";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _ldcCollectionView.backgroundColor = [UIColor whiteColor];
    [_ldcCollectionView registerClass:[LDCCell class] forCellWithReuseIdentifier:kCellID];

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 31;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LDCCell * collectionViewCell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    if(indexPath.item %2 == 0){
        //collectionViewCell.backgroundColor = [UIColor greenColor];
        collectionViewCell.photoImageView.backgroundColor = [UIColor greenColor];
        
    }
    else
        //collectionViewCell.backgroundColor = [UIColor orangeColor];
        collectionViewCell.photoImageView.backgroundColor = [UIColor orangeColor];
    collectionViewCell.photoLabel.text = [NSString stringWithFormat:@"%ld",indexPath.item];
    return collectionViewCell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
