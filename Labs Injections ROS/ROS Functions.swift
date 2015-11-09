//
//  Functions.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/5/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

//Set all checkboxes to off
func clearCheckboxes(theButtons: [NSButton]) {	
	for theButton in theButtons {
		theButton.state = NSOffState
	}
	
}

//Set all checkboxes to OnState for testing only
func setCheckboxesOn(theButtons: [NSButton]) {
	for theButton in theButtons {
		theButton.state = NSOnState
	}
	
}

//Set all checkboxes to MixedState for testing only
func setCheckboxesMixed(theButtons: [NSButton]) {
	for theButton in theButtons {
		theButton.state = NSMixedState
	}
	
}

//Process the checkboxes and generate the text for each section
func processROS(sectionName: String, controllers: [NSButton], verbiage: [String]) -> (positives:String, negatives:String) {
	var positives = [String]()
	var positiveResults = String()
	var negatives = [String]()
	var negativeResults = String()
	
	for var i = 0; i < controllers.count; i++ {
		if (controllers[i].state == NSMixedState) {
			positives.append(verbiage[i])
		} else if (controllers[i].state == NSOnState) {
			negatives.append("no " + verbiage[i])
		}
	}
	
	if !positives.isEmpty {
		positiveResults = "\(sectionName): " + positives.joinWithSeparator(", ")
		SystemsReview.ROSVars.positiveResults.append(positiveResults)
	}
	if !negatives.isEmpty {
		negativeResults = "\(sectionName): " + negatives.joinWithSeparator(", ")
		SystemsReview.ROSVars.negativeResults.append(negativeResults)
	}
	
	return (positiveResults, negativeResults)
}
