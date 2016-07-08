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
	@IBOutlet weak var usndVDBLEView: NSButton!
	@IBOutlet weak var usndVDLLEView: NSButton!
	@IBOutlet weak var usndVDRLEView: NSButton!
	@IBOutlet weak var usndVDBUEView: NSButton!
	@IBOutlet weak var usndVDLUEView: NSButton!
	@IBOutlet weak var usndVDRUEView: NSButton!

	
	//Mammogram
	@IBOutlet weak var mamSBView: NSButton!
	@IBOutlet weak var bmdView: NSButton!
	
	override func awakeFromNib() {
		clearMiniViewControllers()
	}
	
	
	@IBAction func processResults(_ sender: NSButton) {
		var finalList = [String]()
		let processArray = [processInjections(), processProcedures(), processLabs(), processRadiology()]
		for process in processArray {
			let results = process
			if process != "" {
				finalList.append(results)
			}
		}
		
		let finalOutput = finalList.joined(separator: "\n")
		
		//Clear the system clipboard
		let pasteBoard = NSPasteboard.general()
		pasteBoard.clearContents()
		//Set the system clipboard to the final text
		pasteBoard.setString(finalOutput, forType: NSPasteboardTypeString)
	}
	
	@IBAction func clearView(_ sender: NSButton) {
		clearMiniViewControllers()
	}
	
	private func clearMiniViewControllers() {
		let checkBoxes:[NSButton] = [papView, dreView, stoolCardView, ekgView, udipView, udsView, fluSwabView, xrayChestView, xrayCSpineView, xrayLSSpineView, xrayShoulderBothView, xrayShoulderRView, xrayShoulderLView, xrayKneeBothView, xrayKneeRView, xrayKneeLView, usndAbView, mamSBView, bmdView, usndVDBLEView, usndVDLLEView, usndVDRLEView, usndVDBUEView, usndVDLUEView, usndVDRUEView]
		for box in checkBoxes {
			box.state = NSOffState
		}
		let popups:[NSPopUpButton] = [dkSiteView, b12SiteView]
		let popupVerbiage = [deltGlutIMOnlyList, deltGlutIMSCList]
		for (i,popup) in popups.enumerated() {
			popup.removeAllItems()
			popup.addItems(withTitles: popupVerbiage[i])
			popup.selectItem(at: 0)
		}
	}
	
	private func processCheckboxControllers(controllers: [NSButton], verbiage: [String], leadingString: String) -> String {
		var processResults = [String]()
		var processString = ""
		for (i, controller) in controllers.enumerated() {
			if controller.state == NSOnState {
				processResults.append(verbiage[i])
			}
		}
		
		if !processResults.isEmpty {
			processString = "\(leadingString)\n\(processResults.joined(separator: ", "))"
			return processString
		}
		
		return processString
	}
	
	func processInjections() -> String {
		var injectionResults = [String]()
		var injectionString = ""
		let injectionPopups = [dkSiteView!,
		                       b12SiteView!]
		let injectionVerbiage = ["Decadron 4 mg/1 ml + Kenalog 40 mg/1 ml \(dkSiteView.titleOfSelectedItem!)",
		                         "B12 1000 mcg/1 ml \(b12SiteView.titleOfSelectedItem!)"]
		for (i, injectionPopup) in injectionPopups.enumerated() {
			if injectionPopup.titleOfSelectedItem != "" {
				injectionResults.append(injectionVerbiage[i])
			}
		}
		
		if !injectionResults.isEmpty {
			injectionString = "Injection(s) given:\n\(injectionResults.joined(separator: ", "))"
			print(injectionString)
			return injectionString
		}
		return injectionString
	}
	
	private func processProcedures() -> String {
		let procedureControllers:[NSButton] = [papView,
		                                       dreView,
		                                       stoolCardView,
		                                       ekgView]
		let procedureVerbiage:[String] = ["Pap smear",
		                                  "Digital rectal exam",
		                                  "Hemoccult Stool cards x 3 given for colon cancer screening",
		                                  "EKG, consent signed"]
		let procedureLead = "Office procedure(s) performed:"
		let procedureResults = processCheckboxControllers(controllers: procedureControllers, verbiage: procedureVerbiage, leadingString: procedureLead)
		return procedureResults
	}
	
	private func processLabs() -> String {
		let labControllers:[NSButton] = [udipView,
		                                 udsView,
		                                 fluSwabView]
		let labVerbiage:[String] = ["Urine Dip, consent signed",
		                            "UDS, consent signed",
		                            "Rapid Flu A&B Swab, consent signed"]
		let labLead = "Lab(s) ordered:"
		let labResults = processCheckboxControllers(controllers: labControllers, verbiage: labVerbiage, leadingString: labLead)
		return labResults
	}
	
	private func processRadiology() -> String {
		let radControllers:[NSButton] = [xrayChestView,
		                                 xrayCSpineView,
		                                 xrayLSSpineView,
		                                 xrayShoulderBothView,
		                                 xrayShoulderRView,
		                                 xrayShoulderLView,
		                                 xrayKneeBothView,
		                                 xrayKneeRView,
		                                 xrayKneeLView,
		                                 usndAbView,
		                                 mamSBView,
		                                 bmdView,
		                                 usndVDBLEView,
		                                 usndVDLLEView,
		                                 usndVDRLEView,
		                                 usndVDBUEView,
		                                 usndVDLUEView,
		                                 usndVDRUEView]
		let radVerbiage:[String] = ["Xray - Chest PA&Lat",
		                            "Xray - C spine series",
		                            "Xray - LS spine series",
		                            "Xray - Shoulder series both sides",
		                            "Xray - Shoulder series right side",
		                            "Xray - Shoulder series left side",
		                            "Xray - Knee series with Standing film both sides",
		                            "Xray - Knee series with Standing film right side",
		                            "Xray - Knee series with Standing film left side",
		                            "Ultrasound - Complete abdominal",
		                            "Mammogram - Screening Bilateral",
		                            "BMD - Dexa Bone Mineral Density",
		                            "Ultrasound - Venous Doppler - Bilateral Lower Extremities",
		                            "Ultrasound - Venous Doppler - Left Lower Extremities",
		                            "Ultrasound - Venous Doppler - Right Lower Extremities",
		                            "Ultrasound - Venous Doppler - Bilateral Upper Extremities",
		                            "Ultrasound - Venous Doppler - Left Upper Extremities",
		                            "Ultrasound - Venous Doppler - Right Upper Extremities"]
		let radLead = "Tests ordered:"
		let radResults = processCheckboxControllers(controllers: radControllers, verbiage: radVerbiage, leadingString: radLead)
		return radResults
	}

	
}















