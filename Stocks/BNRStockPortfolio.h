//
//  BNRStockPortfolio.h
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRStockPortfolio : NSObject {
}

@property (nonatomic, copy) NSArray *stockHoldings;

-(void)  addStockHoldings    : (BNRStockHolding *)a;
-(void)  removeStockHoldings : (BNRStockHolding *)a;
-(float) currentValue;
@end
