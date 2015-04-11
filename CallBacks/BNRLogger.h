//
//  BNRLogger.h
//  CallBacks
//
//  Created by idris on 4/11/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
@property (nonatomic) NSDate *lastTime;
- (NSString *) lastTimeString;

// action methods always take one arguement - the object that is sending the action message
//In this case, it is the timer object
- (void) updateLastTime:(NSTimer *)t;
@end
