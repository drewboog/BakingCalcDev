//
//  SavedEntryViewController.m
//  BakingCalcDev
//
//  Created by Andrew Hazlett on 7/9/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import "SavedEntryViewController.h"

@interface SavedEntryViewController ()

@end

@implementation SavedEntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        // Custom initialization
        
        self.title = @"Recipe";
        
        UIImageView *recipeImageView = [[UIImageView alloc] initWithImage:
                                        [UIImage imageNamed:@"recipe.jpg"]];
        
        
        recipeImageView.frame = CGRectMake(20,20,100,114);
        [self.view addSubview:recipeImageView];
        
        
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40);
                              // Fonts and formatting slide 85:
                              nameLabel.text = @"Recipe: Punkin pi";
                              [self.view addSubview:nameLabel];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    // Make picture bigger when clicked on:
    UIImageView *zoomedImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"recipe.jpg"]];
    zoomedImageView.frame = self.view.frame;
    [self.view addSubview:zoomedImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
