//
//  main.m
//  MGSplitView
//
//  Created by Matt Gemmell on 26/07/2010.
//  Copyright Instinctive Code 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGSplitViewAppDelegate.h"

/* original
int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
*/

int main(int argc, char *argv[])
{
    @autoreleasepool {
        if (IS_IPAD()) {
                return UIApplicationMain(argc, argv, nil, NSStringFromClass([MGSplitViewAppDelegate class]));
        } else {
                //return UIApplicationMain(argc, argv, nil, NSStringFromClass([UniversalExampleAppDelegate_Phone class]));
        }
    }
}
