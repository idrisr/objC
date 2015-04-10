//
//  BNRStockHolding.h
//  Stocks
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

-(float) costInDollars;  // purchaseSharePrice * numberOfShares
-(float) valueInDollars; // currentSharePrice  * numberOfShares

-(float) purchaseSharePrice;
-(void)  setPurchasePrice     : (float)p;
-(float) currentSharePrice;
-(void)  setCurrentSharePrice : (float)p;
-(int)   numberOfShares;
-(void)  setNumberOfShares    : (int)i;

@end
