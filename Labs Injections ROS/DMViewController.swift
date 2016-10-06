//
//  DMViewController.swift
//  Labs Injections ROS
//
//  Created by Fool on 9/8/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

class DMViewController: NSView {

	@IBOutlet weak var dmeView: NSView!
	
	@IBOutlet weak var compliancePopup: NSPopUpButton!
	@IBOutlet weak var medsWithoutDifficultyCheckbox: NSButton!
	@IBOutlet weak var exercisingPopup: NSPopUpButton!
	@IBOutlet weak var bsLogPopup: NSPopUpButton!

	
	@IBOutlet weak var fbsFrequencyCurrentCombo: NSComboBox!
	@IBOutlet weak var fbsLowRangeView: NSTextField!
	@IBOutlet weak var fbsHighRangeView: NSTextField!
	
	@IBOutlet weak var noFootComplaintsCheckbox: NSButton!
	@IBOutlet weak var complainsOfNumbnessCheckbox: NSButton!
	@IBOutlet weak var complainsOfTinglingCheckbox: NSButton!
	@IBOutlet weak var complainsOfBurningCheckbox: NSButton!
	
	@IBOutlet weak var lastEyeExamView: NSTextField!
	@IBOutlet weak var visionChangeCheckbox: NSButton!
	@IBOutlet weak var physicianView: NSTextField!
	@IBOutlet weak var retinopathyExamPopup: NSPopUpButton!
	
	
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
	@IBOutlet weak var glucometerIssuesPopup: NSPopUpButton!
	
	
	@IBOutlet weak var vibrationSensePopup: NSPopUpButton!
	@IBOutlet weak var monoNormalCheckbox: NSButton!
	
	@IBOutlet weak var labsAtTargetCheckbox: NSButton!
	@IBOutlet weak var hba1cView: NSTextField!
	@IBOutlet weak var threeMonthAveView: NSTextField!
	@IBOutlet weak var eGFRView: NSTextField!
	@IBOutlet weak var bunView: NSTextField!
	@IBOutlet weak var crView: NSTextField!
	@IBOutlet weak var uMalbView: NSTextField!
	@IBOutlet weak var umalbStatusPopup: NSPopUpButton!
	
	
	@IBOutlet weak var assDMTypePopup: NSPopUpButton!
	@IBOutlet weak var assDMTypeModifierPopup: NSPopUpButton!
	@IBOutlet weak var assWithFluctuatingBSCheckbox: NSButton!
	@IBOutlet weak var assWHypoEpisodesCheckbox: NSButton!
	@IBOutlet weak var assPrognosisPopup: NSPopUpButton!
	
	@IBOutlet weak var assHypoCheckbox: NSButton!
	@IBOutlet weak var assNeuropathyCheckbox: NSButton!
	@IBOutlet weak var assNumbnessCheckbox: NSButton!
	@IBOutlet weak var assNeuroPainFeetCheckbox: NSButton!
	@IBOutlet weak var assNeuroPainLegsCheckbox: NSButton!
	@IBOutlet weak var assRetinopathyCheckbox: NSButton!
	@IBOutlet weak var assRetinopathyDescriptorPopup: NSPopUpButton!
	
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
	
