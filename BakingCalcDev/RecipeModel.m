//
//  RecipeModel.m
//  BakingCalcDev
//
//  Created by Andrew Hazlett on 7/11/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import "RecipeModel.h"

@implementation Recipe

-(id) init
{
    self = [self initWithName:@"defaultName"
                  description:@"defaultDescription"];
    return self;
}

-(id) initWithName:(NSString *)aRecipe
       description:(NSString *)aDescription
{
    self = [super init];
    if(self)
    {
        self.name = aRecipe;
        self.description = aDescription;
    }
    
    return self;
}

@end
