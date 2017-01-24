//
//  DMModel.swift
//  Labs Injections ROS
//
//  Created by Fool on 9/8/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Foundation

protocol IsDMData {
	func processData() -> String
}

//MARK: Data Enums
enum BSStatus:String {
	case NoLow = "Patient denies symptoms of low blood sugar."
	case NoHigh = "Patient denies any symptoms of high blood sugar."
	case Sweats
	case Shakes
	case Hunger
	case Headache
	case Confusion
	case Lethargy
	case BlurryVision = "blurry vision"
	case Dizziness
	case Thirst = "increased thirst"
	case Urination = "frequent urination"
}

enum VibrationSense:String {
	case None = ""
	case Normal
	case Decreased
	case Absent
}

enum Assessment:String {
	case FluctuatingBS = "with fluctuating blood sugars"
	case HypoEpisodes = "with hypoglycemia episodes"
	case Hypoglycemia = "hypoglycemia in diabetes"
	case PeripheralNeuropathy
	//case Numbness = "with numbness"
	case NeuropathicFeet = "diabetic neuropathic pain in feet"
	case NeuropathicLegs = "diabetic neuropathic pain in legs"
	case Retinopathy = "diabetic retinopathy"
	case Nephropathy = "diabetic nephropathy"
	case Amyotrophy = "diabetic amyotrophy"
	case PoorCirculation = "poor circulation"
	case DiabeticFoot = "diabetic foot"
	case FootUlcer = "diabetic foot ulcer"
	case HxFootUlcer = "history of foot ulcers"
	case PreUlcerativeCallus = "pre-ulcerative callus"
	case Bunion
	case HammerToes = "hammer toes"
	case Onycomycosis
	
	func adaptedPeripheralNeuropathy(numbness:Int) -> String {
		switch self {
		case .PeripheralNeuropathy:
			if numbness == 1 {
				return "diabetic peripheral neuropathy with numbness"
			}
			return "diabetic peripheral neuropathy"
		default: return ""
		}
	}
	func adaptedRetinopathy(with:String) -> String {
		switch self {
		case .Retinopathy:
			if !with.isEmpty {
				return "diabetic retinopathy with \(with)"
			}
			return "diabetic retinopathy"
		default: return ""
		}
	}
}

enum DMReferrals:String {
	case DMEducation = "DM Education"
	case Nutritionist
	case Podiatrist
	case Opthalmologist
}

//MARK: Data Structs

struct DMCompliance: IsDMData {
	var compliance:String
	var takingMeds:Int
	var exercising:String
	var logProvided:String
	//var checkingFBS:Int
	var timesADay:String
	var lowerRange:String
	var higherRange:String
	var noFootComplaints:Int
	var numbFeet:Int
	var tinglingFeet:Int
	var burningFeet:Int
	
	
	func processData() -> String {
		var returnArray = [String]()
		var returnString = String()
		var footComplaintsArray = [String]()
		
		if !compliance.isEmpty {
			returnArray.append("Patient is \(compliance.lowercased())")
		}
		if takingMeds == 1 {
			returnArray.append("Patient reports compliance with taking medication and is taking them without difficulty")
		}
		if exercising == "Yes" {
			returnArray.append("Patient is exercising regularly")
		} else if exercising == "No" {
			returnArray.append("Patient is not exercising regularly")
		}
		if logProvided == "Yes" {
			returnArray.append("Blood sugar log provided and reviewed.")
		} else if logProvided == "No" {
			returnArray.append("Patient did not provide blood sugar log")
		}
		if !timesADay.isEmpty {
			returnArray.append("Patient is checking finger stick blood sugar \(timesADay), with a range of \(lowerRange) to \(higherRange).")
		}
		if noFootComplaints == 1 {
			returnArray.append("Patient denies any foot complaints")
		}
		if numbFeet == 1 {
			footComplaintsArray.append("numbness")
		}
		if tinglingFeet == 1 {
			footComplaintsArray.append("tingling")
		}
		if burningFeet == 1 {
			footComplaintsArray.append("burning pain")
		}
		
		if !footComplaintsArray.isEmpty {
			returnArray.append("Patient complains of \(footComplaintsArray.joined(separator: ", ")) in feet.")
		}
		
		if !returnArray.isEmpty {
			returnString = returnArray.joined(separator: "\n")
		}
		
		return returnString
	}
}

struct EyeExam: IsDMData {
	let lastExam:String
	let visionChange:Int
	var visionChangeString:String {
		var result = String()
		if visionChange == 1 {
			result = "was"
		} else if visionChange == 0 {
			result = "was not"
		}
		return result
	}
	let physician:String
	let retinopathy:String
	
	func processData() -> String {
		if !lastExam.isEmpty {
		return "Patient reports last eye exam on \(lastExam) with \(physician).  A change in vision \(visionChangeString) noted. Retinopathy: \(retinopathy)"
		} else {
			return ""
		}
	}
	
}

