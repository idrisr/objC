//
//  BNREmployee.h
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officialAlarmCode;
@property (nonatomic) NSDate *hireDate;
-(double) yearsOfEmployment;
@end
