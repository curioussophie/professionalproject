//
//  LogInViewController.h
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 29/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface LogInViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userNameTBox;
- (IBAction)signInPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *passWordTBox;

@end
