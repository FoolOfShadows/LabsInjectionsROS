//
//  HPI.swift
//  Labs Injections ROS
//
//  Created by Fool on 6/2/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

class HPI: NSObject, NSWindowDelegate {
	
	@IBOutlet weak var hpiView: NSView!
	
	//Location controllers
	@IBOutlet weak var locationTextView: NSTextField!
	@IBOutlet weak var locationChestCheckbox: NSButton!
	@IBOutlet weak var locationAbdomenCheckbox: NSButton!
	@IBOutlet weak var locationRibsLCheckbox: NSButton!
	@IBOutlet weak var locationRibsRCheckbox: NSButton!
	@IBOutlet weak var locationBackCheckbox: NSButton!
	@IBOutlet weak var locationNeckCheckbox: NSButton!
	@IBOutlet weak var locationShoulderRCheckbox: NSButton!
	@IBOutlet weak var locationShoulderLCheckbox: NSButton!
	@IBOutlet weak var locationArmRUCheckbox: NSButton!
	@IBOutlet weak var locationArmLUCheckbox: NSButton!
	@IBOutlet weak var locationElbowLCheckbox: NSButton!
	@IBOutlet weak var locationElbowRCheckbox: NSButton!
	@IBOutlet weak var locationForearmLCheckbox: NSButton!
	@IBOutlet weak var locationForearmRCheckbox: NSButton!
	@IBOutlet weak var locationWristLCheckbox: NSButton!
	@IBOutlet weak var locationWristRCheckbox: NSButton!
	@IBOutlet weak var locationHandRCheckbox: NSButton!
	@IBOutlet weak var locationHandLCheckbox: NSButton!
	@IBOutlet weak var locationKneeRCheckbox: NSButton!
	@IBOutlet weak var locationKneeLCheckbox: NSButton!
	@IBOutlet weak var locationHipRCheckbox: NSButton!
	@IBOutlet weak var locationHipLCheckbox: NSButton!
	@IBOutlet weak var locationLegRUCheckbox: NSButton!
	@IBOutlet weak var locationLegLUCheckbox: NSButton!
	@IBOutlet weak var locationLegLLCheckbox: NSButton!
	@IBOutlet weak var locationLegRLCheckbox: NSButton!
	@IBOutlet weak var locationAnkleLCheckbox: NSButton!
	@IBOutlet weak var locationAnkleRCheckbox: NSButton!	
	@IBOutlet weak var locationFootRCheckbox: NSButton!
	@IBOutlet weak var locationFootLCheckbox: NSButton!
	
	//Duration controllers
	@IBOutlet weak var durationQuantityTextView: NSTextField!
	@IBOutlet weak var durationPopup: NSPopUpButton!
	
	//Severity controllers
	@IBOutlet weak var severityResultTextView: NSTextField!
	@IBOutlet weak var severityPopup: NSPopUpButton!
	
	//Quality controllers
	@IBOutlet weak var qualityAcheCheckbox: NSButton!
	@IBOutlet weak var qualitySoreCheckbox: NSButton!
	@IBOutlet weak var qualitySharpCheckbox: NSButton!
	@IBOutlet weak var qualityStabbingCheckbox: NSButton!
	@IBOutlet weak var qualityDullCheckbox: NSButton!
	@IBOutlet weak var qualityBurningCheckbox: NSButton!
	@IBOutlet weak var qualityStingingCheckbox: NSButton!
	@IBOutlet weak var qualityThrobbingCheckbox: NSButton!
	@IBOutlet weak var qualityCrampingCheckbox: NSButton!
	@IBOutlet weak var qualitySpasmCheckbox: NSButton!
	
