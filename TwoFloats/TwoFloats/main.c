//
//  main.c
//  TwoFloats
//
//  Created by idris on 4/5/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float float1;
    float float2;

    float1 = 3.14;
    float2 = 42.0;

    double d1;

    d1 = float1 + float2;

    printf("The sum is: %f\n", d1);

    return 0;
}
