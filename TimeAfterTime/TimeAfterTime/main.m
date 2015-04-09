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
        NSHost *myHost = [NSHost currentHost];
        NSLog(@"My host name: %@", [myHost name]);
        NSLog(@"My localized host name: %@", [myHost localizedName]);
    }
    return 0;
}
