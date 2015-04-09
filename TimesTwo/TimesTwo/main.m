//
//  main.m
//  TimesTwo
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Who is cool?");
        const char *name = readline(NULL);
        NSString *nsName = [NSString stringWithUTF8String:name];
        NSLog(@"%@ is cool", nsName);
    }
    return 0;
}
