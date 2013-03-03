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

(function() {
 
 var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
 
 function CDVPluginDemo(){}
 
 
 CDVPluginDemo.prototype.init = function(success, fail, object) {
 
 cordovaRef.exec(success, fail, "CDVPluginDemo", "init", [object]);
 
 }
 
 CDVPluginDemo.prototype.callNativeFunctionWithAlert = function(success, fail, object) {
 
 cordovaRef.exec(success, fail, "CDVPluginDemo", "nativeFunctionWithAlert", [object]);
 
 }
 
 CDVPluginDemo.prototype.callNativeFunction = function(success, fail, object) {
 
 cordovaRef.exec(success, fail, "CDVPluginDemo", "nativeFunction", [object]);
 
 }
 
 CDVPluginDemo.prototype.nativePluginResultHandler = function(object) { console.log(object+' prototyped callback'); }
 
 
 CDVPluginDemo.prototype.nativePluginErrorHandler = function(object) { console.log(object+' prototyped callback'); }
 
 
 
 CDVPluginDemo.install = function()
 {
 if ( !window.plugins ) {
 window.plugins = {};
 }
 if ( !window.plugins.CDVPluginDemo ) {
 window.plugins.CDVPluginDemo = new CDVPluginDemo();
 }
 }
 
 if (cordovaRef && cordovaRef.addConstructor) {
 cordovaRef.addConstructor(CDVPluginDemo.install);
 } else {
 console.log("CDVPluginDemo Cordova Plugin could not be installed.");
 return null;
 }
 
 
 })();
