//
//  ThirdCustom.swift
//  CustomCheckboxExample
//
//  Created by Fool on 10/22/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

//Creates a square checkbox button that is white when OFF, red when ON, and green when MIXED.
//The checkbox button cell needs to be set to this class rather than the button itself.
@IBDesignable
class RedGreenCheckbox: NSButtonCell {
	@IBInspectable
	var onStateColor: NSColor = NSColor.greenColor()
	@IBInspectable
	var offStateColor: NSColor = NSColor.whiteColor()
	@IBInspectable
	var mixedStateColor: NSColor = NSColor.redColor()

	override func drawImage(image: NSImage, withFrame frame: NSRect, inView controlView: NSView) {
		NSColor.blackColor().setFill()
		NSRectFill(frame)
		NSColor.whiteColor().setFill()
		NSRectFill(NSInsetRect(frame, 1, 1))
		
		if self.state == NSOnState {
			//NSColor.greenColor().setFill()
			onStateColor.setFill()
		} else if self.state == NSOffState {
			//NSColor.whiteColor().setFill()
			offStateColor.setFill()
		} else if self.state == NSMixedState {
			//NSColor.redColor().setFill()
			mixedStateColor.setFill()
		}
		NSRectFill(NSInsetRect(frame, 4, 4))
		
	}

	
}
