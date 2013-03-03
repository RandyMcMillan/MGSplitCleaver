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

#import "CDVPluginDemo_JS.h"

@implementation CDVPluginDemo_JS

// Remove line breaks/returns to use as one constant string!
// Yes you can inject self executing functions into the webView!
NSString *const kCDVPluginDemoINIT = @"(function() {console.log('kCDVPluginDemoINIT evaluated!');})();";
NSString *const kCDVPluginDemoFUNCTION = @"(function() {console.log('kCDVPluginDemoFUNCTION evaluated!');})();";
//REF http://docs.phonegap.com/en/2.3.0/cordova_notification_notification.md.html#Notification
//NSString *const kCDVPluginDemoALERT = @"navigator.notification.alert('Cordova  CDVPluginDemo Plugin is working!')";
  NSString *const kCDVPluginDemoALERT = @"navigator.notification.alert('MESSAGE CDVPluginDemo_JS.m LINE:37',alertDismissed,'Event Create & Saved','OK');";

@end
