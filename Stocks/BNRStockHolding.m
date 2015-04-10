//
//  BNRStockHolding.m
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(float)purchaseSharePrice{
    return _purchaseSharePrice;
}

-(void) setPurchasePrice:(float)p{
    _purchaseSharePrice = p;
}

-(float)currentSharePrice{
    return _currentSharePrice;
}

-(void)setCurrentSharePrice:(float)p{
    _currentSharePrice = p;
}

-(int) numberOfShares{
    return _numberOfShares;
}

-(void) setNumberOfShares:(int)i{
    _numberOfShares = i;
}

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
    return [NSString stringWithFormat: @"cost:%.1f value:%.1f shares:%i",
            self.costInDollars,
            self.valueInDollars,
            self.numberOfShares];
}

@end
