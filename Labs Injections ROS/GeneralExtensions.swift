//
//  GeneralExtensions.swift
//  Labs Injections ROS
//
//  Created by Fool on 10/5/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

extension NSView {
	func clearControllers() {
		func clearChecksTextfields(theView: NSView) {
			for item in theView.subviews {
				if item is NSButton {
					let checkbox = item as? NSButton
					checkbox?.state = NSOffState
				} else if item is NSTextField {
					let textfield = item as? NSTextField
					if (textfield?.isEditable)!{
					textfield?.stringValue = ""
					}
				} else if item is NSView {
					clearChecksTextfields(theView: item)
				}
			}
		}
	clearChecksTextfields(theView: self)
	}
}
