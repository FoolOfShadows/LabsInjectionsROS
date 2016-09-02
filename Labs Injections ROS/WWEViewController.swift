//
//  WWEViewController.swift
//  Labs Injections ROS
//
//  Created by Fool on 7/19/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

class WWEViewController: NSView {
	@IBOutlet weak var lastMAMView: NSTextField!
	@IBOutlet weak var lastPeriodView: NSTextField!
	@IBOutlet weak var lastPAPPopup: NSPopUpButton!
	@IBOutlet weak var lastPAPNormCheckbox: NSButton!
	@IBOutlet weak var lastPAPAbnormalCheckbox: NSButton!
	@IBOutlet weak var abnormalPAPCheckbox: NSButton!
	@IBOutlet weak var abnormalPAPNoCheckbox: NSButton!
	@IBOutlet weak var abnormalPAPView: NSTextField!
	@IBOutlet weak var periodFrequencyCombo: NSComboBox!
	@IBOutlet weak var periodFrequencyRegularCheckbox: NSButton!
	@IBOutlet weak var periodFrequencyIrregularCheckbox: NSButton!
	@IBOutlet weak var periodLengthCombo: NSComboBox!
	@IBOutlet weak var bloodFlowPopup: NSPopUpButton!
	@IBOutlet weak var bleedingBetweenCheckbox: NSButton!
	@IBOutlet weak var bleedingBetweenNoCheckbox: NSButton!
	@IBOutlet weak var dischargeCheckbox: NSButton!
	@IBOutlet weak var dischargeNoCheckbox: NSButton!
	@IBOutlet weak var sexuallyActiveCheckbox: NSButton!
	@IBOutlet weak var sexuallyActiveNoCheckbox: NSButton!
	@IBOutlet weak var birthControlCheckbox: NSButton!
	@IBOutlet weak var birthControlNoCheckbox: NSButton!
	@IBOutlet weak var birthControlMethodPopup: NSPopUpButton!
	@IBOutlet weak var stdCheckbox: NSButton!
	@IBOutlet weak var stdNoCheckbox: NSButton!
	@IBOutlet weak var desCheckbox: NSButton!
	@IBOutlet weak var desNoCheckbox: NSButton!
	@IBOutlet weak var fertilityMedsCheckbox: NSButton!
	@IBOutlet weak var fertilityMedsNoCheckbox: NSButton!
	@IBOutlet weak var hotFlashesCheckbox: NSButton!
	@IBOutlet weak var hotFlashesNoCheckbox: NSButton!
	@IBOutlet weak var hormoneReplacementCheckbox: NSButton!
	@IBOutlet weak var hormoneReplacementNoCheckbox: NSButton!
	@IBOutlet weak var smokerCheckbox: NSButton!
	@IBOutlet weak var smokerNoCheckbox: NSButton!
	@IBOutlet weak var selfBreastExamsPopup: NSPopUpButton!
	@IBOutlet weak var hxBreastProblemsCheckbox: NSButton!
	@IBOutlet weak var hxBreastProblemsNoCheckbox: NSButton!
	@IBOutlet weak var abusedCheckbox: NSButton!
	@IBOutlet weak var abusedNoCheckbox: NSButton!
	@IBOutlet weak var safeCheckbox: NSButton!
	@IBOutlet weak var safeNoCheckbox: NSButton!
	@IBOutlet weak var breastCancerCheckbox: NSButton!
	@IBOutlet weak var colonCancerCheckbox: NSButton!
	@IBOutlet weak var uterineCancerCheckbox: NSButton!
	@IBOutlet weak var ovarianCancerCheckbox: NSButton!
	@IBOutlet weak var otherCancerCheckbox: NSButton!
	@IBOutlet weak var osteoporosisCheckbox: NSButton!
	@IBOutlet weak var heartDiseaseCheckbox: NSButton!
	@IBOutlet weak var allergiesCheckbox: NSButton!
	@IBOutlet weak var allergiesNoCheckbox: NSButton!
	@IBOutlet weak var allergiesView: NSTextField!
	@IBOutlet weak var painPeriodView: NSTextField!
	@IBOutlet weak var painSexView: NSTextField!
	@IBOutlet weak var painPMSView: NSTextField!
	@IBOutlet weak var pregnanciesCombo: NSComboBox!
	@IBOutlet weak var abortionsCombo: NSComboBox!
	@IBOutlet weak var miscarriagesCombo: NSComboBox!
	@IBOutlet weak var livingChildrenCombo: NSComboBox!
	@IBOutlet weak var liveBirthsCombo: NSComboBox!
	@IBOutlet weak var prematureBirthsCombo: NSComboBox!
	@IBOutlet weak var otherConcernsView: NSTextField!
	
