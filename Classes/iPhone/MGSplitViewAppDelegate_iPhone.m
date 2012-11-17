//
//  MGSplitViewAppDelegate_iPhone.m
//  MGSplitView
//
//  Created by Randy McMillan on 11/17/12.
//
//

#import "MGSplitViewAppDelegate_iPhone.h"
#import "RootViewController_iPhone.h"
    //#import "DetailViewController.h"

@implementation MGSplitViewAppDelegate_iPhone
@synthesize window, rootViewController;//, detailViewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
        // Add the split view controller's view to the window and display.
    
#if __IPHONE_OS_VERSION_MAX_ALLOWED > 6000
        //		[window setRootViewController:splitViewController];
#else
        //		[window addSubview:splitViewController.view];
#endif
    
        //    [window addSubview:splitViewController.view];
   
    
    
    self.window.rootViewController = rootViewController;
    
    [window makeKeyAndVisible];
    
    [rootViewController performSelector:@selector(selectFirstRow) withObject:nil afterDelay:0];
        //[detailViewController performSelector:@selector(configureView) withObject:nil afterDelay:0];
    
    if (NO) {												// whether to allow dragging the divider to move the split.
                                    //splitViewController.splitWidth				= 15.0;	// make it wide enough to actually drag!
                                    //splitViewController.allowsDraggingDivider	= YES;
    }
    
    return YES;
}

- (void)dealloc
{
        //[splitViewController release];
    [window release];
    [super dealloc];
}

@end