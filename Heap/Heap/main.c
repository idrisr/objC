//
//  main.c
//  Heap
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p){
    return p->weightInKilos / pow(p->heightInMeters, 2);

}

int main(int argc, const char * argv[]) {
    // Allocate memory for one Person struct
    Person *mikey = (Person *) malloc(sizeof(Person));

    // Fill in two members of the struct
    mikey->heightInMeters = 1.7;
    mikey->weightInKilos = 96;

    // Print out the BMI of the original Person
    float mikeyBMI = bodyMassIndex(mikey);

    printf("mikey has a BMI of %f\n", mikeyBMI);

    // Let the memory be recycled
    free(mikey);

    mikey = NULL;
    return 0;
}
