//
//  DetailViewController_iPhone.h
//  MGSplitView
//
//  Created by Randy McMillan on 1/1/13.
//
//

#import <UIKit/UIKit.h>
#import "MGSplitViewController.h"
@class CDVViewController;

@interface DetailViewController_iPhone : UIViewController <MGSplitViewControllerDelegate>{
	UIToolbar *toolbar;
	id		detailItem;
	UILabel *detailDescriptionLabel;
    IBOutlet CDVViewController *cdvVC;

}

@property (nonatomic, retain) IBOutlet UIToolbar	*toolbar;
@property (nonatomic, retain) id					detailItem;
@property (nonatomic, retain) IBOutlet UILabel		*detailDescriptionLabel;
@property (nonatomic, retain) IBOutlet CDVViewController		*cdvVC;
- (void)createCleaverView;
- (void)webViewShowAlert:(NSString *)aString;

@end
