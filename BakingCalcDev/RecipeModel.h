//
//  RecipeModel.h
//  BakingCalcDev
//
//  Created by Andrew Hazlett on 7/11/13.
//  Copyright (c) 2013 DrewCurtis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *description;

-(id) initWithName:(NSString *)aRecipe 
       description:(NSString *)aDescription;

@end
