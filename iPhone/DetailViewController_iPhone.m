//
//  DetailViewController_iPhone.m
//  MGSplitView
//
//  Created by Randy McMillan on 1/1/13.
//
//

#import "DetailViewController_iPhone.h"
#import <Cordova/CDVViewController.h>

@interface DetailViewController_iPhone ()

@end

@implementation DetailViewController_iPhone
@synthesize detailItem;
@synthesize toolbar;
@synthesize detailDescriptionLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

	if (self) {
		// Custom initialization
	}

	return self;
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view from its nib.
    [self createCleaverView];
 
}

- (void)createCleaverView {
    
    CDVViewController* cleaver = [CDVViewController new];
    cleaver.wwwFolderName = @"www";
    self.cdvVC = cleaver;
    //self.webView = cleaver.webView;
    [cleaver release];
    ///set last
    cleaver.view.frame = CGRectMake(0,
                                    22,
                                    self.view.bounds.size.width,
                                    self.view.bounds.size.height-22
                                    );
    ///set last
    [self.view addSubview:self.cdvVC.view];
    [self.view bringSubviewToFront:self.detailDescriptionLabel];
    
}

- (void)webViewShowAlert:(NSString *)aString{
    
    //NSLog(@"%@",aString);
    [self.cdvVC.webView stringByEvaluatingJavaScriptFromString:aString];
    
}

// Ensure that the view controller supports rotation and that the split view can therefore show in both portrait and landscape.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}


- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
