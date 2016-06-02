//
//  HPI.swift
//  Labs Injections ROS
//
//  Created by Fool on 6/2/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

class HPI: NSObject, NSWindowDelegate {
	
	//Location controllers
	@IBOutlet weak var locationTextView: NSTextField!
	@IBOutlet weak var locationBackCheckbox: NSButton!
	@IBOutlet weak var locationNeckCheckbox: NSButton!
	@IBOutlet weak var locationShoulderRCheckbox: NSButton!
	@IBOutlet weak var locationShoulderLCheckbox: NSButton!
	@IBOutlet weak var locationArmRCheckbox: NSButton!
	@IBOutlet weak var locationArmLCheckbox: NSButton!
	@IBOutlet weak var locationHandRCheckbox: NSButton!
	@IBOutlet weak var locationHandLCheckbox: NSButton!
	@IBOutlet weak var locationKneeRCheckbox: NSButton!
	@IBOutlet weak var locationKneeeLCheckbox: NSButton!
	@IBOutlet weak var locationHipRCheckbox: NSButton!
	@IBOutlet weak var locationHipLCheckbox: NSButton!
	@IBOutlet weak var locationLegRCheckbox: NSButton!
	@IBOutlet weak var locationLegLCheckbox: NSButton!
	@IBOutlet weak var locationFootRCheckbox: NSButton!
	@IBOutlet weak var locationFootLCheckbox: NSButton!
	
	//Duration controllers
	@IBOutlet weak var durationQuantityTextView: NSTextField!
	@IBOutlet weak var durationDaysCheckbox: NSButton!
	@IBOutlet weak var durationWeekCheckbox: NSButton!
	@IBOutlet weak var durationMonthCheckbox: NSButton!
	@IBOutlet weak var durationMonthsToYearsCheckbox: NSButton!
	@IBOutlet weak var durationYearsCheckbox: NSButton!
	
	//Severity controllers
	@IBOutlet weak var severityResultTextView: NSTextField!
	@IBOutlet weak var severityMildCheckbox: NSButton!
	@IBOutlet weak var severityModerateCheckbox: NSButton!
	@IBOutlet weak var severitySevereCheckbox: NSButton!
	
	//Quality controllers
	@IBOutlet weak var qualityAcheCheckbox: NSButton!
	@IBOutlet weak var qualitySoreCheckbox: NSButton!
	@IBOutlet weak var qualitySharpCheckbox: NSButton!
	@IBOutlet weak var qualityStabbingCheckbox: NSButton!
	@IBOutlet weak var qualityDullCheckbox: NSButton!
	@IBOutlet weak var qualityBurningCheckbox: NSButton!
	@IBOutlet weak var qualityStingingCheckbox: NSButton!
	@IBOutlet weak var qualityThrobbingCheckbox: NSButton!
	
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
	@IBOutlet weak var contextBetterCheckbox: NSButton!
	@IBOutlet weak var contextWorseCheckbox: NSButton!
	@IBOutlet weak var contextSameCheckbox: NSButton!
	@IBOutlet weak var contextGradualCheckbox: NSButton!
	@IBOutlet weak var contextSuddenCheckbox: NSButton!
	
	//Cause controllers
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
	
	//Function controllers
	@IBOutlet weak var functionWCBoundCheckbox: NSButton!
	@IBOutlet weak var functionWalkerCheckbox: NSButton!
	@IBOutlet weak var functionCaneCheckbox: NSButton!
	@IBOutlet weak var functionJobCheckbox: NSButton!
	@IBOutlet weak var functionGroomingCheckbox: NSButton!
	@IBOutlet weak var functionBathingCheckbox: NSButton!
	@IBOutlet weak var functionCookingCheckbox: NSButton!
	@IBOutlet weak var functionEatingCheckbox: NSButton!
	@IBOutlet weak var functionChoresCheckbox: NSButton!
	
	//Quality Of Life controllers
	@IBOutlet weak var qolBetterCheckbox: NSButton!
	@IBOutlet weak var qolWorseCheckbox: NSButton!
	@IBOutlet weak var qolGoodCheckbox: NSButton!
	@IBOutlet weak var qolFairCheckbox: NSButton!
	@IBOutlet weak var qolPoorCheckbox: NSButton!
	@IBOutlet weak var qolTextView: NSTextField!
	
	var locationCheckboxArray: [NSButton] {return [locationBackCheckbox, locationNeckCheckbox, locationShoulderRCheckbox, locationShoulderLCheckbox, locationArmRCheckbox, locationArmLCheckbox, locationHandRCheckbox, locationHandLCheckbox, locationKneeRCheckbox, locationKneeeLCheckbox, locationHipRCheckbox, locationHipLCheckbox, locationLegRCheckbox, locationLegLCheckbox, locationFootRCheckbox, locationFootLCheckbox]}
	let locationVerbiage = ["back", "neck", "right shoulder", "left shoulder", "right arm", "left arm", "right hand", "left hand", "right knee", "left knee", "right hip", "left hip", "right leg", "left leg", "right foot", "left foot"]
		
