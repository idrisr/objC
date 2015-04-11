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
        [stock1 setPurchasePrice:10];
        [stock1 setCurrentSharePrice:20];
        [stock1 setNumberOfShares:1];
        [portfolio addStockHoldings:stock1];


        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        [stock2 setPurchasePrice:10];
        [stock2 setCurrentSharePrice:20];
        [stock2 setNumberOfShares:2];
        [portfolio addStockHoldings:stock2];

        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        [stock3 setPurchasePrice:10];
        [stock3 setCurrentSharePrice:20];
        [stock3 setNumberOfShares:3];
        [portfolio addStockHoldings:stock3];

        BNRStockHolding *stock4 = [[BNRForeignStockHolding alloc] init];
        [stock4 setPurchasePrice:10];
        [stock4 setCurrentSharePrice:20];
        [stock4 setNumberOfShares:4];
        [portfolio addStockHoldings:stock4];

        NSLog(@"%@", portfolio);
        NSLog(@"****************************************");
        NSLog(@"%@", portfolio);

        NSLog(@"Top 3 Holdings: %@", portfolio.top3StockHoldings);
    }
    return 0;
}
