//
//  BNREmployee.m
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

-(double) yearsOfEmployment{
    // Do I have a non-nil hireDate?
    if (self.hireDate){
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / (24 * 60 * 60 * 365);

    } else{
        return 0;
    }
}

-(float) bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"Employee ID: %i, BMI: %f", self.employeeID, self.bodyMassIndex];


}

@end
