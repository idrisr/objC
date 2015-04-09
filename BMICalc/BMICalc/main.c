//
//  main.c
//  BMICalc
//
//  Created by idris on 4/9/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>
#include <time.h>


int main(int argc, const char * argv[]) {
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);

    struct tm now;
    localtime_r(&secondsSince1970, &now);

    printf("The time is %.2d:%.2d:%.2d\n", now.tm_hour, now.tm_min, now.tm_sec);

    // add 4 million seconds
    now.tm_sec += 4000000;

    // recalculate the time
    mktime(&now);
    printf("The date 4 million seconds from now is %.2d-%.2d-%.2d\n", now.tm_mon + 1, now.tm_mday, now.tm_year + 1900);
    return 0;
}
