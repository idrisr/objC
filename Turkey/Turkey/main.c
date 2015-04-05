//
//  main.c
//  Turkey
//
//  Created by idris on 4/5/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float weight;
    weight = 14.2;
    printf("The turkey weighs %f.\n", weight);
    float cookingTime;
    cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes.\n", cookingTime);
    return 0;
}
