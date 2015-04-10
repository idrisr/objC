//
//  BNRAsset.m
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString *) description{
    return [NSString stringWithFormat:@"<%@, $%u>", self.label, self.resaleValue];
}

-(void)dealloc{
    NSLog(@"deallocating %@", self);
}
@end