//
//  main.c
//  TurkeyTime
//
//  Created by idris on 4/6/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

void showCookTimeforTurkey(int pounds){
    int necessaryMinutes = 15 + 15 * pounds;

    if (necessaryMinutes > 120){
        int halfway = necessaryMinutes / 2;
        printf("Rotate after %d of the %d minutes.\n", halfway, necessaryMinutes);
    }
};

int main(int argc, const char * argv[]) {
    int totalWeight = 10;
    int gibletsWeight = 1;
    int turkeyWeight = totalWeight - gibletsWeight;
    showCookTimeforTurkey(turkeyWeight);
    return 0;
}