	//Timing controllers
	@IBOutlet weak var timingConstantCheckbox: NSButton!
	@IBOutlet weak var timingFrequentCheckbox: NSButton!
	@IBOutlet weak var timingOccasionalCheckbox: NSButton!
	@IBOutlet weak var timingInfrequentCheckbox: NSButton!
	@IBOutlet weak var timingIntermittentCheckbox: NSButton!
	@IBOutlet weak var timingAtRestCheckbox: NSButton!
	@IBOutlet weak var timingAfterWorkCheckbox: NSButton!
	@IBOutlet weak var timingAfterExerciseCheckbox: NSButton!
	@IBOutlet weak var timingMorningCheckbox: NSButton!
	@IBOutlet weak var timingNightCheckbox: NSButton!
	@IBOutlet weak var timingEndOfDay: NSButton!
	
	//Context controllers
	@IBOutlet weak var contextPopup: NSPopUpButton!
	@IBOutlet weak var causeTextView: NSTextField!
	
	//Modifying Factors controllers
	@IBOutlet weak var modifyingBetterHeatCheckbox: NSButton!
	@IBOutlet weak var modifyingBetterIceCheckbox: NSButton!
	@IBOutlet weak var modifyingBetterRestCheckbox: NSButton!
	@IBOutlet weak var modifyingBetterElevationCheckbox: NSButton!
	@IBOutlet weak var modifyingBetterMedicationCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseLiftingCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseBendingCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseStairsCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseStandingCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseWalkingCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseSittingCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseReachingCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseLayingCheckbox: NSButton!
	@IBOutlet weak var modifyingWorseChoresCheckbox: NSButton!
	
	//Associated Symptoms controllers
	@IBOutlet weak var associatedNumbnessCheckbox: NSButton!
	@IBOutlet weak var associatedTinglingCheckbox: NSButton!
	@IBOutlet weak var associatedWeaknessCheckbox: NSButton!
	@IBOutlet weak var associatedStiffnessCheckbox: NSButton!
	@IBOutlet weak var associatedLimpCheckbox: NSButton!
	@IBOutlet weak var associatedLimitedMovementCheckbox: NSButton!
	@IBOutlet weak var associatedBladderCheckbox: NSButton!
	@IBOutlet weak var associatedBowelCheckbox: NSButton!
	@IBOutlet weak var associatedFootDropcheckbox: NSButton!
	
	//Function controllers
	@IBOutlet weak var functionPopup: NSPopUpButton!
	@IBOutlet weak var functionJobCheckbox: NSButton!
	@IBOutlet weak var functionGroomingCheckbox: NSButton!
	@IBOutlet weak var functionBathingCheckbox: NSButton!
	@IBOutlet weak var functionCookingCheckbox: NSButton!
	@IBOutlet weak var functionEatingCheckbox: NSButton!
	@IBOutlet weak var functionChoresCheckbox: NSButton!
	
	//Quality Of Life controllers
	@IBOutlet weak var qolPopup: NSPopUpButton!
	@IBOutlet weak var qolTextView: NSTextField!
	
