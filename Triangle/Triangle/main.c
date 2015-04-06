//
//  main.c
//  Triangle
//
//  Created by idris on 4/6/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#include <stdio.h>

float thirdAngle(float angle1, float angle2){
    if (angle1 + angle2 > 180){
        printf("Impossible Triangle!");
        return 0;
    } else{
        return 180 - (angle1 + angle2);
    }
}

int main(int argc, const char * argv[]) {
    float angle1 = 45;
    float angle2 = 55;
    printf("The third angle is: %0.1f\n", thirdAngle(angle1, angle2));;

    angle1 = 92;
    angle2 = 91;
    printf("The third angle is: %0.1f\n", thirdAngle(angle1, angle2));;
    return 0;
}