


@implementation EnterNewViewController

- (id) initWithNibName:(NSString *)nibNameOrNil // ...

      // Custom init:
      self.title = @"New Recipe";
      self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_new"];
      
      
      ...
      
      
      
-(void) viewDidLoad
{
...

  self.view..view.backgroundcolor = [UIColor blueColor];
  
  ...
  
  
  
// Different file!
@implementation savedEntryViewController

- (id) initWithNibName:(NSString *)nibNameOrNil // ...

      // Custom init:
      self.title = @"Recipes";
      self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_saved"];
      
      
      ...
      
      
      
-(void) viewDidLoad
{
...

  self.view..view.backgroundcolor = [UIColor yellowColor];
  
  UIImageView *recipeImageView = [[UIImageView alloc] initWithImage:
                                 [UIImage imageNamed:@"recipe.jpg"]];
                                 
                                 
  recipeImageView.frame = CGRectMake(20,20,100,114);
  [self.view addSubview:recipeImageView];
  
  
  UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40);
  // Fonts and formatting slide 85:
  nameLabel.text = @"Recipe: Punkin pi";
  [self.view addSubview:nameLabel];
  
  // Scrolling on slide 87
      
  ...
