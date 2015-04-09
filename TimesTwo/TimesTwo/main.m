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
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %@", currentTime);

        NSDate *startTime = currentTime;

        sleep(2);
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %@", currentTime);
        startTime = nil;
        NSLog(@"The address of the original object is %p", startTime);
    }
    return 0;
}
