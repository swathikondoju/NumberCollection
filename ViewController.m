//
//  ViewController.m
//  NumberCollection
//
//  Created by Swathi Kondoju on 5/18/15.
//  Copyright (c) 2015 Swathi Kondoju. All rights reserved.
//

#import "ViewController.h"
#import "NumberCollectionViewCell.h"

@interface ViewController ()

@end

static int cellCount = 1000;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.collectionView setDelegate:self];
    [self.collectionView setDataSource:self];

    UINib *cellNib = [UINib nibWithNibName:@"NumberCollectionCell" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"NumberCell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return cellCount;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NumberCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NumberCell" forIndexPath:indexPath];
    
    [cell.numberLabel setText:[NSString stringWithFormat:@"%ld", (long)indexPath.row+1]];
    return cell;
}


@end
