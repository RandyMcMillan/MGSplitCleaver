//
//  DetailViewController.h
//  MGSplitView
//
//  Created by Matt Gemmell on 26/07/2010.
//  Copyright Instinctive Code 2010.
//

#import <UIKit/UIKit.h>
#import "MGSplitViewController.h"
@class  CDVViewController;

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, MGSplitViewControllerDelegate>{
	IBOutlet MGSplitViewController	*splitController;
	IBOutlet UIBarButtonItem		*toggleItem;
	IBOutlet UIBarButtonItem		*verticalItem;
	IBOutlet UIBarButtonItem		*dividerStyleItem;
	IBOutlet UIBarButtonItem		*masterBeforeDetailItem;
	UIPopoverController				*popoverController;
	UIToolbar						*toolbar;

	id		detailItem;
	UILabel *detailDescriptionLabel;
    IBOutlet CDVViewController *cdvVC;
    IBOutlet UIWebView *webView;
}

@property (nonatomic, retain) IBOutlet UIToolbar	*toolbar;
@property (nonatomic, retain) id					detailItem;
@property (nonatomic, retain) IBOutlet UILabel		*detailDescriptionLabel;
@property (nonatomic, retain) IBOutlet CDVViewController		*cdvVC;
@property (nonatomic, retain) IBOutlet UIWebView		*webView;

- (IBAction)toggleMasterView:(id)sender;
- (IBAction)toggleVertical:(id)sender;
- (IBAction)toggleDividerStyle:(id)sender;
- (IBAction)toggleMasterBeforeDetail:(id)sender;
- (void)createCleaverView;
- (void)viewDidLayoutSubviews;
- (void)webViewShowAlert:(NSString *)aString;
@end
