//
//  BNRStockHolding.h
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject{
    int _numberOfShares;
}

@property   (nonatomic)   float   purchaseSharePrice;
@property   (nonatomic)   float   currentSharePrice;
@property   (nonatomic)   int     numberOfShares;

-(float) costInDollars;  // purchaseSharePrice * numberOfShares
-(float) valueInDollars; // currentSharePrice  * numberOfShares

@end
