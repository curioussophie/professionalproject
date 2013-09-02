//
//  Photo.m
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 31/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "Photo.h"

@implementation Photo

+(void) createPhoto {
   PFObject *newPhoto = [PFObject objectWithClassName:@"Photo"];
   [newPhoto setObject:@"Pic 01" forKey:@"caption"];
   [newPhoto setObject:[PFUser currentUser] forKey:@"author"];
   
   PFObject *newComment = [PFObject objectWithClassName:@"Comment"];
   [newComment setObject:@"Content with photo" forKey:@"content"];
   [newComment setObject:[PFUser currentUser] forKey:@"commenter"];
      
      
   [newPhoto setObject:newComment forKey:@"comment"];
   [newPhoto saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
      NSLog(@"New photo has been created");
   }];
   
}

@end