struct LowBloodSugar: IsDMData {
	var noSymptoms:(Int, BSStatus) = (Int(), .NoLow)
	var sweats:(Int, BSStatus) = (Int(), .Sweats)
	var shakes:(Int, BSStatus) = (Int(), .Shakes)
	var headAche:(Int, BSStatus) = (Int(), .Headache)
	var confusion:(Int, BSStatus) = (Int(), .Confusion)
	var lethargy:(Int, BSStatus) = (Int(), .Lethargy)
	var blurryVision:(Int, BSStatus) = (Int(), .BlurryVision)
	var dizziness:(Int, BSStatus) = (Int(), .Dizziness)
	
	var lbsList:[(Int, BSStatus)] {return [sweats, shakes, headAche, confusion, lethargy, blurryVision, dizziness]}
	
	init(noSymptoms: Int, sweats: Int, shakes: Int, headAche: Int, confusion: Int, lethargy: Int, blurryVision: Int, dizziness: Int) {
		self.noSymptoms.0 = noSymptoms
		self.sweats.0 = sweats
		self.shakes.0 = shakes
		self.headAche.0 = headAche
		self.confusion.0 = confusion
		self.lethargy.0 = lethargy
		self.blurryVision.0 = blurryVision
		self.dizziness.0 = dizziness
	}
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		for item in lbsList {
			if item.0 == 1 {
				resultArray.append(item.1.rawValue)
			}
		}
		
		if !resultArray.isEmpty {
			resultString = "Patient reports symptoms of low blood sugar: \(resultArray.joined(separator: ", "))"
		} else if noSymptoms.0 == 1 {
			resultString = "Patient denies any symptoms of low blood sugar."
		}
		
		return resultString
	}
}

struct HighBloodSugar: IsDMData {
	var noSymptoms:(Int, BSStatus) = (Int(), .NoHigh)
	var hunger:(Int, BSStatus) = (Int(), .Hunger)
	var dizziness:(Int, BSStatus) = (Int(), .Dizziness)
	var thirst:(Int, BSStatus) = (Int(), .Thirst)
	var urination:(Int, BSStatus) = (Int(), .Urination)
	var blurryVision:(Int, BSStatus) = (Int(), .BlurryVision)
	
	
	var lbsList:[(Int, BSStatus)] {return [hunger, dizziness, thirst, urination, blurryVision]}
	
	init(noSymptoms: Int, hunger: Int, dizziness: Int, thirst: Int, urination: Int, blurryVision: Int) {
		self.noSymptoms.0 = noSymptoms
		self.hunger.0 = hunger
		self.dizziness.0 = dizziness
		self.thirst.0 = thirst
		self.urination.0 = urination
		self.blurryVision.0 = blurryVision
		
	}
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		for item in lbsList {
			if item.0 == 1 {
				resultArray.append(item.1.rawValue)
			}
		}
		
		if !resultArray.isEmpty {
			resultString = "Patient reports symptoms of high blood sugar: \(resultArray.joined(separator: ", "))"
		} else if noSymptoms.0 == 1 {
			resultString = "Patient denies any symptoms of high blood sugar."
		}
		
		return resultString
	}
}

struct EquipmentIssues: IsDMData {
	var difficulty:Int
	var glucometerIssues:String
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		if difficulty == 1 {
			resultArray.append("Patient has difficulty with their equipment")
		}
		if !glucometerIssues.isEmpty {
			resultArray.append("Glucometer issues: \(glucometerIssues)")
		}
		
		if !resultArray.isEmpty {
			resultString = resultArray.joined(separator: "\n")
		}
		
		return resultString
	}
}

struct VibrationTesting: IsDMData {
	var vibrationSense:String
	var monofilament:Int
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		if vibrationSense != "" {
			resultArray.append("Vibration sense in feet: \(vibrationSense)")
		}
		if monofilament == 1 {
			resultArray.append("Monofilament screen normal")
		}
		
		if !resultArray.isEmpty {
			resultString = resultArray.joined(separator: "\n")
		}
		
		return resultString
	}
}

struct LabResults: IsDMData {
	var atTarget:Int
	var labDate:String
	var hgba1c:String
	var threeMonthAve:String
	var eGFR:String
	var bun:String
	var creatinine:String
	var ldl:String
	var uMalb:String
	var uMalbModifier:String
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		if atTarget == 1 {
			resultArray.append("All labs are at target values.")
		}
		if !labDate.isEmpty {
			resultArray.append("Lab date \(labDate).")
		}
		if !hgba1c.isEmpty {
			resultArray.append("HgbA1C: \(hgba1c)")
		}
		if !threeMonthAve.isEmpty {
			resultArray.append("3 month glucose average: \(threeMonthAve)")
		}
		if !eGFR.isEmpty {
			resultArray.append("eGFR: \(eGFR)")
		}
		if !bun.isEmpty {
			resultArray.append("BUN: \(bun)")
		}
		if !creatinine.isEmpty {
			resultArray.append("Creatinine: \(creatinine)")
		}
		if !ldl.isEmpty {
			resultArray.append("LDL: \(ldl)")
		}
		if !uMalb.isEmpty {
			var uMalbResults = ("U Malb: \(uMalb)")
			if !uMalbModifier.isEmpty {
				uMalbResults = uMalbResults + " - \(uMalbModifier)"
			}
			resultArray.append(uMalbResults)
		}
		
