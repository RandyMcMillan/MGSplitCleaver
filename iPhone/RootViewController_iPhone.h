//
//  RootViewController_iPhone.h
//  MGSplitView
//
//  Created by Randy McMillan on 11/17/12.
//
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface RootViewController_iPhone : UITableViewController {
    DetailViewController *detailViewController;
}

@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;

- (void)selectFirstRow;

@end
