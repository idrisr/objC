//
//  main.m
//  CallBacks
//
//  Created by idris on 4/11/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];
        NSURL *url = [NSURL URLWithString: @"http://www.gutenberg.org/cache/epub/205/pg205.txt"];

        NSURLRequest *request = [NSURLRequest requestWithURL:url];

        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];

//        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                                                   target:logger
//                                                                 selector:@selector(updateLastTime:)
//                                                                 userInfo:nil
//                                                                  repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
