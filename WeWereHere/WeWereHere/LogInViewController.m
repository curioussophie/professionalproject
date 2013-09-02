//
//  LogInViewController.m
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 29/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "LogInViewController.h"

@interface LogInViewController ()

@end

@implementation LogInViewController

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signInPressed:(id)sender {
   [PFUser logInWithUsernameInBackground:self.userNameTBox.text password:self.passWordTBox.text block:^(PFUser *user, NSError *error) {
      
      if (user) {
         // Do stuff after successful login
         [self performSegueWithIdentifier:@"jumpFromLogInToApp" sender:self];
      
      } else {
         // The login failed. Check error to see why
         NSLog(@"Failed!");
      }
   }];
   
   }
@end
