//
//  BakingCalcViewController.m
//  BakingCalc
//
//  Created by Andrew Hazlett on 7/7/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import "BakingCalcViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor greenColor];

    // Add title label: -- TBD: switch to logo
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,30,200,44)];
    titleLabel.text = @"Hello and welcome!";
    [self.view addSubview:titleLabel];
    
    
    // Add button 1, New recipe
    self.enterNewButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.enterNewButton.frame = CGRectMake(85,100,150,44);
    [self.enterNewButton setTitle:@"New Recipe" forState:UIControlStateNormal];
    [self.view addSubview:self.enterNewButton];
    
    [self.enterNewButton addTarget:self
                            action:@selector(buttonPressed:)
                  forControlEvents:UIControlEventTouchUpInside];
    
    // Add button 2, saved recipe
    self.savedEntryButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.savedEntryButton.frame = CGRectMake(85,200,150,44);
    [self.savedEntryButton setTitle:@"Saved Recipes" forState:UIControlStateNormal];
    [self.view addSubview:self.savedEntryButton];
    
    [self.savedEntryButton addTarget:self
                            action:@selector(buttonPressed:)
                  forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}


-(void)buttonPressed:(UIButton *)sender
{
    //Log buttons pressed:
    NSLog(@"Button pressed, sender: %@", sender)
    
    // Action when enter new button pressed:
    if ([sender isEqual:self.enterNewButton])
    {
        
    }
    
    if ([sender isEqual:self.savedEntryButton])
    {
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
