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
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 100; i++){
            [str appendString:@"Idris is cool!\n"];
        }

        // Declare a pointer to an NSError objet, but do not instantiate it
        // The NSError instance will only be created if there is, in fact, an error
        NSError *error;

        // Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/menoexist/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        if (success){
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}