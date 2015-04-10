//
//  main.m
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRStockPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockPortfolio *portfolio = [[BNRStockPortfolio alloc] init];
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        [stock1 setPurchasePrice:2.30];
        [stock1 setCurrentSharePrice:4.5];
        [stock1 setNumberOfShares:40];
        [portfolio addStockHoldings:stock1];


        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        [stock2 setPurchasePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        [portfolio addStockHoldings:stock2];

        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        [stock3 setPurchasePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        [portfolio addStockHoldings:stock3];

        BNRForeignStockHolding *stock4 = [[BNRForeignStockHolding alloc] init];
        [stock4 setPurchasePrice:4];
        [stock4 setCurrentSharePrice:5];
        [stock4 setConversionRate:1.5];
        [stock4 setNumberOfShares:100];
        [portfolio addStockHoldings:stock4];

        NSLog(@"%@", portfolio);
        NSLog(@"****************************************");
        [portfolio removeStockHoldings:stock2];
        [portfolio removeStockHoldings:stock1];
        NSLog(@"%@", portfolio);
    }
    return 0;
}
