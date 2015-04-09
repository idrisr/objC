//
//  main.c
//  Addresses
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float *myPointer;
    // set myPointer to NULL for now, I'll store an address there eventually
    myPointer = NULL;
    if (myPointer){
        printf("myPointer is set\n");
    } else {
        printf("myPointer is not set\n");
    }

    return 0;
}
