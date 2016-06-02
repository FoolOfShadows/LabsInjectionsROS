//
//  HPI Functions.swift
//  Labs Injections ROS
//
//  Created by Fool on 6/2/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

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

func processLocation(textField:NSTextField, checkBoxes:[NSButton], verbiage:[String]) -> String {
	var checkboxResults = [String]()
	var results = ""
	if textField.stringValue != "" {
		checkboxResults.append(textField.stringValue)
	}
	for (index, box) in checkBoxes.enumerate() {
		if box.state == NSOnState {
			checkboxResults.append(verbiage[index])
		}
	}
	
	if !checkboxResults.isEmpty {
		results = "Patient reports pain located in " + checkboxResults.joinWithSeparator(", ") + "."
	}
	
	return results
}

func processDuration(amount:NSTextField, checkBoxes:[NSButton]) -> String {
	var results = ""
	
	for box in checkBoxes {
		if box.state == NSOnState {
		results = "Patient has been experiencing pain for \(amount.stringValue) \(box.title.lowercaseString)"
		}
	}
	
	return results
}

func processSeverity(number:NSTextField, checkBoxes:[NSButton]) -> String {
	var results = ""
	
	if number.stringValue != "" {
		return "Patient reports pain severity as \(number.stringValue) out of 10."
	}
	
	for box in checkBoxes {
		if box.state == NSOnState {
			results = "Patient reports pain severity as \(box.title.lowercaseString)."
		}
	}
	
	return results
}

func processQuality(checkBoxes:[NSButton]) -> String {
	var checkboxResults = [String]()
	var results = ""
	
	for box in checkBoxes {
		if box.state == NSOnState {
			checkboxResults.append(box.title.lowercaseString)
		}
	}
	
	if !checkboxResults.isEmpty {
		results = "Patient reports their pain quality as " + checkboxResults.joinWithSeparator(", ") + "."
		return results
	}
	
	return results
}

func processTiming(checkBoxes: [NSButton]) -> String {
	var checkboxResults = [String]()
	var results = ""
	
	for box in checkBoxes {
		if box.state == NSOnState {
			checkboxResults.append(box.title.lowercaseString)
		}
	}
	
	if !checkboxResults.isEmpty {
		results = "Patient reports timing of pain is " + checkboxResults.joinWithSeparator(", ") + "."
	}
	
	return results
}

func processModifyingFactors(better:[NSButton], worse:[NSButton]) -> String {
	var betterResults = [String]()
	var worseResults = [String]()
	var finalResults = [String]()
	var results = ""
	
	for item in better {
		if item.state == NSOnState {
			betterResults.append(item.title.lowercaseString)
		}
	}
	
	for item in worse {
		if item.state == NSOnState {
			worseResults.append(item.title.lowercaseString)
		}
	}
	
	if !betterResults.isEmpty {
		finalResults.append("Patient reports pain is better with " + betterResults.joinWithSeparator(", ") + ".")
	}
	
	if !worseResults.isEmpty {
		finalResults.append("Patient reposrts pain is worse with " + worseResults.joinWithSeparator(", ") + ".")
	}
	
	if !finalResults.isEmpty {
		results = finalResults.joinWithSeparator("\n")
	}
	
	return results
}

func processAssociatedSymptoms(checkBoxes:[NSButton]) -> String {
	var checkboxResults = [String]()
	var results = ""
	
	for box in checkBoxes {
		if box.state == NSOnState {
			checkboxResults.append(box.title.lowercaseString)
		}
	}
	
	if !checkboxResults.isEmpty {
		results = "Patient reports symptoms associated with their pain are " + checkboxResults.joinWithSeparator(", ") + "."
	}
	
	return results
}

func processFunction(requirements:[NSButton], difficulties:[NSButton]) -> String {
	var requiresResults = [String]()
	var difficultiesResults = [String]()
	var finalResults = [String]()
	var results = ""
	
	for box in requirements {
		if box.state == NSOnState {
			requiresResults.append(box.title.lowercaseString)
		}
	}
	
	for box in difficulties {
		if box.state == NSOnState {
			difficultiesResults.append(box.title.lowercaseString)
		}
	}
	
	if !requiresResults.isEmpty {
		finalResults.append("Patient requires \(requiresResults.joinWithSeparator(", ")) to function.")
	}
	if !difficultiesResults.isEmpty {
		finalResults.append("Patient reports difficulties with \(difficultiesResults.joinWithSeparator(", ")).")
	}
	
	if !finalResults.isEmpty {
		results = finalResults.joinWithSeparator("\n")
	}
	
	return results
}


func processQOL(checkBoxes: [NSButton]) -> String {
	var qolResults = [String]()
	var results = ""
	
	for box in checkBoxes {
		if box.state == NSOnState {
			qolResults.append(box.title.lowercaseString)
		}
	}
	
	if !qolResults.isEmpty {
		results = "Patient reports quality of life as " + qolResults.joinWithSeparator(", ") + "."
	}
	
	
	return results
}










