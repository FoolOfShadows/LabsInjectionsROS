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
	var onStateColor: NSColor = NSColor.green
	@IBInspectable
	var offStateColor: NSColor = NSColor.white
	@IBInspectable
	var mixedStateColor: NSColor = NSColor.red

	override func drawImage(_ image: NSImage, withFrame frame: NSRect, in controlView: NSView) {
		NSColor.black.setFill()
		NSRectFill(frame)
		NSColor.white.setFill()
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
