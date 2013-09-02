//
//  Comment.m
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 31/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "Comment.h"

@implementation Comment

+ (void)createCommentDB {
   PFUser *currentUser = [PFUser currentUser];
   
   PFObject *newComment = [PFObject objectWithClassName:@"Comment"];
   
   [newComment setObject:@"first comment" forKey:@"content"];
   [newComment setObject:currentUser forKey:@"commenter"];
   
   [newComment saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
      if(!error){
         NSLog(@"New comment has been created!");
      }
   }];
}

+ (void)showCommentForEachUserDB {
   
   // Create query
   PFQuery *userCommentQuery = [PFQuery queryWithClassName:@"Comment"];
   
   // Follow relationship
   [userCommentQuery whereKey:@"commenter" equalTo:[PFUser currentUser]];
   
   [userCommentQuery findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
      if(!error){
         [objects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"%@", obj);   
         }];
      }
   }];
   
}

+ (void)showCommentForAllUserDB {
   // Create query
   PFQuery *allUserCommentQuery = [PFQuery queryWithClassName:@"Comment"];
   
   // Follow relationship
   [allUserCommentQuery selectKeys:@[@"content"]];
   [allUserCommentQuery findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
      [objects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                     NSLog(@"%@", obj);   
      }];
   }];
}

@end