	var durationCheckboxArray: [NSButton] {return [durationDaysCheckbox, durationWeekCheckbox, durationMonthCheckbox, durationMonthsToYearsCheckbox, durationYearsCheckbox]}
	
	var severityCheckboxArray: [NSButton] {return [severityMildCheckbox, severityModerateCheckbox, severitySevereCheckbox]}
	
	var qualityCheckboxArray: [NSButton] {return [qualityAcheCheckbox, qualitySoreCheckbox, qualitySharpCheckbox, qualityStabbingCheckbox, qualityDullCheckbox, qualityBurningCheckbox, qualityStingingCheckbox, qualityThrobbingCheckbox]}
	
	var timingCheckboxArray: [NSButton] {return [timingConstantCheckbox, timingFrequentCheckbox, timingOccasionalCheckbox, timingInfrequentCheckbox, timingIntermittentCheckbox, timingAtRestCheckbox, timingAfterWorkCheckbox, timingAfterExerciseCheckbox, timingMorningCheckbox, timingNightCheckbox, timingEndOfDay]}
	
	var contextCheckboxArray: [NSButton] {return [contextBetterCheckbox, contextWorseCheckbox, contextSameCheckbox, contextGradualCheckbox, contextSuddenCheckbox]}
	
	var modifyingFactorsBetterCheckboxArray: [NSButton] {return [modifyingBetterHeatCheckbox, modifyingBetterIceCheckbox, modifyingBetterRestCheckbox, modifyingBetterElevationCheckbox, modifyingBetterMedicationCheckbox]}
	var modifyingFactorsWorseCheckboxArray: [NSButton] {return [modifyingWorseLiftingCheckbox, modifyingWorseBendingCheckbox, modifyingWorseStairsCheckbox, modifyingWorseStandingCheckbox, modifyingWorseWalkingCheckbox, modifyingWorseSittingCheckbox, modifyingWorseReachingCheckbox, modifyingWorseLayingCheckbox, modifyingWorseChoresCheckbox]}
	
	var associatedSymptomsCheckboxArray: [NSButton] {return [associatedNumbnessCheckbox, associatedTinglingCheckbox, associatedWeaknessCheckbox, associatedStiffnessCheckbox, associatedLimpCheckbox, associatedLimitedMovementCheckbox, associatedBladderCheckbox, associatedBowelCheckbox]}
	
	var functionWithCheckboxArray: [NSButton] {return [functionWCBoundCheckbox, functionWalkerCheckbox, functionCaneCheckbox]}
	var functionDifficultyCheckboxArray: [NSButton] {return [functionJobCheckbox, functionGroomingCheckbox, functionBathingCheckbox, functionCookingCheckbox, functionEatingCheckbox, functionChoresCheckbox]}
	
	var qolCheckboxArray: [NSButton] {return [qolBetterCheckbox, qolWorseCheckbox, qolGoodCheckbox, qolFairCheckbox, qolPoorCheckbox]}
	
	@IBAction func clearHPI(sender: NSButton) {
		let textFields = [locationTextView!, durationQuantityTextView!, severityResultTextView!, causeTextView!, qolTextView!]
		let checkboxArrays = [locationCheckboxArray, durationCheckboxArray, severityCheckboxArray, qualityCheckboxArray, timingCheckboxArray, contextCheckboxArray, modifyingFactorsBetterCheckboxArray, modifyingFactorsWorseCheckboxArray, associatedSymptomsCheckboxArray, functionWithCheckboxArray, functionDifficultyCheckboxArray, qolCheckboxArray]
		clearControllers(checkboxArrays, textFields: textFields)
	}
	
	@IBAction func processHPI(sender: NSButton) {
		var resultsArray = [String]()
		resultsArray.append(processLocation(locationTextView, checkBoxes: locationCheckboxArray, verbiage: locationVerbiage))
		resultsArray.append(processDuration(durationQuantityTextView, checkBoxes: durationCheckboxArray))
		resultsArray.append(processSeverity(severityResultTextView, checkBoxes: severityCheckboxArray))
		resultsArray.append(processQuality(qualityCheckboxArray))
		resultsArray.append(processTiming(timingCheckboxArray))
		resultsArray.append(processModifyingFactors(modifyingFactorsBetterCheckboxArray, worse: modifyingFactorsWorseCheckboxArray))
		resultsArray.append(processAssociatedSymptoms(associatedSymptomsCheckboxArray))
		resultsArray.append(processFunction(functionWithCheckboxArray, difficulties: functionDifficultyCheckboxArray))
		resultsArray.append(processQOL(qolCheckboxArray))
		if !resultsArray.isEmpty {
			let results = resultsArray.joinWithSeparator("\n")
			//Clear the system clipboard
			let pasteBoard = NSPasteboard.generalPasteboard()
			pasteBoard.clearContents()
			//Set the system clipboard to the final text
			pasteBoard.setString(results, forType: NSPasteboardTypeString)
			print(results)
		}
	}
	
	
	
	
	
	
	
	

}
