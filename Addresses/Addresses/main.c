//
//  main.c
//  Addresses
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 17;

    // get the address of the int and the function
    printf("i stores its value at %p\n", &i);
    printf("This function starts at %p\n", main);
    return 0;
}