	@IBOutlet weak var breastCancerMatrix: NSMatrix!
	@IBOutlet weak var colonCancerMatrix: NSMatrix!
	@IBOutlet weak var uterineCancerMatrix: NSMatrix!
	@IBOutlet weak var ovarianCancerMatrix: NSMatrix!
	@IBOutlet weak var otherCancerMatrix: NSMatrix!
	@IBOutlet weak var otherCancerView: NSTextField!
	@IBOutlet weak var osteoporosisMatrix: NSMatrix!
	@IBOutlet weak var heartDiseaseMatrix: NSMatrix!
	
	var familyHistoryResults = String()
	
	//var textFieldArray:[NSTextField] {return [lastMAMView, lastPeriodView, abnormalPAPView, allergiesView, painPeriodView, painSexView, painPMSView, otherConcernsView]}
	var checkboxArray: [NSButton] {return [lastPAPNormCheckbox, abnormalPAPCheckbox, periodFrequencyRegularCheckbox, bleedingBetweenCheckbox, dischargeCheckbox, sexuallyActiveCheckbox, birthControlCheckbox, stdCheckbox, desCheckbox, fertilityMedsCheckbox, hotFlashesCheckbox, hormoneReplacementCheckbox, smokerCheckbox, hxBreastProblemsCheckbox, abusedCheckbox, safeCheckbox, allergiesCheckbox]}
	var comboboxArray:[NSComboBox] {return [periodFrequencyCombo, periodLengthCombo, pregnanciesCombo, abortionsCombo, miscarriagesCombo, livingChildrenCombo, liveBirthsCombo, prematureBirthsCombo]}
	var popupArray:[NSPopUpButton] {return [lastPAPPopup, bloodFlowPopup, birthControlMethodPopup, selfBreastExamsPopup]}
	var textFieldArray:[NSTextField] {return [lastMAMView, lastPeriodView, abnormalPAPView, allergiesView, painPeriodView, painSexView, painPMSView, otherConcernsView, otherCancerView]}
	
