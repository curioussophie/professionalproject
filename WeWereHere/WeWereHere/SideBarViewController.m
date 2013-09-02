//
//  SideBarViewController.m
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 27/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "SideBarViewController.h"

@interface SideBarViewController ()
@property(strong, nonatomic) NSArray *tableData;
@end

@implementation SideBarViewController

@synthesize tableData;


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
   
   // Load side bar item from property list
   
   NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"SideBarItem" ofType:@"plist"];
   NSDictionary *plistRoot = [NSDictionary dictionaryWithContentsOfFile:plistPath];
   self.tableData = [plistRoot objectForKey:@"SideBarItem"];

}

- (void)didReceiveMemoryWarning
{
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   
   return 1;
   
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   
   return [self.tableData count];
   
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
   NSString *cellIdentifier = [self.tableData objectAtIndex:indexPath.row];   
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
   return cell;
   
}

- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
   
   /*
   if ([segue.identifier isEqualToString:@"jumpFromSideBarToTourCollection"]){
      //UIViewController *vcNew = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:NULL] instantiateViewControllerWithIdentifier:@"TourCollection"];
      TourCollectionViewController *vcNew = (TourCollectionViewController*)segue.destinationViewController;
      
   };
   
   if ([segue.identifier isEqualToString:@"jumpFromSideBarToPhotoCollection"]){
      //UIViewController *vcNew = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:NULL] instantiateViewControllerWithIdentifier:@"TourCollection"];
      PhoToCollectionViewController *vcNew = (PhoToCollectionViewController*)segue.destinationViewController;
      
   };
    */

  
   
   if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] ) {
      SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
      
      swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc) {
         
          
         // Swap out the Front view controller and display
         [self.revealViewController setFrontViewController:dvc];
         [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: YES];
         
         
         
      };
      
   }
   
}
- (IBAction)logOutPressed:(id)sender {
   
   [PFUser logOut];
   [self dismissViewControllerAnimated:YES completion:NULL];
   //[self.navigationController popViewControllerAnimated:YES];
}
@end