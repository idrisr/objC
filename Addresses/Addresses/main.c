//
//  main.c
//  Addresses
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float *ptr;
    int i = 17;
    int *addressOfI = &i;

    printf("i stores its value at %p\n", addressOfI);
    printf("i stores its value at %p\n", &i);

    int j = i;
    printf("j stores its value at %p\n", &j);
    printf("This function starts at %p\n", main);
    return 0;
}
