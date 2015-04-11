//
//  BNRLogger.m
//  CallBacks
//
//  Created by idris on 4/11/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(NSString *) lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter){
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void) updateLastTime:(NSTimer *)t{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

@end