	@IBOutlet weak var planFBSCombo: NSComboBox!
	@IBOutlet weak var rxShoesCheckbox: NSButton!
	@IBOutlet weak var dietDiscussedCheckbox: NSButton!
	@IBOutlet weak var refEducationCheckbox: NSButton!
	@IBOutlet weak var refNutritionCheckbox: NSButton!
	@IBOutlet weak var refPodiatristCheckbox: NSButton!
	@IBOutlet weak var refOpthoCheckbox: NSButton!
	
	
	var checkboxArray:[NSButton] {return [medsWithoutDifficultyCheckbox, noFootComplaintsCheckbox, complainsOfNumbnessCheckbox, complainsOfTinglingCheckbox, complainsOfBurningCheckbox, visionChangeCheckbox,lbsNoneCheckbox, lbsSweatsCheckbox, lbsShakesCheckbox, lbsHeadacheCheckbox, lbsConfusionCheckbox, lbsLethargyCheckbox, lbsBlurryVisionCheckbox, lbsDizzinessCheckbox, hbsNoneCheckbox, hbsHungerCheckbox, hbsDizzinessCheckbox, hbsThirstCheckbox, hbsUrinationCheckbox, hbsBlurryVisionCheckbox, equipmentDifficultyCheckbox, monoNormalCheckbox, labsAtTargetCheckbox,assWithFluctuatingBSCheckbox, assWHypoEpisodesCheckbox, assHypoCheckbox, assNeuropathyCheckbox, assNumbnessCheckbox, assNeuroPainFeetCheckbox, assNeuroPainLegsCheckbox, assRetinopathyCheckbox, assNephropathyCheckbox, assAmyotrophyCheckbox, assPoorCirculationCheckbox, assDiabeticFootCheckbox, assFootUlcerCheckbox, assHxFootUlcerCheckbox, assPreUlcerativeCallusCheckbox, assBunionCheckbox, assHammerToesCheckbox, assOnycomycosisCheckbox]}
	var textFieldArray:[NSTextField] {return [fbsLowRangeView, fbsHighRangeView,lastEyeExamView, physicianView, hba1cView, threeMonthAveView, eGFRView, bunView, crView, uMalbView]}
	var popupArray:[(NSPopUpButton, [String])] {return [(compliancePopup, compliancePopupList), (exercisingPopup, yesNoPopupList), (bsLogPopup, yesNoPopupList), (retinopathyExamPopup, retinopathyExamPopupList), (glucometerIssuesPopup, glucometerIssuresPopupList), (vibrationSensePopup, vibrationSensePopupList), (umalbStatusPopup, umalbPopupList), (assDMTypePopup, dmTypePopupList), (assDMTypeModifierPopup, dmModifierPopupList), (assPrognosisPopup, prognosisPopupList), (assRetinopathyDescriptorPopup, retinopathyHxPopupList)]}
	
	var complianceResults:DMCompliance {return DMCompliance(compliance: compliancePopup.titleOfSelectedItem!, takingMeds: medsWithoutDifficultyCheckbox.state, exercising: exercisingPopup.titleOfSelectedItem!, logProvided: bsLogPopup.titleOfSelectedItem!, timesADay: fbsFrequencyCurrentCombo.stringValue, lowerRange: fbsLowRangeView.stringValue, higherRange: fbsHighRangeView.stringValue, noFootComplaints: noFootComplaintsCheckbox.state, numbFeet: complainsOfNumbnessCheckbox.state, tinglingFeet: complainsOfTinglingCheckbox.state, burningFeet: complainsOfBurningCheckbox.state)}
	var eyeExamResults:EyeExam {return EyeExam(lastExam: lastEyeExamView.stringValue, visionChange: visionChangeCheckbox.state, physician: physicianView.stringValue, retinopathy: retinopathyExamPopup.titleOfSelectedItem!)}
	var lbsArray:LowBloodSugar {return LowBloodSugar(noSymptoms: lbsNoneCheckbox.state, sweats: lbsSweatsCheckbox.state, shakes: lbsShakesCheckbox.state, headAche: lbsHeadacheCheckbox.state, confusion: lbsConfusionCheckbox.state, lethargy: lbsLethargyCheckbox.state, blurryVision: lbsBlurryVisionCheckbox.state, dizziness: lbsDizzinessCheckbox.state)}
	var hbsArray:HighBloodSugar {return HighBloodSugar(noSymptoms: hbsNoneCheckbox.state, hunger: hbsHungerCheckbox.state, dizziness: hbsDizzinessCheckbox.state, thirst: hbsThirstCheckbox.state, urination: hbsUrinationCheckbox.state, blurryVision: hbsBlurryVisionCheckbox.state)}
	var equipmentResults:EquipmentIssues {return EquipmentIssues(difficulty: equipmentDifficultyCheckbox.state, glucometerIssues: glucometerIssuesPopup.titleOfSelectedItem!)}
	var vibrationResults:VibrationTesting {return VibrationTesting(vibrationSense: vibrationSensePopup.titleOfSelectedItem!, monofilament: monoNormalCheckbox.state)}
	var labResults:LabResults {return LabResults(atTarget: labsAtTargetCheckbox.state, hgba1c: hba1cView.stringValue, threeMonthAve: threeMonthAveView.stringValue, eGFR: eGFRView.stringValue, bun: bunView.stringValue, creatinine: crView.stringValue, uMalb: uMalbView.stringValue, uMalbModifier: umalbStatusPopup.titleOfSelectedItem!)}
	var planResults:DMPlan {return DMPlan(fbs: planFBSCombo.stringValue, rxDMShoes: rxShoesCheckbox.state, diet: dietDiscussedCheckbox.state, refEd: refEducationCheckbox.state, refPodiatrist: refPodiatristCheckbox.state, refNutritionist: refNutritionCheckbox.state, refOptho: refOpthoCheckbox.state)}
	var assessmentResults:DMAssessment {return DMAssessment(dmType: assDMTypePopup.titleOfSelectedItem!, dmModifier: assDMTypeModifierPopup.titleOfSelectedItem!, fluctuatingBS: assWithFluctuatingBSCheckbox.state, hypoEpisodes: assWHypoEpisodesCheckbox.state, prognosis: assPrognosisPopup.titleOfSelectedItem!, hypoglycemia: assHypoCheckbox.state, peripheralNeuro: assNeuropathyCheckbox.state, pnNumbness: assNumbnessCheckbox.state, painInFeet: assNeuroPainFeetCheckbox.state, painInLegs: assNeuroPainLegsCheckbox.state, retinopathy: assRetinopathyCheckbox.state, retinopathyModifier: assRetinopathyDescriptorPopup.titleOfSelectedItem!, nephropathy: assNephropathyCheckbox.state, amyotrophy: assAmyotrophyCheckbox.state, poorCirculation: assPoorCirculationCheckbox.state, diabeticFoot: assDiabeticFootCheckbox.state, footUlcer: assFootUlcerCheckbox.state, hxFootUlcer: assHxFootUlcerCheckbox.state, callus: assPreUlcerativeCallusCheckbox.state, bunion: assBunionCheckbox.state, hammerToes: assHammerToesCheckbox.state, onycomycosis: assOnycomycosisCheckbox.state)}
	
