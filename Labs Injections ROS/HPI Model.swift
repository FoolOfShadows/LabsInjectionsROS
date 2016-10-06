//
//  HPI Functions.swift
//  Labs Injections ROS
//
//  Created by Fool on 6/2/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

protocol IsHPIData {
	func processData() -> String
}

enum LocationList:String {
	case Chest = "chest"
	case Abdomen = "abdomen"
	case LRibs = "left side ribs"
	case RRibs = "right side ribs"
	case LShoulder = "left shoulder"
	case RShoulder = "right shoulder"
	case LUArm = "left upper arm"
	case RUArm = "right upper arm"
	case LElbow = "left elbow"
	case RElbow = "right elbow"
	case LForearm = "left forearm"
	case RForearm = "right forearm"
	case LWrist = "left wrist"
	case RWrist = "right wrist"
	case LHand = "left hand"
	case RHand = "right hand"
	case Back = "back"
	case Neck = "neck"
	case LHip = "left hip"
	case RHip = "right hip"
	case LULeg = "left upper leg"
	case RULeg = "right upper leg"
	case LKnee = "left knee"
	case RKnee = "right knee"
	case LLLeg = "left lower leg"
	case RLLeg = "right lower leg"
	case LAnkle = "left ankle"
	case RAnkle = "right ankle"
	case LFoot = "left foot"
	case RFoot = "right foot"
}

enum TimingList:String {
	case Constant
	case Frequent
	case Occasional
	case Infrequent
	case Intermittent
	case AtRest = "at rest"
	case AfterWork = "after work"
	case AfterExercise = "after exercise"
	case Morning = "in the morning"
	case Night = "at night"
	case EndOfDay = "at the end of the day"
}

enum FunctionList:String {
	case Job
	case Grooming
	case Bathing = "bathing and toilet"
	case Cooking
	case Eating
	case Chores
}

enum FunctionListTwo:Int {
	case NoAssistance = 1
	case WheelChair
	case Walker
	case Cane
	case WalkerOrCane
	
	var functionVerbiage:String {
		switch self {
		case .NoAssistance: return "Ambulates without assistance."
		case .WheelChair: return "Mobilizes with wheel chair."
		case .Walker: return "Ambulates with walker."
		case .Cane: return "Ambulates with cane."
		case .WalkerOrCane: return "Ambulates with walker or cane."
		}
	}
}

struct HPILocation: IsHPIData {
	var chest:(Int, LocationList) = (Int(), .Chest)
	var abdomen:(Int, LocationList) = (Int(), .Abdomen)
	var lRibs:(Int, LocationList) = (Int(), .LRibs)
	var rRibs:(Int, LocationList) = (Int(), .RRibs)
	var lShoulder:(Int, LocationList) = (Int(), .LShoulder)
	var rShoulder:(Int, LocationList) = (Int(), .RShoulder)
	var luArm:(Int, LocationList) = (Int(), .LUArm)
	var ruArm:(Int, LocationList) = (Int(), .RUArm)
	var lElbow:(Int, LocationList) = (Int(), .LElbow)
	var rElbow:(Int, LocationList) = (Int(), .RElbow)
	var lForearm:(Int, LocationList) = (Int(), .LForearm)
	var rForearm:(Int, LocationList) = (Int(), .RForearm)
	var lWrist:(Int, LocationList) = (Int(), .LWrist)
	var rWrist:(Int, LocationList) = (Int(), .RWrist)
	var lHand:(Int, LocationList) = (Int(), .LHand)
	var rHand:(Int, LocationList) = (Int(), .RHand)
	var back:(Int, LocationList) = (Int(), .Back)
	var neck:(Int, LocationList) = (Int(), .Neck)
	var lHip:(Int, LocationList) = (Int(), .LHip)
	var rHip:(Int, LocationList) = (Int(), .RHip)
	var luLeg:(Int, LocationList) = (Int(), .LULeg)
	var ruLeg:(Int, LocationList) = (Int(), .RULeg)
	var lKnee:(Int, LocationList) = (Int(), .LKnee)
	var rKnee:(Int, LocationList) = (Int(), .RKnee)
	var llLeg:(Int, LocationList) = (Int(), .LLLeg)
	var rlLeg:(Int, LocationList) = (Int(), .RLLeg)
	var lAnkle:(Int, LocationList) = (Int(), .LAnkle)
	var rAnkle:(Int, LocationList) = (Int(), .RAnkle)
	var lFoot:(Int, LocationList) = (Int(), .LFoot)
	var rFoot:(Int, LocationList) = (Int(), .RFoot)
	var other = String()
	
