TBD list and snippits:

7/10
  - Add recipe.jpg to files - done
  - Compile code, fix mistakes.. - done
  - Clean up commented out code.- done
  - Add #import to view controller - done
  

  - TableViewController to be added for recipe list (slide 111)
    - Create new file - done
    
  - Add logo picture to files
  - Set up to show logo at start





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
