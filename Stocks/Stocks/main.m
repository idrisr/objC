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
        stock1.purchaseSharePrice=10;
        stock1.currentSharePrice = 20;
        stock1.numberOfShares = 1;
        stock1.symbol = @"IBM";
        [portfolio addStockHoldings:stock1];


        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        stock2.purchaseSharePrice = 10;
        stock2.currentSharePrice = 20;
        stock2.numberOfShares = 2;
        stock2.symbol = @"GOOG";
        [portfolio addStockHoldings:stock2];

        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        stock3.purchaseSharePrice=10;
        stock3.currentSharePrice = 20;
        stock3.numberOfShares = 3;
        stock3.symbol = @"IDR";
        [portfolio addStockHoldings:stock3];

        BNRStockHolding *stock4 = [[BNRForeignStockHolding alloc] init];
        stock4.purchaseSharePrice=10;
        stock4.currentSharePrice = 20;
        stock4.numberOfShares = 4;
        stock4.symbol = @"RAJA";
        [portfolio addStockHoldings:stock4];

        NSLog(@"%@", portfolio);
        NSLog(@"****************************************");
        NSLog(@"%@", portfolio);

        NSLog(@"Top 3 Holdings: %@", portfolio.top3StockHoldings);
    }
    return 0;
}
