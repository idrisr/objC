//
//  BNREmployee.m
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNREmployee.h"

// A class extension
@interface BNREmployee() {
    NSMutableArray *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;
@end

@implementation BNREmployee
// Accessors for assets properties
-(void)setAssets:(NSArray *)a{
    _assets = [a mutableCopy];
}

-(NSArray *) assets{
    return [_assets copy];
}

-(void) addAsset:(BNRAsset *)a{
    // is assets nil?
    if (!_assets){
        // create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

-(unsigned int)valueOfAssets{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets){
        sum += [a resaleValue];
    }
    return sum;
}

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
    return [NSString stringWithFormat:@"<Employee %i has $%i in assets>", self.employeeID, self.valueOfAssets];
}

-(void) dealloc{
    NSLog(@"deallocating %@", self);
}

@end
