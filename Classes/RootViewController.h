//
//  RootViewController.h
//  MGSplitView
//
//  Created by Matt Gemmell on 26/07/2010.
//  Copyright Instinctive Code 2010.
//

#import <UIKit/UIKit.h>

@class DetailViewController;
//@class  CDVViewController;

@interface RootViewController : UITableViewController {
	DetailViewController *detailViewController;
    //CDVViewController *cdvVC;
}

@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;
//@property (nonatomic, retain) IBOutlet CDVViewController *cdvVC;

- (void)selectFirstRow;

@end
