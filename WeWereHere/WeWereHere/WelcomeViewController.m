//
//  WelcomeViewController.m
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 29/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

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
   
   //[Comment createCommentDB];
   [Comment showCommentForAllUserDB];
   //[Photo createPhoto];

   PFUser *currentUser = [PFUser currentUser];
   if (currentUser) {
      // do stuff with the user
      [self performSegueWithIdentifier:@"jumpFromWelcomeToApp" sender:self];
   }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
