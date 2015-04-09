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
        NSMutableArray *groceries = [NSMutableArray array];
        NSString *item1 = @"apple";
        NSString *item2 = @"orange";
        NSString *item3 = @"weed";
        NSString *item4 = @"kale kombucha";
        groceries = @[item1, item2, item3, item4];

        for (NSString *grocery in groceries){
            NSLog(@"%@", grocery);
        }
    }
    return 0;
}
