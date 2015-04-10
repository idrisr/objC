//
//  main.m
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        [stock1 setPurchasePrice:2.30];
        [stock1 setCurrentSharePrice:4.5];
        [stock1 setNumberOfShares:40];

        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        [stock2 setPurchasePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];

        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        [stock3 setPurchasePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];

        NSArray *stockArray = @[stock1, stock2, stock3];

        for (BNRStockHolding *stock in stockArray){
            NSLog(@"%@", stock);
        }
    }
    return 0;
}
