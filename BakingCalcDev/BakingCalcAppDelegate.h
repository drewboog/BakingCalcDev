//
//  BakingCalcAppDelegate.h
//  BakingCalc
//
//  Created by Andrew Hazlett on 7/7/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BakingCalcViewController.h"

@class BakingCalcViewController;

@interface BakingCalcAppDelegate : UIResponder <UIApplicationDelegate>
//NSManagedObjectContext
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) ViewController *viewController;

@end
