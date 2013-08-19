//
//  BakingCalcAppDelegate.m
//  BakingCalc
//
//  Created by Andrew Hazlett on 7/7/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import "BakingCalcAppDelegate.h"
#import "BakingCalcViewController.h"

//#import "HomePageViewController.h" //Using normal viewController for this, TBD
#import "EnterNewViewController.h"
#import "SavedEntryViewController.h"

@implementation BakingCalcAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Adding Core data logic, init the 
    UIViewController *homePageViewController = [[ViewController alloc] init];

    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:homePageViewController];

    // Create the UI window:
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Viewcontroller gets control of the window:
    self.window.rootViewController =  navController;
    
    // Recieve all keyboard and touch events:
    [self.window makeKeyAndVisible];
    return YES;
    
}

- (void)initCoreDataRecipes
{
    
    NSManagedObjectContext *context = [self managedObjectContext];
    NSManagedObject *recipeInfo = [NSEntityDescription
                                       insertNewObjectForEntityForName:@"RecipeInfo"
                                       inManagedObjectContext:context];
    [recipeInfo setValue:@"Test Bank" forKey:@"name"];
    [recipeInfo setValue:@"Testville" forKey:@"city"];
    [recipeInfo setValue:@"Testland" forKey:@"state"];
    
    NSManagedObject *recipeDetails = [NSEntityDescription
                                          insertNewObjectForEntityForName:@"RecipeDetails"
                                          inManagedObjectContext:context];
    [recipeDetails setValue:[NSDate date] forKey:@"closeDate"];
    [recipeDetails setValue:[NSDate date] forKey:@"updateDate"];
    [recipeDetails setValue:[NSNumber numberWithInt:12345] forKey:@"zip"];
    [recipeDetails setValue:recipeInfo forKey:@"info"];
    [recipeInfo setValue:recipeDetails forKey:@"details"];
    NSError *error;
    if (![context save:&error])
    {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    
}

- (void)executeFetchRequest
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription
                                   entityForName:@"RecipeInfo" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    for (NSManagedObject *info in fetchedObjects)
    {
        NSLog(@"Name: %@", [info valueForKey:@"name"]);
        NSManagedObject *details = [info valueForKey:@"details"];
        NSLog(@"Zip: %@", [details valueForKey:@"zip"]);
    }
    
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
