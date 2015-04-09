//
//  main.m
//  DateList
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create three NSDater objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];

        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList addObject:yesterday];

        // print a couple of dates
        for (NSDate *date in dateList){
            NSLog(@"The date is: %@", date);
        }
        [dateList removeObjectAtIndex:0];

        // How many dates are in the array?
        NSLog(@"There are %lu dates", [dateList count]);
        for (NSDate *date in dateList){
            NSLog(@"The date is: %@", date);
        }


    }
    return 0;
}
