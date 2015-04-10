//
//  main.m
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNRPerson
        // an employee is a person, it can do anything a person can do
        BNREmployee *mikey = [[BNREmployee alloc] init];

        // Give the instance variables interesting values using setters
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;

        // Log the instance variables using the getters
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);

        // Log some values using custom methods
        float bmi = mikey.bodyMassIndex;
        NSLog(@"mikey has a BMI of %f", bmi);
    }
    return 0;
}
