//
//  BNRLogger.h
//  CallBacks
//
//  Created by idris on 4/11/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>

// set some fucking             <delegates1             , delegates2             >
@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
- (NSString *) lastTimeString;
// action methods always take one arguement - the object that is sending the action message
//In this case, it is the timer object
- (void) updateLastTime:(NSTimer *)t;
- (void) connection:(NSURLConnection *)connection
     didReceiveData:(NSData *)data;
- (void) connectionDidFinishLoading:(NSURLConnection *)connection;
- (void) connection:(NSURLConnection *)connection
   didFailWithError:(NSError *)error;
- (void) zoneChange:(NSNotification *)note;

@end
