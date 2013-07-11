//
//  BakingCalcAppDelegate.m
//  BakingCalc
//
//  Created by Andrew Hazlett on 7/7/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import "BakingCalcAppDelegate.h"
#import "BakingCalcViewController.h"

//#import "HomePageViewController.h" //Using normal viewController for this
#import "EnterNewViewController.h"
#import "SavedEntryViewController.h"

@implementation BakingCalcAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // TBD: Create new class for new view controllers..
    UIViewController *homePageViewController = [[ViewController alloc] init];
    //homePageViewController.title = @"Baking Calc!";
    
    // Add view controllers and add them to the tabs
    // TBD: Make sure names match those in view controller
    //UIViewController *enterNewViewController = [[EnterNewViewController alloc] init];
    //enterNewViewController.title = @"New Recipe";
    
    //UIViewController *savedEntryViewController = [[SavedEntryViewController alloc] init];
    //savedEntryViewController.title = @"Recipes";
    
    //enterNewViewController.view.backgroundColor = [UIColor blueColor];
    //savedEntryViewController.view.backgroundColor = [UIColor yellowColor];
    
    // For this to work there must be a "tab_icon_new.png" saved in cache/filesystem.. TBD! 
    //enterNewViewController.tabBarItem.image = [UIImage imageNamed:@"tab_icon_new"]; - chap3
    //savedEntryViewController.tabBarItem.image = [UIImage imageNamed:@"tab_icon_saved"]; - chap3
    
    //homePageViewController TBD!
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:homePageViewController];
    
    // [tabBarController setViewController:[enterNewViewController,savedEntryViewController]]; - chap3
    
    // Create the UI window:
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Viewcontroller gets control of the window:
    self.window.rootViewController =  navController;
    
    // Recieve all keyboard and touch events:
    [self.window makeKeyAndVisible];
    return YES;
    
    // 7/9, Left off at slide 98!- Debugging needed now.. 
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
