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
    double feetPart;
    double inchPart;

    inchPart = modf(rawFeet, &feetPart);

    if (ftPtr){
        printf("Storing %f to the address %p\n", feetPart, ftPtr);
        *ftPtr = feetPart;
    }

    // calculate inches
    double inches = inchPart * 12.0;

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
