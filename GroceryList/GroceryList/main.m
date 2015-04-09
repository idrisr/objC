//
//  main.m
//  GroceryList
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // read in a file as a huge string, ignoring possibility of error
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];

        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];


        // break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];

        // Go through the array one string at a time
        int count = 0;
        for (NSString *name in names){
            if ([words containsObject:name] || [words containsObject:[name lowercaseString]]){
                // NSLog(@"Match found: %@", name);
                count++;
            }
        }
        NSLog(@"Matches found %i", count);

    }
    return 0;
}