	var lastMAM:WWEStringData {return WWEStringData(questionString: WWEQuestions.LastMammogram.rawValue, answerString: lastMAMView.stringValue)}
	var lastPeriod:WWEStringData {return WWEStringData(questionString: WWEQuestions.LastPeriod.rawValue, answerString: lastPeriodView.stringValue)}
	var lastPAP:WWEStringData {return WWEStringData(questionString: WWEQuestions.LastPAP.rawValue, answerString: lastPAPPopup.stringValue)}
	var lastPAPNormal:WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.LastPAPNormal.rawValue, yesAnswer: lastPAPNormCheckbox.state, noAnswer: lastPAPAbnormalCheckbox.state)}
	var abnormalPAP:WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.EverHadAbnormalPAP.rawValue, yesAnswer: abnormalPAPCheckbox.state, noAnswer: abnormalPAPNoCheckbox.state)}
	//abnormalPAP When
	var periodFrequency:WWEStringData {return WWEStringData(questionString: WWEQuestions.FrequencyOfPeriod.rawValue, answerString: periodFrequencyCombo.stringValue, needsDays: true)}
	var periodRegularitey:WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.PeriodsRegular.rawValue, yesAnswer: periodFrequencyRegularCheckbox.state, noAnswer: periodFrequencyIrregularCheckbox.state)}
	var periodLength: WWEStringData {return WWEStringData(questionString: WWEQuestions.PeriodLength.rawValue, answerString: periodLengthCombo.stringValue, needsDays: true)}
	var bloodFlow: WWEStringData {return WWEStringData(questionString: WWEQuestions.BloodFlow.rawValue, answerString: bloodFlowPopup.stringValue)}
	var bleedingBetween: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.BleedingBetween.rawValue, yesAnswer: bleedingBetweenCheckbox.state, noAnswer: bleedingBetweenNoCheckbox.state)}
	var vaginalDischarge: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.VaginalDischarge.rawValue, yesAnswer: dischargeCheckbox.state, noAnswer: dischargeNoCheckbox.state)}
	var sexuallyActive: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.SexuallyActive.rawValue, yesAnswer: sexuallyActiveCheckbox.state, noAnswer: sexuallyActiveNoCheckbox.state)}
	var birthControl: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.BirthControlMethod.rawValue, yesAnswer: birthControlCheckbox.state, noAnswer: birthControlNoCheckbox.state)}
	var birthControlMethod: WWEStringData {return WWEStringData(questionString: WWEQuestions.BirthControlMethod.rawValue, answerString: birthControlMethodPopup.stringValue)}
	var stdStatus: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.STD.rawValue, yesAnswer: stdCheckbox.state, noAnswer: stdNoCheckbox.state)}
	var desStatus: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.DES.rawValue, yesAnswer: desCheckbox.state, noAnswer: desNoCheckbox.state)}
	var fertilityMeds: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.FertilityMedicines.rawValue, yesAnswer: fertilityMedsCheckbox.state, noAnswer: fertilityMedsNoCheckbox.state)}
	var hotFlashes: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.HotFlashes.rawValue, yesAnswer: hotFlashesCheckbox.state, noAnswer: hotFlashesNoCheckbox.state)}
	var hormoneReplacement: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.HormoneReplacement.rawValue, yesAnswer: hormoneReplacementCheckbox.state, noAnswer: hormoneReplacementNoCheckbox.state)}
	var smokingStatus: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.Smoke.rawValue, yesAnswer: smokerCheckbox.state, noAnswer: smokerNoCheckbox.state)}
	var selfBreastExams: WWEStringData {return WWEStringData(questionString: WWEQuestions.SelfBreastExams.rawValue, answerString: selfBreastExamsPopup.stringValue)}
	var hxBreastProblems: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.HXBreastProblems.rawValue, yesAnswer: hxBreastProblemsCheckbox.state, noAnswer: hxBreastProblemsNoCheckbox.state)}
	var abused: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.BeenAbused.rawValue, yesAnswer: abusedCheckbox.state, noAnswer: abusedNoCheckbox.state)}
	var safe: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.FeelSafe.rawValue, yesAnswer: safeCheckbox.state, noAnswer: safeNoCheckbox.state)}
	//History matrix results
	var allergies: WWECheckboxData {return WWECheckboxData(questionString: WWEQuestions.Allergies.rawValue, yesAnswer: allergiesCheckbox.state, noAnswer: allergiesNoCheckbox.state)}
	var allergens: WWEStringData {return WWEStringData(questionString: WWEQuestions.Allergens.rawValue, answerString: allergiesView.stringValue)}
	var periodPain: WWEStringData {return WWEStringData(questionString: WWEQuestions.PeriodPain.rawValue, answerString: painPeriodView.stringValue)}
	var sexPain: WWEStringData {return WWEStringData(questionString: WWEQuestions.SexPain.rawValue, answerString: painSexView.stringValue)}
	var pmsPain: WWEStringData {return WWEStringData(questionString: WWEQuestions.PMSPain.rawValue, answerString: painPMSView.stringValue)}
	var pregnancies: WWEStringData {return WWEStringData(questionString: WWEQuestions.Pregnancies.rawValue, answerString: pregnanciesCombo.stringValue)}
	var abortions: WWEStringData {return WWEStringData(questionString: WWEQuestions.Abortions.rawValue, answerString: abortionsCombo.stringValue)}
	var miscarriages: WWEStringData {return WWEStringData(questionString: WWEQuestions.Miscarriages.rawValue, answerString: miscarriagesCombo.stringValue)}
	var livingChildren: WWEStringData {return WWEStringData(questionString: WWEQuestions.LivingChildren.rawValue, answerString: livingChildrenCombo.stringValue)}
	var liveBirths: WWEStringData {return WWEStringData(questionString: WWEQuestions.LiveBirths.rawValue, answerString: liveBirthsCombo.stringValue)}
	var prematureBirths: WWEStringData {return WWEStringData(questionString: WWEQuestions.PrematureBirths.rawValue, answerString: prematureBirthsCombo.stringValue)}
	var otherConcerns:WWEStringData {return WWEStringData(questionString: WWEQuestions.OtherConcerns.rawValue, answerString: otherConcernsView.stringValue)}
	
	
	
	
	var WWExamData:[IsWWEData] {return [lastMAM]}
	

	override func awakeFromNib() {
		setTabToClear()
	}

	func setTabToClear() {
		clearPopupButtons(control: popupArray, values: [lastPapChoices, bloodFlowChoices, birthControlMethods, selfExamFrequencyChoices])
		clearComboBoxes(control: comboboxArray, values: [periodFrequencyChoices, periodLengthChoices, zeroToSixChoices, zeroToFiveChoices, zeroToFiveChoices, zeroToSixChoices, zeroToSixChoices, zeroToFourChoices])
		clearTextFields(controls: textFieldArray)
		clearCheckboxes(theButtons: checkboxArray)
	}
	@IBAction func takeClearButton(_ sender: NSButton) {
		setTabToClear()
	}
	
	@IBAction func takeProcessButton(_ sender: NSButton) {
	
		let dataResults = ""
		let pasteBoard = NSPasteboard.general()
		pasteBoard.clearContents()
		//Set the system clipboard to the final text
		pasteBoard.setString(dataResults, forType: NSPasteboardTypeString)
		Swift.print(dataResults)
		
	}
	
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
	
	func clearPopups(controls:[NSPopUpButton]) {
		for control in controls {
			control.selectItem(at: 0)
		}
	}
	func clearText(fields:[NSTextField]) {
		for field in fields {
			field.stringValue = String()
		}
	}
	func clearCombos(boxes:[NSComboBox]) {
		for box in boxes {
			box.selectItem(at: 0)
		}
	}
}
