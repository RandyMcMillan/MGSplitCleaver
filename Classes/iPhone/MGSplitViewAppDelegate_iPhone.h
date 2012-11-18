//
//  MGSplitViewAppDelegate_iPhone.h
//  MGSplitView
//
//  Created by Randy McMillan on 11/17/12.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class RootViewController_iPhone;
// @class DetailViewController;

@interface MGSplitViewAppDelegate_iPhone : NSObject <UIApplicationDelegate>{
	UIWindow					*window;
	RootViewController_iPhone	*rootViewController;
	// DetailViewController *detailViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow						*window;
@property (nonatomic, retain) IBOutlet RootViewController_iPhone	*rootViewController;
// @property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;

@end
