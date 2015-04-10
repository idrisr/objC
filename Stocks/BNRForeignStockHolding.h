//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding
@property (nonatomic) float conversionRate;
-(float) costInDollars;  // purchaseSharePrice * numberOfShares
-(float) valueInDollars; // currentSharePrice  * numberOfShares
@end
