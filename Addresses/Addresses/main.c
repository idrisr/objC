//
//  main.c
//  Addresses
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>
#include <limits.h>

int main(int argc, const char * argv[]) {
    printf("A short consumes %zu bytes\n", sizeof(short));
    printf("max value of a short is %i\n", SHRT_MAX);
    printf("min value of a short is %i\n", SHRT_MIN);

    printf("A unsigned short consumes %zu bytes\n", sizeof(unsigned short));
    printf("max value of a unsigned short is %i\n", USHRT_MAX);

    return 0;
}
