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
        void(^zoneChange)(NSNotification *)=^(NSNotification *notification){
            NSLog(@"The system time zone has changed");
        };

        [[NSNotificationCenter defaultCenter]
         addObserverForName: NSSystemTimeZoneDidChangeNotification
                object:nil
                 queue:nil
         usingBlock:zoneChange];


        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}