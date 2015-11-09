//
//  PI Functions.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/6/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

func clearPopupButtons(control:[NSPopUpButton], values:[[String]]) {
	for var i = 0; i < control.count; i++ {
		control[i].removeAllItems()
		control[i].addItemsWithTitles(values[i])
		control[i].selectItemAtIndex(0)
	}
}

func clearComboBoxes(control:[NSComboBox:[String]]) {
	for box in control {
		box.0.removeAllItems()
		box.0.addItemsWithObjectValues(box.1)
		box.0.selectItemAtIndex(0)
	}
}

func clearTextFields(controls: [NSTextField]) {
	for field in controls {
		field.stringValue = ""
	}
}

//Clear checkboxes is being accessed from the ROS Functions file

func processAllControlTypes(controllerArray: [AnyObject], stringArray: [String])-> [String] {
	var returnValueList = [String]()
	for var i = 0; i<controllerArray.count; i++ {
		switch controllerArray[i] {
		case is NSPopUpButton:
			if (controllerArray[i].indexOfSelectedItem() != 0) {
				returnValueList.append(stringArray[i])
			}
		case is NSButton:
			if (controllerArray[i].state == NSOnState) {
				returnValueList.append(stringArray[i])
			}
		case is NSComboBox:
			if (controllerArray[i].stringValue != "") {
				returnValueList.append(stringArray[i])
			}
		case is NSTextField:
			if (controllerArray[i].stringValue != "") {
				returnValueList.append(stringArray[i])
			}
			
		default:
			returnValueList.append("")
		}
	}
	
	return returnValueList
}

//Set all controls to ON state for testing only
//Using setCheckboxesOn function from the ROS Functions file to test checkbox controllers
func turnOnPopupButtons(control:[NSPopUpButton], values:[[String]]) {
	for var i = 0; i < control.count; i++ {
		control[i].removeAllItems()
		control[i].addItemsWithTitles(values[i])
		control[i].selectItemAtIndex(1)
	}
}

func turnOnComboBoxes(control:[NSComboBox:[String]]) {
	for box in control {
		box.0.removeAllItems()
		box.0.addItemsWithObjectValues(box.1)
		box.0.selectItemAtIndex(1)
	}
}

func turnOnTextFields(controls: [NSTextField]) {
	for field in controls {
		field.stringValue = "words for testing"
	}
}
