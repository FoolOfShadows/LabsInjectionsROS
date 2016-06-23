//
//  MiniWindow.swift
//  Labs Injections ROS
//
//  Created by Fool on 6/23/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

class MiniWindow: NSObject, NSApplicationDelegate, NSWindowDelegate {
	
	@IBOutlet weak var miniWindow: NSWindow!
	
	//Injections
	@IBOutlet weak var dkSiteView: NSPopUpButton!
	@IBOutlet weak var b12SiteView: NSPopUpButton!
	
	//Procedures
	@IBOutlet weak var papView: NSButton!
	@IBOutlet weak var dreView: NSButton!
	@IBOutlet weak var stoolCardView: NSButton!
	@IBOutlet weak var ekgView: NSButton!
	
	//Labs
	@IBOutlet weak var udipView: NSButton!
	@IBOutlet weak var udsView: NSButton!
	@IBOutlet weak var fluSwabView: NSButton!
	
	//Xray
	@IBOutlet weak var xrayChestView: NSButton!
	@IBOutlet weak var xrayCSpineView: NSButton!
	@IBOutlet weak var xrayLSSpineView: NSButton!
	@IBOutlet weak var xrayShoulderBothView: NSButton!
	@IBOutlet weak var xrayShoulderRView: NSButton!
	@IBOutlet weak var xrayShoulderLView: NSButton!
	@IBOutlet weak var xrayKneeBothView: NSButton!
	@IBOutlet weak var xrayKneeRView: NSButton!
	@IBOutlet weak var xrayKneeLView: NSButton!
	
	//Ultrasound
	@IBOutlet weak var usndAbView: NSButton!
	
	//Mammogram
	@IBOutlet weak var mamSBView: NSButton!
	@IBOutlet weak var bmdView: NSButton!
	
	
	@IBAction func processResults(_ sender: NSButton) {
	}
	
	@IBAction func clearView(_ sender: NSButton) {
	}
}
