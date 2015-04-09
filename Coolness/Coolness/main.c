//
//  main.c
//  Coolness
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <stdio.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    printf("Who is cool?");
    const char *name = readline(NULL);
    printf("%s is cool!\n", name);

    return 0;
}
