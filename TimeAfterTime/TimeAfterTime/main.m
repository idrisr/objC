//
//  main.m
//  TimeAfterTime
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // sending message to class
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);

        // sending message to instance
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);

        sleep(1);
        double second2 = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", second2);
    }
    return 0;
}
