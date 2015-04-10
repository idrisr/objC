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

        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];

        // Log the instance variables using the getters
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);

        // Log some values using custom methods
        float bmi = mikey.bodyMassIndex;
        double years = [mikey yearsOfEmployment];
        NSLog(@"mikey has a BMI of %f, has worked with us for %.2f years", bmi, years);
    }
    return 0;
}
