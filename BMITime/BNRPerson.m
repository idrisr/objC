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
-(float)heightInMeters{
    return _heightInMeters;
}

-(void) setHeightInMeters:(float)h{
    _heightInMeters = h;
}

-(int) weightInKilos{
    return _weightInKilos;
}

-(void) setWeightInKilos:(int)w{
    _weightInKilos = w;
}

-(float) bodyMassIndex{
    return _weightInKilos / pow(_heightInMeters, 2);
}

@end