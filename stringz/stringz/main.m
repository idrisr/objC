//
//  main.m
//  stringz
//
//  Created by idris on 4/11/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Declare a pointer to an NSError objet, but do not instantiate it
        // The NSError instance will only be created if there is, in fact, an error
        NSError *error;

        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error];
        if (!str){
            NSLog(@"rea faield: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this %@", str);
        }
    }
    return 0;
}