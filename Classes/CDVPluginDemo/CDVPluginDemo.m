/*
 *   Licensed to the Apache Software Foundation (ASF) under one
 *   or more contributor license agreements.  See the NOTICE file
 *   distributed with this work for additional information
 *   regarding copyright ownership.  The ASF licenses this file
 *   to you under the Apache License, Version 2.0 (the
 *   "License"); you may not use this file except in compliance
 *   with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing,
 *   software distributed under the License is distributed on an
 *   "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *   KIND, either express or implied.  See the License for the
 *   specific language governing permissions and limitations
 *   under the License.
 *
 *      CDVPluginDemo
 *      CDVPluginDemo Template Created 3/3/13.
 *      Copyright 2013 @RandyMcMillan
 *
 *     Created by Randy McMillan on 3/3/13.
 *     Copyright __MyCompanyName__ 2013. All rights reserved.
 */

#import <Cordova/CDVAvailability.h>
#import <Cordova/CDVViewController.h>
#import <Cordova/CDVDebug.h>

#import "CDVPluginDemo.h"
#import "CDVPluginDemo_JS.h"

@implementation CDVPluginDemo

- (void)init:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
	NSLog(@"init called from %@!", [self class]);

	if (self.hasPendingOperation) {
		NSLog(@"%@.hasPendingOperation = YES", [self class]);
	} else {
		NSLog(@"%@.hasPendingOperation = NO", [self class]);
	}

	NSString	*systemVersion		= [[UIDevice currentDevice] systemVersion];
	BOOL		isLessThaniOS4		= ([systemVersion compare:@"4.0" options:NSNumericSearch] == NSOrderedAscending);
	BOOL		isGreaterThaniOS4	= ([systemVersion compare:@"4.0" options:NSNumericSearch] == NSOrderedDescending);
	BOOL		isLessThaniOS5		= ([systemVersion compare:@"5.0" options:NSNumericSearch] == NSOrderedAscending);
	BOOL		isGreaterThaniOS5	= ([systemVersion compare:@"5.0" options:NSNumericSearch] == NSOrderedDescending);
	BOOL		isLessThaniOS6		= ([systemVersion compare:@"6.0" options:NSNumericSearch] == NSOrderedAscending);
	BOOL		isEqualToiOS6		= ([systemVersion compare:@"6.0" options:NSNumericSearch] == NSOrderedSame);
	BOOL		isGreaterThaniOS6	= ([systemVersion compare:@"6.0" options:NSNumericSearch] == NSOrderedDescending);

	if (isLessThaniOS4 && isLessThaniOS5) {}

	if (isGreaterThaniOS4 && isLessThaniOS5) {}

	if (isGreaterThaniOS5 && isLessThaniOS6) {}

	if (isEqualToiOS6) {
		NSLog(@"isEqualToiOS6");
	}

	if (isGreaterThaniOS6) {
		NSLog(@"isGreaterThaniOS6");
	}

	NSString	*callbackId		= [arguments pop];
	NSString	*objectAtIndex0 = [arguments objectAtIndex:0];
    
	CDVViewController	*mvcCDVPluginDemo = (CDVViewController *)[super viewController];
	CDVPluginResult		*result;
    
	if ([objectAtIndex0 isEqualToString:@"success"]) {
		NSString *jsString = kCDVPluginDemoINIT;
		[mvcCDVPluginDemo.webView stringByEvaluatingJavaScriptFromString:jsString];
		result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success! const kCDVPluginDemoINIT was evaluated by webview!"];
		[self writeJavascript:[result toSuccessCallbackString:callbackId]];
	} else { NSLog(@"[arguments objectAtIndex:0] = %@",[arguments objectAtIndex:0]);}
    
}

- (void)nativeFunctionWithAlert:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
	NSLog(@"nativeFunctionWithAlert called from %@!", [self class]);

    if (self.hasPendingOperation) {
		NSLog(@"%@.hasPendingOperation = YES", [self class]);
	} else {
		NSLog(@"%@.hasPendingOperation = NO", [self class]);
	}
    
	NSString	*callbackId		= [arguments pop];
	NSString	*objectAtIndex0 = [arguments objectAtIndex:0];

	CDVViewController	*mvcCDVPluginDemo = (CDVViewController *)[super viewController];
	CDVPluginResult		*result;

	if ([objectAtIndex0 isEqualToString:@"literalString"]) {
		NSString *jsString = kCDVPluginDemoALERT;
		[mvcCDVPluginDemo.webView stringByEvaluatingJavaScriptFromString:jsString];
		result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success! const kCDVPluginDemoALERT was evaluated by webview and created alert!"];
		[self writeJavascript:[result toSuccessCallbackString:callbackId]];
	} else { NSLog(@"[arguments objectAtIndex:0] = %@",[arguments objectAtIndex:0]);}
}
- (void)nativeFunction:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
{
	NSLog(@"nativeFunction called from %@!", [self class]);
    
    if (self.hasPendingOperation) {
		NSLog(@"%@.hasPendingOperation = YES", [self class]);
	} else {
		NSLog(@"%@.hasPendingOperation = NO", [self class]);
	}
    
	NSString	*callbackId		= [arguments pop];
	NSString	*objectAtIndex0 = [arguments objectAtIndex:0];
    
	CDVViewController	*mvcCDVPluginDemo = (CDVViewController *)[super viewController];
	CDVPluginResult		*result;
    
	if ([objectAtIndex0 isEqualToString:@"literalString"]) {
		NSString *jsString = kCDVPluginDemoFUNCTION;
		[mvcCDVPluginDemo.webView stringByEvaluatingJavaScriptFromString:jsString];
		result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success! const kCDVPluginDemoFUNCTION was evaluated by webview!"];
		[self writeJavascript:[result toSuccessCallbackString:callbackId]];
	} else { NSLog(@"[arguments objectAtIndex:0] = %@",[arguments objectAtIndex:0]);}
}


- (void)handleOpenURL:(NSNotification *)notification
{
	NSLog(@"%@ handleOpenURL!", [self class]);
}

- (void)onAppTerminate
{
	NSLog(@"%@ onAppTerminate!", [self class]);
}

- (void)onMemoryWarning
{
	NSLog(@"%@ onMemoryWarning!", [self class]);
}

- (void)onReset
{
	NSLog(@"%@ onReset!", [self class]);
}

- (void)dispose
{
	NSLog(@"%@ dispose!", [self class]);
}

@end
