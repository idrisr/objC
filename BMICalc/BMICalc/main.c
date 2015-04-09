//
//  main.c
//  BMICalc
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

// Here is the declaration of the struct
struct Person{
    float heightInMeters;
    int weightInKilos;
};

int main(int argc, const char * argv[]) {
    struct Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;

    struct Person idris;
    idris.heightInMeters = 1.97;
    idris.weightInKilos = 78;

    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);

    printf("idris is %.2f meters tall\n", idris.heightInMeters);
    printf("idris weighs %d kilograms\n", idris.weightInKilos);

    return 0;
}
