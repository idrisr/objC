//
//  main.m
//  VowelMovements
//
//  Created by idris on 4/11/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create array of strings and a contained for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings : %@", originalStrings);
        NSMutableArray *devowelizedStrings = [NSMutableArray array];

        // create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];

        // declare the block variable
        [originalStrings enumerateObjectsUsingBlock: ^(id string, NSUInteger i, BOOL *stop){
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            if (yRange.location != NSNotFound){
                *stop = YES; // Prevent further iterations
                return;      // End this iteration
            }
            NSMutableString *newString = [NSMutableString stringWithString:string];

            // iterate over the array of vowels, replacing occurences of each
            // with an empty string

            for (NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        }];

        // iterate over the array with your block
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}