		if !resultArray.isEmpty {
			resultString = resultArray.joined(separator: "\n")
		}
		
		return resultString
	}
}

struct DMPlan: IsDMData {
	var fbs:String
	var rxDMShoes:Int
	var diet:Int
	var refEd:Int
	var refPodiatrist:Int
	var refNutritionist:Int
	var refOptho:Int
	
	var referrals:[(Int, DMReferrals)] {return [(refEd, .DMEducation), (refPodiatrist, .Podiatrist), (refNutritionist, .Nutritionist), (refOptho, .Opthalmologist)]}
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		var refResults = [String]()
		
		if !fbs.isEmpty {
			resultArray.append("Patient directed to check blood sugars \(fbs.lowercased()).")
		}
		
		if rxDMShoes == 1 {
			resultArray.append("DM Shoes prescribed at this visit.")
		}
		
		if diet == 1 {
			resultArray.append("DM diet discussed with patient at this visit.")
		}
		
		for item in referrals {
			if item.0 == 1 {
				refResults.append(item.1.rawValue)
			}
		}
		if !refResults.isEmpty {
			resultArray.append("Referrals made: \(refResults.joined(separator: ", ").lowercased()).")
		}
		
		if !resultArray.isEmpty {
			resultString = resultArray.joined(separator: "\n")
		}
		
		return resultString
	}
}

struct DMAssessment: IsDMData {
	var dmType:String
	var dmModifier:String
	var fluctuatingBS:(Int, String)
	var hypoEpisodes:(Int, String)
	var prognosis:String
	var hypoglycemia:(Int, String)
	var peripheralNeuro:(Int, String)
	//var pnNumbness:(Int, String)
	var painInFeet:(Int, String)
	var painInLegs:(Int, String)
	var retinopathy:(Int, String)
	//var retinopathyModifier:String
	var nephropathy:(Int, String)
	var amyotrophy:(Int, String)
	var poorCirculation:(Int, String)
	var diabeticFoot:(Int, String)
	var footUlcer:(Int, String)
	var hxFootUlcer:(Int, String)
	var callus:(Int, String)
	var bunion:(Int, String)
	var hammerToes:(Int, String)
	var onycomycosis:(Int, String)
	
	func processData() -> String {
		var dmAssessmentControllers = [hypoglycemia, peripheralNeuro, painInFeet, painInLegs, retinopathy, nephropathy, amyotrophy, poorCirculation, diabeticFoot, footUlcer, hxFootUlcer, callus, bunion, hammerToes, onycomycosis]
		var resultsArray = [String]()
		var resultsString = String()
		var dmDescriptionArray = [String]()
		var dmSymptomsArray = [String]()
		
		if !dmType.isEmpty {
			dmDescriptionArray.append("Diabetes Mellitus \(dmType)")
		}
		if !dmModifier.isEmpty {
			dmDescriptionArray.append(dmModifier)
		}
		if fluctuatingBS.0 == 1 {
			dmDescriptionArray.append(fluctuatingBS.1)
		}
		if hypoEpisodes.0 == 1 {
			dmDescriptionArray.append(hypoEpisodes.1)
		}
		if !prognosis.isEmpty {
			dmDescriptionArray.append("prognosis: \(prognosis)")
		}
		if !dmDescriptionArray.isEmpty {
			resultsArray.append(dmDescriptionArray.joined(separator: ", "))
		}
		
		for controller in dmAssessmentControllers {
			if controller.0 == 1 {
				resultsArray.append(controller.1)
			}
		}
		
		if !resultsArray.isEmpty {
			resultsString = "- \(resultsArray.joined(separator: "\n- "))"
		}
		
		
		
		return resultsString
	}
}

//MARK: Menu Constants

let compliancePopupList = ["", "Compliant w/Meds & Diet", "Compliant w/Meds", "Compliant w/Diet", "Non-compliant w/Meds & Diet", "Non-compliant w/Meds", "Non-compliant w/Diet"]
let checkingFBSComboList = ["", "1 time/day", "2 times/day", "3 times/day", "4 times/day", "5 times/day", "6 times/day", "2 times/day, 3days/week", "Every Other Day", "Every Week"]
let retinopathyExamPopupList = ["", "No", "Yes", "Unknown"]
let glucometerIssuresPopupList = ["", "Poor vision", "Blindness", "Dexterity"]
let umalbPopupList = ["", "Normal", "Abnormal"]
let dmTypePopupList = ["", "I", "II", "II, Insulin requiring"]
let dmModifierPopupList = ["", "Controlled on diet", "Controlled on meds", "Controlled on insulin", "Uncontrolled"]
let prognosisPopupList = ["", "Stable", "Fair", "Poor", "Declining", "Improving"]
let retinopathyHxPopupList = ["", "Vision Loss", "Poor Vision", "Laser Treatment", "Injection Treatment"]
let yesNoPopupList = ["", "Yes", "No"]
let vibrationSensePopupList = [VibrationSense.None.rawValue, VibrationSense.Normal.rawValue, VibrationSense.Decreased.rawValue, VibrationSense.Absent.rawValue]
