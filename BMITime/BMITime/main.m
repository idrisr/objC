//
//  main.m
//  BMITime
//
//  Created by idris on 4/10/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNRPerson
        // an employee is a person, it can do anything a person can do
        NSMutableArray *employees = [[NSMutableArray alloc] init];

        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];

        for (int i=0; i < 10; i++){
            BNREmployee *mikey = [[BNREmployee alloc] init];

            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i / 10.0;
            mikey.employeeID = i;

            // put the employee in the employees array
            [employees addObject:mikey];

            if (i==0){
                [executives setObject:mikey forKeyedSubscript:@"CEO"];
            } else if (i==1){
                [executives setObject:mikey forKeyedSubscript:@"CTO"];
            }
        }

        NSMutableArray *allAssets = [[NSMutableArray alloc] init];

        // create 10 assets
        for (int i = 0; i < 10; i++){
            // create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            [allAssets addObject:asset];

            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;

            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];

            // Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];

            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
        }

        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID"
                                                              ascending:YES];

        [employees sortUsingDescriptors:@[voa, eid]];

        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        NSLog(@"all assets %@", allAssets);

        // Print out the dictionary
        NSLog(@"executives: %@", executives);

        // Pirnt out the CEO's information
        NSLog(@"CEO: %@", executives[@"CEO"]);
        executives =nil;

        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        toBeReclaimed = nil;

        NSLog(@"Giving up ownership of arrays");

        allAssets = nil;
        employees = nil;
        NSLog(@"all assets %@", allAssets);
    }
    return 0;
}