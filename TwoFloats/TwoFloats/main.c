//
//  main.c
//  TwoFloats
//
//  Created by idris on 4/5/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 20;
    int j = 25;
    int k = ( i > j ) ? 10 : 5;

    /*
    if ( 5 < j - k ) { // First expression
        printf("The first expression is true.");
    } else if ( j > i ) { // Second expression
        printf("The second expression is true.");
    } else {
        printf("Neither expression is true.");
    }
     */

    // j-k is evaluated first
    printf("First value: %i\n", 5 < j-k);
    printf("Second value: %i\n", 5 < (j-k));
    printf("Third value: %i\n", (5 < j)-k);
}
