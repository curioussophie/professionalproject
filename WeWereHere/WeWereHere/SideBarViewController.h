//
//  SideBarViewController.h
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 27/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import <Parse/Parse.h>
#import "PhoToCollectionViewController.h"
#import "TourCollectionViewController.h"

@interface SideBarViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

- (IBAction)logOutPressed:(id)sender;

@end
