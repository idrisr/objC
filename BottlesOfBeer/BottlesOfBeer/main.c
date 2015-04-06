//
//  main.c
//  BottlesOfBeer
//
//  Created by idris on 4/6/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles){
    if (numberOfBottles==0) {
        printf("Oh no, no more beers!");
    } else {
        printf("%i Bottles of beer on the wall, take one done, pass it around, %i bottles of beer on the wall\n",
               numberOfBottles, numberOfBottles - 1);
        singSongFor(numberOfBottles - 1);
    }
}

int main(int argc, const char * argv[]) {
    int numberOfBottles = 99;
    singSongFor(numberOfBottles);
}