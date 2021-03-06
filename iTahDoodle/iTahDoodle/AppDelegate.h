//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by idris on 4/14/15.
//  Copyright (c) 2015 Idris Raja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;

-(void)addTask:(id)sender;

@end

