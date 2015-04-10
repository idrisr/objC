//
//  BNRAsset.m
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

-(NSString *) description{
    // is holder non-nill
    if (self.holder){
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d, unassigned", self.label, self.resaleValue];
    }
}
@end
