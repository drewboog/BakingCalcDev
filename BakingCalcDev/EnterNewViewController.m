//
//  EnterNewViewController.m
//  BakingCalcDev
//
//  Created by Andrew Hazlett on 7/9/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import "EnterNewViewController.h"

@interface EnterNewViewController ()

@end

@implementation EnterNewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"New Recipe";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_new"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view..view.backgroundcolor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end




