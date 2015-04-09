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
        NSDate *now = [[NSDate alloc] init];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1978];
        [comps setMonth:5];
        [comps setDay:5];
        [comps setHour:11];
        [comps setMinute:0];
        [comps setSecond:0];

        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        double secondsInterval = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I've been alive for %0.f seconds", secondsInterval);
        // 1,165,383,642
    }
    return 0;
}
