//
//  main.c
//  BMICalc
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>
#include <math.h>

// Here is the declaration of the struct
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / pow(p.heightInMeters, 2);
}

int main(int argc, const char * argv[]) {
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;

    Person idris;
    idris.heightInMeters = 1.97;
    idris.weightInKilos = 78;

    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
    printf("mikey's bmi is %f\n", bodyMassIndex(mikey));

    printf("idris is %.2f meters tall\n", idris.heightInMeters);
    printf("idris weighs %d kilograms\n", idris.weightInKilos);
    printf("idris's bmi is %d\n", bodyMassIndex(idris));

    return 0;
}
