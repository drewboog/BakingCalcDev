TBD list and snippits:

7/10
  - Add recipe.jpg to files
  - Compile code, fix mistakes.. 
  - Clean up commented out code.
  - Add #import to view controller 
  
  - Add logo picture to files
  - Set up to show logo at start
  
  - TableViewController to be added for recipe list (slide 111)
    - Create new file



Table view code:

-- AppDelegate.m -- (? - or add where needed)

#import "RecipeTableViewController.h"

...
{
  RecipeTableViewController *recipeTableViewController = [[recipeTableViewController alloc] 
                                                           initWithStyle:UITableViewStyleGrouped];



-- RecipeTableViewController.m -- 

// Need to add number of sections (=1), number of rows, init each cell (slide 116)
// Not sure what is in the defalt code for this.. 
