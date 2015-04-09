//
//  main.c
//  PBR
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionalPart;

    // Pass the address of integerPart as an argument
    fractionalPart = modf(pi, &integerPart);

    // Find the value stored in integerPart
    printf("integerPart = %.0f, fractionalPart = %.2f\n", integerPart, fractionalPart);
    return 0;
}
