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
        NSString *listOfNames = @"Id, Scott, Matt, Nick, Stephanie, Ben";
        NSString *name = @"Idr";
        NSRange match = [listOfNames rangeOfString:name];
        if (match.location == NSNotFound){
            NSLog(@"No match found!");
        } else {
            NSLog(@"Match found!");
        }
    }
    return 0;
}
