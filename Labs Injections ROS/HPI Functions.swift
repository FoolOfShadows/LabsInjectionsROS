//
//  HPI Functions.swift
//  Labs Injections ROS
//
//  Created by Fool on 6/2/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

class HPIClass {
	var locationCheckboxes:[NSButton]
	var locationVerbiage:[String]
	var durationCheckboxes:[NSButton]
	var severityCheckboxes:[NSButton]
	var qualityCheckboxes:[NSButton]
	var timingCheckboxes:[NSButton]
	var contextCheckboxes:[NSButton]
	var modifyingFactorsBetterCheckboxes:[NSButton]
	var modifyingFactorsWorseCheckboxes:[NSButton]
	var associatedSymptomsCheckboxes:[NSButton]
	var functionWithCheckboxes:[NSButton]
	var functionDifficultyCheckboxes:[NSButton]
	var qolCheckboxes:[NSButton]
	
	init(locationCheckboxes:[NSButton], locationVerbiage:[String], duration:[NSButton], severity:[NSButton], quality:[NSButton], timing:[NSButton], context:[NSButton], modifyingBetter:[NSButton], modifyingWorse:[NSButton], associatedSymptoms:[NSButton], functionWith:[NSButton], functionDifficulty:[NSButton], qol:[NSButton]) {
		self.locationCheckboxes = locationCheckboxes
		self.locationVerbiage = locationVerbiage
		self.durationCheckboxes = duration
		self.severityCheckboxes = severity
		self.qualityCheckboxes = quality
		self.timingCheckboxes = timing
		self.contextCheckboxes = context
		self.modifyingFactorsBetterCheckboxes = modifyingBetter
		self.modifyingFactorsWorseCheckboxes = modifyingWorse
		self.associatedSymptomsCheckboxes = associatedSymptoms
		self.functionWithCheckboxes = functionWith
		self.functionDifficultyCheckboxes = functionDifficulty
		self.qolCheckboxes = qol
	}
	
	func clearControllers() {
		let checkBoxes = [locationCheckboxes, durationCheckboxes, severityCheckboxes, qualityCheckboxes, timingCheckboxes, contextCheckboxes, modifyingFactorsBetterCheckboxes, modifyingFactorsWorseCheckboxes, associatedSymptomsCheckboxes, functionWithCheckboxes, functionDifficultyCheckboxes, qolCheckboxes]
		for boxes in checkBoxes {
			for box in boxes {
				box.state = NSOffState
			}
		}
		
	}
	
}

//Clear the HPI controllers
func clearControllers(checkBoxes:[[NSButton]], textFields:[NSTextField]) {
	for boxes in checkBoxes {
		for box in boxes {
			box.state = NSOffState
		}
	}
	
	for field in textFields {
		field.stringValue = ""
	}
	
}

//MARK: - Process the HPI sections
func processLocation(textField:NSTextField, checkBoxes:[NSButton], verbiage:[String]) -> String {
	var checkboxResults = [String]()
	var results = String()
	if textField.stringValue != "" {
		checkboxResults.append(textField.stringValue)
	}
	for (index, box) in checkBoxes.enumerated() {
		if box.state == NSOnState {
			checkboxResults.append(verbiage[index])
		}
	}
	
	if !checkboxResults.isEmpty {
		results = "Location: " + checkboxResults.joined(separator: ", ")
	}
	
	return results
}

func processDuration(amount:NSTextField, checkBoxes:[NSButton]) -> String {
	var results = String()
	
	for box in checkBoxes {
		if box.state == NSOnState {
		results = "Duration: \(amount.stringValue) \(box.title.lowercased())"
		}
	}
	
	return results
}

func processSeverity(number:NSTextField, checkBoxes:[NSButton]) -> String {
	var results = String()
	
	if number.stringValue != "" {
		return "Severity: \(number.stringValue)/10"
	}
	
	for box in checkBoxes {
		if box.state == NSOnState {
			results = "Severity: \(box.title.lowercased())"
		}
	}
	
	return results
}

func processJustCheckboxes(checkBoxes:[NSButton], title:String) -> String {
	var checkboxResults = [String]()
	var results = String()
	
	for box in checkBoxes {
		if box.state == NSOnState {
			checkboxResults.append(box.title.lowercased())
		}
	}
	
	if !checkboxResults.isEmpty {
		results = "\(title): \(checkboxResults.joined(separator: ", "))"
		return results
	}
	
	return results
}

func processModifyingFactors(better:[NSButton], worse:[NSButton]) -> String {
	var betterResults = [String]()
	var worseResults = [String]()
	var finalResults = [String]()
	var results = String()
	
	for item in better {
		if item.state == NSOnState {
			betterResults.append(item.title.lowercased())
		}
	}
	
	for item in worse {
		if item.state == NSOnState {
			worseResults.append(item.title.lowercased())
		}
	}
	
	if !betterResults.isEmpty {
		finalResults.append("Better with: " + betterResults.joined(separator: ", "))
	}
	
	if !worseResults.isEmpty {
		finalResults.append("Worse with: " + worseResults.joined(separator: ", "))
	}
	
	if !finalResults.isEmpty {
		results = "Modifying factors: " + finalResults.joined(separator: "; ")
	}
	
	return results
}

func processFunction(requirements:[NSButton], difficulties:[NSButton]) -> String {
	var requiresResults = [String]()
	var difficultiesResults = [String]()
	var finalResults = [String]()
	var results = String()
	
	for box in requirements {
		if box.state == NSOnState {
			requiresResults.append(box.title.lowercased())
		}
	}
	
	for box in difficulties {
		if box.state == NSOnState {
			difficultiesResults.append(box.title.lowercased())
		}
	}
	
	if !requiresResults.isEmpty {
		finalResults.append("Ambulates with \(requiresResults.joined(separator: ", "))")
	}
	if !difficultiesResults.isEmpty {
		finalResults.append("\(difficultiesResults.joined(separator: ", "))")
	}
	
	if !finalResults.isEmpty {
		results = "Function: " + finalResults.joined(separator: ", ")
	}
	
	return results
}











