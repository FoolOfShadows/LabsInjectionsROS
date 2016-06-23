//
//  AppDelegate.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/5/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!
	
	
	

	func applicationDidFinishLaunching(aNotification: NSNotification) {
		// Insert code here to initialize your application

	}
	
	
	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}
	
	func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
		return true
	}
	
//	func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
//		return true
//	}


}

