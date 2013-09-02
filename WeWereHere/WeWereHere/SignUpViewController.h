//
//  SignUpViewController.h
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 29/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface SignUpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userNameTBox;
@property (weak, nonatomic) IBOutlet UITextField *passWordTBox;
@property (weak, nonatomic) IBOutlet UITextField *emailTBox;

- (IBAction)signUpPressed:(id)sender;

@end
