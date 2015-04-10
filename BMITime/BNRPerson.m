//
//  BNRPerson.m
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRPerson.h"
#import <math.h>

@implementation BNRPerson
-(float) bodyMassIndex{
    return self.weightInKilos / pow(self.heightInMeters, 2);
}
@end