	init(chest:Int, abdomen:Int, lRibs:Int, rRibs:Int, lShoulder:Int, rShoulder:Int, luArm:Int, ruArm:Int, lElbow:Int, rElbow:Int, lForearm:Int, rForearm:Int, lWrist:Int, rWrist:Int, lHand:Int, rHand:Int, back:Int, neck:Int, lHip:Int, rHip:Int, luLeg:Int, ruLeg:Int, lKnee:Int, rKnee:Int, llLeg:Int, rlLeg:Int, lAnkle:Int, rAnkle:Int, lFoot:Int, rFoot:Int, other:String) {
		self.chest.0 = chest
		self.abdomen.0 = abdomen
		self.lRibs.0 = lRibs
		self.rRibs.0 = rRibs
		self.lShoulder.0 = lShoulder
		self.rShoulder.0 = rShoulder
		self.luArm.0 = luArm
		self.ruArm.0 = ruArm
		self.lElbow.0 = lElbow
		self.rElbow.0 = rElbow
		self.lForearm.0 = lForearm
		self.rForearm.0 = rForearm
		self.lWrist.0 = lWrist
		self.rWrist.0 = rWrist
		self.lHand.0 = lHand
		self.rHand.0 = rHand
		self.back.0 = back
		self.neck.0 = neck
		self.lHip.0 = lHip
		self.rHip.0 = rHip
		self.luLeg.0 = luLeg
		self.ruLeg.0 = ruLeg
		self.lKnee.0 = lKnee
		self.rKnee.0 = rKnee
		self.llLeg.0 = llLeg
		self.rlLeg.0 = rlLeg
		self.lAnkle.0 = lAnkle
		self.rAnkle.0 = rAnkle
		self.lFoot.0 = lFoot
		self.rFoot.0 = rFoot
		self.other = other
	}
	var locationCheckboxes:[(Int, LocationList)] {return [chest, abdomen, lRibs, rRibs, lShoulder, rShoulder, luArm, ruArm, lElbow, rElbow, lForearm, rForearm, lWrist, rWrist, lHand, rHand, back, neck, lHip, rHip, luLeg, ruLeg, lKnee, rKnee, llLeg, rlLeg, lAnkle, rAnkle, lFoot, rFoot] }
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		for box in locationCheckboxes {
			if box.0 == 1 {
				resultArray.append(box.1.rawValue)
			}
		}
		
		if !other.isEmpty {
			resultArray.append(other)
		}
		
		if !resultArray.isEmpty {
			resultString = "Location of pain: \(resultArray.joined(separator: ", "))."
		}
		
		
		return resultString
	}
}

struct HPIDuration: IsHPIData {
	var quantity:String
	var timeFrame:String
	
	func processData() -> String {
		var results = String ()
		
		if !quantity.isEmpty {
			results = "Duration: \(quantity) \(timeFrame)."
		}
		
		return results
	}
}

struct HPISeverity: IsHPIData {
	var outOfTen: String
	var description: String
	
	func processData() -> String {
		var resultString = String()
		
		if !outOfTen.isEmpty {
			resultString = "Severity: \(outOfTen)/10."
		} else if !description.isEmpty {
			resultString = "Severity: \(description)."
		}
		
		return resultString
	}
}

