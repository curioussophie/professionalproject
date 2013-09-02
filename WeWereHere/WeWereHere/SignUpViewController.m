//
//  SignUpViewController.m
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 29/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController


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

- (IBAction)signUpPressed:(id)sender {
   
   PFUser *currUser = [PFUser user];
   currUser.username = self.userNameTBox.text;
   currUser.password = self.passWordTBox.text;
   currUser.email = self.emailTBox.text;

   [currUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
      if (!error) {
         // Jump to main interface
         [self performSegueWithIdentifier:@"jumpFromSignUpToApp" sender:self];
      } else {
         //NSString *errorString = [[error userInfo] objectForKey:@"error"];
         // Show the errorString somewhere and let user try again
      }
   }];

}
@end
