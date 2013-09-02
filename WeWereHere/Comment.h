//
//  Comment.h
//  WeWereHere
//
//  Created by Thanh Dung TRUONG on 31/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Comment : NSObject

+ (void)createCommentDB;
+ (void)showCommentForEachUserDB;
+ (void)showCommentForAllUserDB;

@end
