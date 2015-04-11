//
//  BNRLogger.m
//  CallBacks
//
//  Created by idris on 4/11/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(NSString *) lastTimeString {
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void) updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

-(void) connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data{
    NSLog(@"received %lu bytes", [data length]);
    // create a mutable data if it does not already exist
    if (!_incomingData){
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

// called when the last chunk has been processed
-(void) connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"Got it all!");
    __unused NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    _incomingData = nil;

    // uncomment the next line to see the entire fetched file
    // NSLog(@"The whole string is %@", string);
}

-(void) connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

-(void)zoneChange:(NSNotification *)note{
    NSLog(@"The system time zone has changed");
}

@end