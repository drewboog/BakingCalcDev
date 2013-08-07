TBD list and snippits:

8/6

  - How do I store data?
  - Get core data setup.. tutorial exists
  
  - Add a photo view controller
  
  - Add logo picture to files
  - Set up to show logo at start


Photo view controller:

// PhotoViewController.h
#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController

@property (weak, nonatomic) NSString *imageFileName;
@property (weak, nonatomic) NSString *imageTitle;

@end


// PhotoViewController.m
#import "PhotoViewController.h"

@implementation PhotoViewController

-(void)viewDidLoad {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.imageFileName]];
    imageView.frame = CGRectMake(10,10,300,300);
    [self.view addSubview:imageView];

    UILabel *imageTitleLabel = [[UILabel alloc] init];
    imageTitleLabel.text = self.imageTitle;
    imageTitleLabel.frame = CGRectMake(10,320,300,40);
    [self.view addSubview:imageTitleLabel];
}
@end


// in feedTableViewController.m
#import "FeedTableViewController.h"
#import "PhotoViewController.h"
...
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  PhotoViewController *photoVC = [[PhotoViewController alloc] init];
  photoVC.imageFileName = self.imageFileNameArray[indexPath.row];
  photoVC.imageTitle = self.imageTitleArray[indexPath.row];
  

  [self.navigationController pushViewController:photoVC animated:YES];
}

@end


7/11
  - How do I store data?
  
  - Add a photo view controller
  - Get AFNetworking program! Json data.. 
  
  - Add logo picture to files
  - Set up to show logo at start
  
  - Add objC class, subclass of NSObject called place.. model - Done (recipes)
  
  
  
7/10
  - Add recipe.jpg to files - done
  - Compile code, fix mistakes.. - done
  - Clean up commented out code.- done
  - Add #import to view controller - done
  
  - TableViewController to be added for recipe list (slide 111) -done
    - Create new file - done
    
  - Add logo picture to files
  - Set up to show logo at start

