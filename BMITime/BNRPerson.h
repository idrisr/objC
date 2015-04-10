//
//  BNRPerson.h
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject{
    float _heightInMeters;
    int _weightInKilos;
}

-(float)heightInMeters;
-(void)setHeightInMeters:(float)h;
-(int)weightInKilos;
-(void)setWeightInKilos:(int)w;

// BNRPerson has a method that calculates that Body Mass Index
-(float)bodyMassIndex;

@end