	override func awakeFromNib() {
		takeClearDM(self)
	}
	
	@IBAction func takeClearDM(_ sender: AnyObject) {
		dmeView.clearControllers()
		//clearCheckboxes(checkboxArray)
		//clearTextFields(textFieldArray)
		clearPopups(popupArray)
		
		fbsFrequencyCurrentCombo.removeAllItems()
		fbsFrequencyCurrentCombo.addItems(withObjectValues: checkingFBSComboList)
		fbsFrequencyCurrentCombo.selectItem(at: 0)
		planFBSCombo.removeAllItems()
		planFBSCombo.addItems(withObjectValues: checkingFBSComboList)
		planFBSCombo.selectItem(at: 0)
	}
	
	@IBAction func takeProcessDM(_ sender: NSButton) {
		let resultLists:[IsDMData] = [complianceResults, eyeExamResults, lbsArray, hbsArray, equipmentResults, vibrationResults, labResults, assessmentResults, planResults]
		var resultArray = [String]()
		var resultString = String()
		
		for list in resultLists {
			let result = list.processData()
			if !result.isEmpty {
				resultArray.append(result)
			}
		}
		
		if !resultArray.isEmpty{
			resultString = resultArray.joined(separator: "\n")
		}
		
		let pasteBoard = NSPasteboard.general()
		pasteBoard.clearContents()
		pasteBoard.setString(resultString, forType: NSPasteboardTypeString)
		
		Swift.print(resultString)
	}

	
	func clearCheckboxes(_ boxes:[NSButton]) {
		for box in boxes {
			box.state = NSOffState
		}
	}
	
	func clearTextFields(_ fields:[NSTextField]) {
		for field in fields {
			field.stringValue = String()
		}
	}
	
	func clearPopups(_ popups:[(NSPopUpButton, [String])]) {
		for popup in popups {
			popup.0.removeAllItems()
			popup.0.addItems(withTitles: popup.1)
			popup.0.selectItem(at: 0)
		}
	}
	
}
