//
//  DMViewController.swift
//  Labs Injections ROS
//
//  Created by Fool on 9/8/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

class DMViewController: NSView {

	@IBOutlet weak var medsWithoutDifficultyCheckbox: NSButton!
	@IBOutlet weak var exercisingCheckbox: NSButton!
	@IBOutlet weak var bslogProvidedCheckbox: NSButton!
	@IBOutlet weak var bslogNotProvidedCheckbox: NSButton!
	
	@IBOutlet weak var fbsLowRangeView: NSTextField!
	@IBOutlet weak var fbsHighRangeView: NSTextField!
	
	@IBOutlet weak var noFootComplaintsCheckbox: NSButton!
	@IBOutlet weak var complainsOfNumbnessCheckbox: NSButton!
	
	@IBOutlet weak var lastEyeExamView: NSTextField!
	@IBOutlet weak var visionChangeCheckbox: NSButton!
	@IBOutlet weak var physicianView: NSTextField!
	
	
	@IBOutlet weak var lbsNoneCheckbox: NSButton!
	@IBOutlet weak var lbsSweatsCheckbox: NSButton!
	@IBOutlet weak var lbsShakesCheckbox: NSButton!
	@IBOutlet weak var lbsHeadacheCheckbox: NSButton!
	@IBOutlet weak var lbsConfusionCheckbox: NSButton!
	@IBOutlet weak var lbsLethargyCheckbox: NSButton!
	@IBOutlet weak var lbsBlurryVisionCheckbox: NSButton!
	@IBOutlet weak var lbsDizzinessCheckbox: NSButton!
	
	@IBOutlet weak var hbsNoneCheckbox: NSButton!
	@IBOutlet weak var hbsHungerCheckbox: NSButton!
	@IBOutlet weak var hbsDizzinessCheckbox: NSButton!
	@IBOutlet weak var hbsThirstCheckbox: NSButton!
	@IBOutlet weak var hbsUrinationCheckbox: NSButton!
	@IBOutlet weak var hbsBlurryVisionCheckbox: NSButton!
	
	@IBOutlet weak var equipmentDifficultyCheckbox: NSButton!
	
	@IBOutlet weak var vibNormalCheckbox: NSButton!
	@IBOutlet weak var vibDecreasedCheckbox: NSButton!
	@IBOutlet weak var vibAbsentCheckbox: NSButton!
	@IBOutlet weak var monoNormalCheckbox: NSButton!
	
	@IBOutlet weak var labsAtTargetCheckbox: NSButton!
	@IBOutlet weak var hba1cView: NSTextField!
	@IBOutlet weak var threeMonthAveView: NSTextField!
	@IBOutlet weak var eGFRView: NSTextField!
	@IBOutlet weak var bunView: NSTextField!
	@IBOutlet weak var crView: NSTextField!
	@IBOutlet weak var uMalbView: NSTextField!
	
	
	@IBOutlet weak var assWithFluctuatingBSCheckbox: NSButton!
	@IBOutlet weak var assWHypoEpisodesCheckbox: NSButton!
	
	@IBOutlet weak var assHypoCheckbox: NSButton!
	@IBOutlet weak var assNeuropathyCheckbox: NSButton!
	@IBOutlet weak var assNumbnessCheckbox: NSButton!
	@IBOutlet weak var assNeuroPainFeetCheckbox: NSButton!
	@IBOutlet weak var assNeuroPainLegsCheckbox: NSButton!
	@IBOutlet weak var assRetinopathyCheckbox: NSButton!
	
	@IBOutlet weak var assNephropathyCheckbox: NSButton!
	@IBOutlet weak var assAmyotrophyCheckbox: NSButton!
	@IBOutlet weak var assPoorCirculationCheckbox: NSButton!
	@IBOutlet weak var assDiabeticFootCheckbox: NSButton!
	@IBOutlet weak var assFootUlcerCheckbox: NSButton!
	@IBOutlet weak var assHxFootUlcerCheckbox: NSButton!
	@IBOutlet weak var assPreUlcerativeCallusCheckbox: NSButton!
	@IBOutlet weak var assBunionCheckbox: NSButton!
	@IBOutlet weak var assHammerToesCheckbox: NSButton!
	@IBOutlet weak var assOnycomycosisCheckbox: NSButton!
	
	
	
	
	
	@IBAction func takeClearDM(_ sender: NSButton) {
	}
	
	@IBAction func takeProcessDM(_ sender: NSButton) {
	}
	
	
}
