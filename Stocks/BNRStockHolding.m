//
//  BNRStockHolding.m
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

// purchaseSharePrice * numberOfShares
-(float) costInDollars{
    return [self purchaseSharePrice] * [self numberOfShares];
}

// currentSharePrice  * numberOfShares
-(float) valueInDollars{
    return [self currentSharePrice] * [self numberOfShares];
}

-(NSString *)description{
//    return NSString[@"cost:%f value:%f shares:%i"];
    return [NSString stringWithFormat: @"value:%.1f cost:%.1f shares:%i",
            self.valueInDollars,
            self.costInDollars,
            self.numberOfShares];
}

@end