	var checkboxArray:[NSButton] {return [locationChestCheckbox, locationAbdomenCheckbox, locationRibsLCheckbox, locationRibsRCheckbox, locationBackCheckbox, locationNeckCheckbox, locationShoulderRCheckbox, locationShoulderLCheckbox, locationArmRUCheckbox, locationArmLUCheckbox, locationElbowLCheckbox, locationElbowRCheckbox, locationForearmLCheckbox, locationForearmRCheckbox, locationWristLCheckbox, locationWristRCheckbox, locationHandRCheckbox, locationHandLCheckbox, locationKneeRCheckbox, locationKneeLCheckbox, locationHipRCheckbox, locationHipLCheckbox, locationLegRUCheckbox, locationLegLUCheckbox, locationLegLLCheckbox, locationLegRLCheckbox, locationAnkleLCheckbox, locationAnkleRCheckbox, locationFootRCheckbox, locationFootLCheckbox, qualityAcheCheckbox, qualitySoreCheckbox, qualitySharpCheckbox, qualityStabbingCheckbox, qualityDullCheckbox, qualityBurningCheckbox, qualityStingingCheckbox, qualityThrobbingCheckbox, qualityCrampingCheckbox, qualitySpasmCheckbox, timingConstantCheckbox, timingFrequentCheckbox, timingOccasionalCheckbox, timingInfrequentCheckbox, timingIntermittentCheckbox, timingAtRestCheckbox, timingAfterWorkCheckbox, timingAfterExerciseCheckbox, timingMorningCheckbox, timingNightCheckbox, timingEndOfDay, modifyingBetterHeatCheckbox, modifyingBetterIceCheckbox, modifyingBetterRestCheckbox, modifyingBetterElevationCheckbox, modifyingBetterMedicationCheckbox, modifyingWorseLiftingCheckbox, modifyingWorseBendingCheckbox, modifyingWorseStairsCheckbox, modifyingWorseStandingCheckbox, modifyingWorseWalkingCheckbox, modifyingWorseSittingCheckbox, modifyingWorseReachingCheckbox, modifyingWorseLayingCheckbox, modifyingWorseChoresCheckbox, associatedNumbnessCheckbox, associatedTinglingCheckbox, associatedWeaknessCheckbox, associatedStiffnessCheckbox, associatedLimpCheckbox, associatedLimitedMovementCheckbox, associatedBladderCheckbox, associatedBowelCheckbox, associatedFootDropcheckbox, functionJobCheckbox, functionGroomingCheckbox, functionBathingCheckbox, functionCookingCheckbox, functionEatingCheckbox, functionChoresCheckbox]}
	var popupButtonArray:[NSPopUpButton] {return [durationPopup, severityPopup, contextPopup, functionPopup, qolPopup]}
	var textfieldArray:[NSTextField] {return [locationTextView, durationQuantityTextView, severityResultTextView, causeTextView, qolTextView]}
	