struct HPIQuality: IsHPIData {
	var aching:(Int, String)
	var sore:(Int, String)
	var sharp:(Int, String)
	var stabbing:(Int, String)
	var dull:(Int, String)
	var burning:(Int, String)
	var stinging:(Int, String)
	var throbbing:(Int, String)
	var cramping:(Int, String)
	var spasm:(Int, String)
	
	var qualityList:[(Int, String)] {return [aching, sore, sharp, stabbing, dull, burning, stinging, throbbing, cramping, spasm]}
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		for item in qualityList {
			if item.0 == 1 {
				resultArray.append(item.1.lowercased())
			}
		}
		
		if !resultArray.isEmpty {
			resultString = "Quality: \(resultArray.joined(separator: ", "))."
		}
		
		return resultString
	}
}

struct HPITiming: IsHPIData {
	var constant:(Int, TimingList) = (Int(), .Constant)
	var frequent:(Int, TimingList) = (Int(), .Frequent)
	var occasional:(Int, TimingList) = (Int(), .Occasional)
	var infrequent:(Int, TimingList) = (Int(), .Infrequent)
	var intermittent:(Int, TimingList) = (Int(), .Intermittent)
	var atRest:(Int, TimingList) = (Int(), .AtRest)
	var afterWork:(Int, TimingList) = (Int(), .AfterWork)
	var afterExercise:(Int, TimingList) = (Int(), .AfterExercise)
	var morning:(Int, TimingList) = (Int(), .Morning)
	var night:(Int, TimingList) = (Int(), .Night)
	var endOfDay:(Int, TimingList) = (Int(), .EndOfDay)
	
	var painType:[(Int, TimingList)] {return [constant, frequent, occasional, infrequent, intermittent]}
	var when:[(Int, TimingList)] {return [atRest, afterWork, afterExercise, morning, night, endOfDay]}
	
	init(constant:Int, frequent:Int, occasional:Int, infrequent:Int, atRest:Int, afterWork:Int, afterExercise:Int, morning:Int, night:Int, endOfDay: Int){
		self.constant.0 = constant
		self.frequent.0 = frequent
		self.occasional.0 = occasional
		self.infrequent.0 = infrequent
		self.atRest.0 = atRest
		self.afterWork.0 = afterWork
		self.afterExercise.0 = afterExercise
		self.morning.0 = morning
		self.night.0 = night
		self.endOfDay.0 = endOfDay
	}
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		var painArray = [String]()
		var whenArray = [String]()
		
		for type in painType {
			if type.0 == 1 {
			painArray.append(type.1.rawValue.lowercased())
			}
		}
		
		for time in when {
			if time.0 == 1 {
				whenArray.append(time.1.rawValue.lowercased())
			}
		}
		
		if !painArray.isEmpty {
			resultArray.append("Timing: \(painArray.joined(separator: ", ")).")
		}
		
		if !whenArray.isEmpty {
			resultArray.append("Worse: \(whenArray.joined(separator: ", ")).")
		}
		
		if !resultArray.isEmpty {
			resultString = resultArray.joined(separator: "\n")
		}
		
		return resultString
	}
}

struct HPIContext: IsHPIData {
	var context:String
	var cause:String
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		if !context.isEmpty {
			resultArray.append("Current status is \(context).")
		}
		
		if !cause.isEmpty {
			resultArray.append("Cause: \(cause).")
		}
		
		if !resultArray.isEmpty {
			resultString = "Context: \(resultArray.joined(separator: "\n"))."
		}
		
		return resultString
	}
}

struct HPIModifyingFactors: IsHPIData {
	var heat:(Int, String)
	var ice:(Int, String)
	var rest:(Int, String)
	var elevation:(Int, String)
	var medication:(Int, String)
	var lifting:(Int, String)
	var bending:(Int, String)
	var stairs:(Int, String)
	var standing:(Int, String)
	var walking:(Int, String)
	var sitting:(Int, String)
	var reaching:(Int, String)
	var laying:(Int, String)
	var chores:(Int, String)
	
