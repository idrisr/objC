//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding
-(float) costInDollars{
    float localPrice = [super costInDollars];
    return localPrice * self.conversionRate;
}

-(float) valueInDollars{
    float localPrice = [super valueInDollars];
    return localPrice * self.conversionRate;
}

@end