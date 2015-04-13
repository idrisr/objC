//
//  main.m
//  Stockz
//
//  Created by idris on 4/13/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    // Write a tool that creates a property list that has all 8 types in it: array, dictionary, string, data, date, integer, float, and boolean.

    NSMutableArray *stocks = [[NSMutableArray alloc] init];

    NSArray *myArray = @[@"Id", @"Iggy", @"Idu", @"Idder", @"Spider Man"];
    [stocks addObject:myArray];

    NSMutableDictionary *stock;
    stock = [NSMutableDictionary dictionary];
    [stock setObject: @"AAPL"
              forKey: @"symbol"];
    [stock setObject: [NSNumber numberWithInt:200]
              forKey: @"shares"];
    [stocks addObject:stock];

    NSString *myStrings = @"Idris H. Raja";
    [stocks addObject:myStrings];

    NSData *myData = [[NSData alloc] initWithContentsOfFile:@"/Users/idris/essay/2015-04-13"];
    [stocks addObject:myData];

    NSDate *myDate = [NSDate date];
    [stocks addObject:myDate];

    NSNumber *myInteger = [[NSNumber alloc] initWithInt:10];
    [stocks addObject:myInteger];

    NSNumber *myFloat = [[NSNumber alloc] initWithFloat:M_PI];
    [stocks addObject:myFloat];

    NSNumber *myBool = [[NSNumber alloc] initWithBool:YES];
    [stocks addObject:myBool];

    [stocks writeToFile:@"/tmp/stocks.plist"
             atomically:YES];
    return 0;
    }
}
