//
//  main.m
//  TimesTwo
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *listOfNames = @"id, Scott, Matt, Nick, Stephanie, Ben";
        NSString *name = @"scott";

        NSRange match = [listOfNames rangeOfString:name];
        if (match.location == NSNotFound){
            NSLog(@"No case sensitive match found!");
        } else {
            NSLog(@"case sensitive Match found!");
        }

        match = [listOfNames rangeOfString:name
                                           options:NSCaseInsensitiveSearch];
        if (match.location == NSNotFound){
            NSLog(@"No case insensitive match found!");
        } else {
            NSLog(@"case insensitive match found!");
        }

        NSLog(@"location of substring %o", (unsigned int)match.location);

    }
    return 0;
}