	var locationSection:HPILocation {return HPILocation(chest: locationChestCheckbox.state, abdomen: locationAbdomenCheckbox.state, lRibs: locationRibsLCheckbox.state, rRibs: locationRibsRCheckbox.state, lShoulder: locationShoulderLCheckbox.state, rShoulder: locationShoulderRCheckbox.state, luArm: locationArmLUCheckbox.state, ruArm: locationArmRUCheckbox.state, lElbow: locationElbowLCheckbox.state, rElbow: locationElbowRCheckbox.state, lForearm: locationForearmLCheckbox.state, rForearm: locationForearmRCheckbox.state, lWrist: locationWristLCheckbox.state, rWrist: locationWristRCheckbox.state, lHand: locationHandLCheckbox.state, rHand: locationHandRCheckbox.state, back: locationBackCheckbox.state, neck: locationNeckCheckbox.state, lHip: locationHipLCheckbox.state, rHip: locationHipRCheckbox.state, luLeg: locationLegLUCheckbox.state, ruLeg: locationLegRUCheckbox.state, lKnee: locationKneeLCheckbox.state, rKnee: locationKneeRCheckbox.state, llLeg: locationLegLLCheckbox.state, rlLeg: locationLegRLCheckbox.state, lAnkle: locationAnkleLCheckbox.state, rAnkle: locationAnkleRCheckbox.state, lFoot: locationFootLCheckbox.state, rFoot: locationFootRCheckbox.state, other: locationTextView.stringValue)}
	var durationSection:HPIDuration {return HPIDuration(quantity: durationQuantityTextView.stringValue, timeFrame: durationPopup.titleOfSelectedItem!)}
	var qualitySection:HPIQuality {return HPIQuality(aching: (qualityAcheCheckbox.state, qualityAcheCheckbox.title), sore: (qualitySoreCheckbox.state, qualitySoreCheckbox.title), sharp: (qualitySharpCheckbox.state, qualitySharpCheckbox.title), stabbing: (qualityStabbingCheckbox.state, qualityStabbingCheckbox.title), dull: (qualityDullCheckbox.state, qualityDullCheckbox.title), burning: (qualityBurningCheckbox.state, qualityBurningCheckbox.title), stinging: (qualityStingingCheckbox.state, qualityStingingCheckbox.title), throbbing: (qualityThrobbingCheckbox.state, qualityThrobbingCheckbox.title), cramping: (qualityCrampingCheckbox.state, qualityCrampingCheckbox.title), spasm: (qualitySpasmCheckbox.state, qualitySpasmCheckbox.title))}
	var severitySection:HPISeverity {return HPISeverity(outOfTen: severityResultTextView.stringValue, description: severityPopup.titleOfSelectedItem!)}
	var timingSection:HPITiming {return HPITiming(constant: timingConstantCheckbox.state, frequent: timingFrequentCheckbox.state, occasional: timingOccasionalCheckbox.state, infrequent: timingInfrequentCheckbox.state, atRest: timingAtRestCheckbox.state, afterWork: timingAfterWorkCheckbox.state, afterExercise: timingAfterExerciseCheckbox.state, morning: timingMorningCheckbox.state, night: timingNightCheckbox.state, endOfDay: timingEndOfDay.state)}
	var contextSection:HPIContext {return HPIContext(context: contextPopup.titleOfSelectedItem!, cause: causeTextView.stringValue)}
	var modifyingFactorsSection:HPIModifyingFactors {return HPIModifyingFactors(heat: (modifyingBetterHeatCheckbox.state, modifyingBetterHeatCheckbox.title), ice: (modifyingBetterIceCheckbox.state, modifyingBetterIceCheckbox.title), rest: (modifyingBetterRestCheckbox.state, modifyingBetterRestCheckbox.title), elevation: (modifyingBetterElevationCheckbox.state, modifyingBetterElevationCheckbox.title), medication: (modifyingBetterMedicationCheckbox.state, modifyingBetterMedicationCheckbox.title), lifting: (modifyingWorseLiftingCheckbox.state, modifyingWorseLiftingCheckbox.title), bending: (modifyingWorseBendingCheckbox.state, modifyingWorseBendingCheckbox.title), stairs: (modifyingWorseStairsCheckbox.state, modifyingWorseStairsCheckbox.title), standing: (modifyingWorseStandingCheckbox.state, modifyingWorseStandingCheckbox.title), walking: (modifyingWorseWalkingCheckbox.state, modifyingWorseWalkingCheckbox.title), sitting: (modifyingWorseSittingCheckbox.state, modifyingWorseSittingCheckbox.title), reaching: (modifyingWorseReachingCheckbox.state, modifyingWorseReachingCheckbox.title), laying: (modifyingWorseLayingCheckbox.state, modifyingWorseLayingCheckbox.title), chores: (modifyingWorseChoresCheckbox.state, modifyingWorseChoresCheckbox.title))}
	var associatedSymptomsSection:HPIAssociatedSymptoms {return HPIAssociatedSymptoms(numbness: (associatedNumbnessCheckbox.state, associatedNumbnessCheckbox.title), tingling: (associatedTinglingCheckbox.state, associatedTinglingCheckbox.title), weakness: (associatedWeaknessCheckbox.state, associatedWeaknessCheckbox.title), stiffness: (associatedStiffnessCheckbox.state, associatedStiffnessCheckbox.title), limp: (associatedLimpCheckbox.state, associatedLimpCheckbox.title), limitedMovement: (associatedLimitedMovementCheckbox.state, associatedLimitedMovementCheckbox.title), footDrop: (associatedFootDropcheckbox.state, associatedFootDropcheckbox.title), bladder: (associatedBladderCheckbox.state, associatedBladderCheckbox.title), bowel: (associatedBowelCheckbox.state, associatedBowelCheckbox.title))}
	var functionSection:HPIFunction {return HPIFunction(mobileWith: functionPopup.indexOfSelectedItem, job: functionJobCheckbox.state, grooming: functionGroomingCheckbox.state, bathing: functionBathingCheckbox.state, cooking: functionCookingCheckbox.state, eating: functionEatingCheckbox.state, chores: functionChoresCheckbox.state)}
	var qolSection:HPIQOL {return HPIQOL(quality: qolPopup.titleOfSelectedItem!, comments: qolTextView.stringValue)}
	
