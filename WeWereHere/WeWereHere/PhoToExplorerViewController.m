//
//  PhoToCollectionViewController.m
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 31/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "PhoToExplorerViewController.h"

@interface PhoToExplorerViewController ()

@end

@implementation PhoToExplorerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
   
   _sideBarBtn.target = self.revealViewController;
   _sideBarBtn.action = @selector(revealToggle:);
   
   // Set the gesture
   [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
   return 10;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   static NSString *identifier = @"PhotoCollectionCell";
   
   UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
   
   UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
   recipeImageView.image = [UIImage imageNamed:@"Icon.png"];
   
   return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
