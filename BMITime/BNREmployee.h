//
//  BNREmployee.h
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
#import "BNRAsset.h"

@interface BNREmployee : BNRPerson {
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;
-(double) yearsOfEmployment;
-(void)addAsset:(BNRAsset *)a;
-(unsigned int)valueOfAssets;
@end
