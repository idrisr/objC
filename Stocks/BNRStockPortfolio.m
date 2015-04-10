//
//  BNRStockPortfolio.m
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import "BNRStockPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRStockPortfolio
// accessors for stockHolding properties
-(void)setStockHoldings:(NSArray *)a{
    _stockhHoldings = [a mutableCopy];
}

-(NSArray *) stockHoldings{
    return [_stockhHoldings copy];
}

-(void)addStockHoldings:(BNRStockHolding *)a{
    if (!_stockhHoldings){
        _stockhHoldings = [[NSMutableArray alloc] init];
    }
    [_stockhHoldings addObject:a];
}

-(void)removeStockHoldings:(BNRStockHolding *)a{
    [_stockhHoldings removeObjectIdenticalTo:a];
}

-(float)currentValue{
    float totalValue = 0;
    for (BNRStockHolding *stockHolding in self.stockHoldings){
        totalValue+= [stockHolding valueInDollars];
    }
    return totalValue;;
}

-(NSString *) description{
    return [NSString stringWithFormat:@"# of stocks:%u, value: %f",
            (unsigned int)[self.stockHoldings count], self.currentValue];

}

@end