//
//  Functions.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/5/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

//Set all checkboxes to off
func clearCheckboxes(_ theButtons: [NSButton]) {	
	for theButton in theButtons {
		theButton.state = NSOffState
	}
	
}

//Set all checkboxes to OnState for testing only
func setCheckboxesOn(_ theButtons: [NSButton]) {
	for theButton in theButtons {
		theButton.state = NSOnState
	}
	
}

//Set all checkboxes to MixedState for testing only
func setCheckboxesMixed(_ theButtons: [NSButton]) {
	for theButton in theButtons {
		theButton.state = NSMixedState
	}
	
}

//Process the checkboxes and generate the text for each section
func processROS(_ sectionName: String, controllers: [NSButton], verbiage: [String]) -> (positives:String, negatives:String) {
	var positives = [String]()
	var positiveResults = String()
	var negatives = [String]()
	var negativeResults = String()
	
	for (i, _) in controllers.enumerated() {
	//for var i = 0; i < controllers.count; i += 1 {
		if (controllers[i].state == NSMixedState) {
			positives.append(verbiage[i])
		} else if (controllers[i].state == NSOnState) {
			negatives.append("no " + verbiage[i])
		}
	}
	
	if !positives.isEmpty {
		positives = makeFirstCharacterInStringArrayUppercase(positives)
		positiveResults = "\(sectionName): " + positives.joined(separator: ", ")
		SystemsReview.ROSVars.positiveResults.append(positiveResults)
	}
	if !negatives.isEmpty {
		negatives = makeFirstCharacterInStringArrayUppercase(negatives)
		negativeResults = "\(sectionName): " + negatives.joined(separator: ", ")
		SystemsReview.ROSVars.negativeResults.append(negativeResults)
	}
	
	return (positiveResults, negativeResults)
}

func makeFirstCharacterInStringArrayUppercase(_ theArray: [String])->[String] {
	var changedArray = theArray
	var firstItem = theArray[0]
	//Added this check to avoid an error in cases where the first item in a passed array is an empty string
	if firstItem != "" {
		firstItem.replaceSubrange(firstItem.startIndex...firstItem.startIndex, with: String(firstItem[firstItem.startIndex]).uppercased())
//		firstItem.replaceRange(firstItem.startIndex...firstItem.startIndex, with: String(firstItem[firstItem.startIndex]).capitalizedString)
	}
	changedArray[0] = firstItem
	return changedArray
}
