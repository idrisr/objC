//
//  main.c
//  Addresses
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    printf("A char consumes %zu bytes\n", sizeof(char));
    printf("A float consumes %zu bytes\n", sizeof(float));
    printf("A long double consumes %zu bytes\n", sizeof(long double));

    return 0;
}