	override func awakeFromNib() {
		clearHPI()
	}
	
	@IBAction func clearHPI(_ sender: NSButton) {
		clearHPI()
	}
	
	@IBAction func processHPI(_ sender: NSButton) {
		var resultArray = [String]()
		var resultString = String()
		
		let hpiList:[IsHPIData] = [locationSection, durationSection, severitySection, qualitySection, timingSection, contextSection, modifyingFactorsSection, associatedSymptomsSection, functionSection, qolSection]
		
		for section in hpiList {
		resultArray.append(section.processData())
		}
		
		let cleanArray = resultArray.filter{$0 != ""}
		
		if !cleanArray.isEmpty {
			resultString = cleanArray.joined(separator: "\n")
		}
		
		let pasteBoard = NSPasteboard.general()
		pasteBoard.clearContents()
		pasteBoard.setString(resultString, forType: NSPasteboardTypeString)
		
		Swift.print(resultString)
	}
	
	func clearHPI() {
		hpiView.clearControllers()
		//clearChecks(theView: hpiView)
//		for view in hpiView.subviews {
//			if view is NSButton {
//			let checkbox = view as? NSButton
//			checkbox?.state = NSOffState
//			}
//		}
		//clearCheckboxes(checkboxArray)
		//clearTextFields(textfieldArray)
		
		clearPopupButtons(popupButtonArray, values:
			[[HPIDurationList.Empty.rawValue, HPIDurationList.Days.rawValue, HPIDurationList.Weeks.rawValue, HPIDurationList.Months.rawValue, HPIDurationList.MonthsToYears.rawValue, HPIDurationList.Years.rawValue],
			[HPISeverityList.Empty.rawValue, HPISeverityList.Mild.rawValue, HPISeverityList.Moderate.rawValue, HPISeverityList.Severe.rawValue],
			[HPIContextList.Empty.rawValue, HPIContextList.Better.rawValue, HPIContextList.Worse.rawValue, HPIContextList.Same.rawValue, HPIContextList.Gradual.rawValue, HPIContextList.Sudden.rawValue],
			[HPIFunctionList.Empty.rawValue, HPIFunctionList.NoAssistance.rawValue, HPIFunctionList.WheelChair.rawValue, HPIFunctionList.Walker.rawValue, HPIFunctionList.Cane.rawValue, HPIFunctionList.WalkerOrCane.rawValue],
			[HPIContextList.Empty.rawValue, HPIContextList.Better.rawValue, HPIContextList.Worse.rawValue, HPIContextList.Good.rawValue, HPIContextList.Fair.rawValue, HPIContextList.Poor.rawValue]])
		
		
	}

	func clearChecks(theView: NSView) {
		for item in theView.subviews {
			if item is NSButton {
				let checkbox = item as? NSButton
				checkbox?.state = NSOffState
			} else if item is NSTextField {
				let textfield = item as? NSTextField
				textfield?.stringValue = ""
			} else if item is NSView {
				clearChecks(theView: item)
			}
		}
	}
	
	
	enum HPIDurationList:String {
		case Empty = ""
		case Days = "days"
		case Weeks = "weeks"
		case Months = "months"
		case MonthsToYears = "months to years"
		case Years = "years"
	}
	
	enum HPISeverityList:String {
		case Empty = ""
		case Mild = "mild"
		case Moderate = "moderate"
		case Severe = "severe"
	}
	
	enum HPIContextList:String {
		case Empty = ""
		case Better = "better"
		case Worse = "worse"
		case Same = "same"
		case Gradual = "gradual"
		case Sudden = "sudden"
		case Good = "good"
		case Fair = "fair"
		case Poor = "poor"
	}
	
	enum HPIFunctionList:String {
		case Empty = ""
		case NoAssistance = "without assistance"
		case WheelChair = "wheel chair"
		case Walker = "walker"
		case Cane = "cane"
		case WalkerOrCane = "walker or cane"
	}
}
