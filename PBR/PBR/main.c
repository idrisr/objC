//
//  main.c
//  PBR
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetandInches(double meters, unsigned int *ftPtr, double *inPtr){
    double rawFeet = meters * 3.281;

    unsigned int feet = (unsigned int)floor(rawFeet);

    if (ftPtr){
        printf("Storing %u to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }

    // calculate inches
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;

    // store the number of inches at the supplied address
    if (inPtr){
        printf("Storing %.2f to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;

    metersToFeetandInches(meters, &feet, &inches);
    return 0;
}