	var betterList:[(Int, String)] {return [heat, ice, rest, elevation, medication]}
	var worseList:[(Int, String)] {return [lifting, bending, stairs, standing, walking, sitting, reaching, laying, chores]}
	
	func processData() -> String {
		var betterArray = [String]()
		var worseArray = [String]()
		var resultArray = [String]()
		var resultString = String()
		
		for better in betterList {
			if better.0 == 1 {
				betterArray.append(better.1.lowercased())
			}
		}
		
		for worse in worseList {
			if worse.0 == 1 {
				worseArray.append(worse.1.lowercased())
			}
		}
		
		if !betterArray.isEmpty {
			resultArray.append("Better with: \(betterArray.joined(separator: ", ")).")
		}
		if !worseArray.isEmpty {
			resultArray.append("Worse with: \(worseArray.joined(separator: ", ")).")
		}
		if !resultArray.isEmpty {
			resultString = "Modifying factors:\n\(resultArray.joined(separator: "\n"))"
		}
		
		return resultString
	}
}

struct HPIAssociatedSymptoms: IsHPIData {
	var numbness:(Int, String)
	var tingling:(Int, String)
	var weakness:(Int, String)
	var stiffness:(Int, String)
	var limp:(Int, String)
	var limitedMovement:(Int, String)
	var footDrop:(Int, String)
	var bladder:(Int, String)
	var bowel:(Int, String)
	
	var symptomsArray:[(Int, String)] {return [numbness, tingling, weakness, stiffness, limp, limitedMovement, footDrop, bladder, bowel]}
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		for symptom in symptomsArray {
			if symptom.0 == 1 {
				resultArray.append(symptom.1.lowercased())
			} else if symptom.0 == -1 {
				resultArray.append("no \(symptom.1.lowercased())")
			}
		}
		
		if !resultArray.isEmpty {
			resultString = "Associated symptoms: \(resultArray.joined(separator: ", "))."
		}
		
		return resultString
	}
}

struct HPIFunction: IsHPIData {
	var mobileWith:Int
	var job:(Int, FunctionList) = (Int(), .Job)
	var grooming:(Int, FunctionList) = (Int(), .Grooming)
	var bathing:(Int, FunctionList) = (Int(), .Bathing)
	var cooking:(Int, FunctionList) = (Int(), .Cooking)
	var eating:(Int, FunctionList) = (Int(), .Eating)
	var chores:(Int, FunctionList) = (Int(), .Chores)
	
	var troubleList:[(Int, FunctionList)] {return [job, grooming, bathing, cooking, eating, chores]}
	
	init(mobileWith:Int, job:Int, grooming:Int, bathing:Int, cooking:Int, eating:Int, chores:Int) {
		self.mobileWith = mobileWith
		self.job.0 = job
		self.grooming.0 = grooming
		self.bathing.0 = bathing
		self.cooking.0 = cooking
		self.eating.0 = eating
		self.chores.0 = chores
	}
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		var troubleArray = [String]()
		
		if mobileWith > 0 {
			if let theSelected = FunctionListTwo(rawValue: mobileWith) {
				resultArray.append(theSelected.functionVerbiage)
			}
		}
		
		for trouble in troubleList {
			if trouble.0 == 1 {
				troubleArray.append(trouble.1.rawValue.lowercased())
			}
		}
		
		if !troubleArray.isEmpty {
			resultArray.append("Patient has trouble with \(troubleArray.joined(separator: ", ")).")
		}
		
		if !resultArray.isEmpty {
			resultString = "Function: \(resultArray.joined(separator: "\n"))"
		}
		
		
		return resultString
	}
}

struct HPIQOL: IsHPIData {
	var quality:String
	var comments:String
	
	func processData() -> String {
		var resultArray = [String]()
		var resultString = String()
		
		if !quality.isEmpty {
			resultArray.append(quality)
		}
		if !comments.isEmpty {
			resultArray.append(comments)
		}
		
		if !resultArray.isEmpty {
			resultString = "Quality of life: \(resultArray.joined(separator: ", "))."
		}
		
		return resultString
	}
}













