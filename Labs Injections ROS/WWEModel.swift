//
//  WWEModel.swift
//  Labs Injections ROS
//
//  Created by Fool on 7/20/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

enum FamilyRelationship:Int {
	case mother = 0
	case father
	case brother
	case sister
	case maternalGrandmother
	case maternalGrandfather
	case paternalGrandmother
	case paternalGrandfather
	case maternalAunt
	case maternalUncle
	case paternalAunt
	case paternalUncle
	case cousin
	case son
	case daughter
	case none
	
	var fullValue: String {
		switch self {
		case .mother: return "mother"
		case .father: return "father"
		case .brother: return "brother"
		case .sister: return "sister"
		case .maternalGrandmother: return "maternal grandmother"
		case .maternalGrandfather: return "maternal grandfather"
		case .paternalGrandmother: return "paternal grandmother"
		case .paternalGrandfather: return "paternal grandfather"
		case .maternalAunt: return "maternal aunt"
		case .maternalUncle: return "maternal uncle"
		case .paternalAunt: return "paternal aunt"
		case .paternalUncle: return "paternal uncle"
		case .cousin: return "cousin"
		case .son: return "son"
		case .daughter: return "daughter"
		case .none: return "no history"
		}
	}
}

enum WWEQuestions:String {
	case LastMammogram = "When was your last mammogram?"
	case LastPeriod = "When was your last period?"
	case LastPAP = "When was your last PAP test?"
	case LastPAPNormal = "Were the results normal?"
	case EverHadAbnormalPAP = "Have you ever had an abnormal PAP test?"
	case DateOfAbnormalPAP = "Abnormal PAP results on:"
	case FrequencyOfPeriod = "How often do you usually get your period?"
	case PeriodsRegular = "Are your periods usually regular?"
	case PeriodLength = "How many days do your periods usually last?"
	case BloodFlow = "The blood flow is:"
	case BleedingBetween = "Do you have any bleeding between periods?"
	case VaginalDischarge = "Do you have any vaginal discharge?"
	case SexuallyActive = "Are you sexually active?"
	case UseBirthControl = "If yes, do you and your partner use birth control?"
	case BirthControlMethod = "Method:"
	case STD = "Have you ever had a sexually transmitted disease?"
	case DES = "Has your mother ever been exposed to DES?"
	case FertilityMedicines = "Have you ever used fertility medicines?"
	case HotFlashes = "Do you have hot flashes?"
	case HormoneReplacement = "Are you on hormone replacement?"
	case Smoke = "Do you smoke?"
	case SelfBreastExams = "How often do you perform self breast-exams?"
	case HXBreastProblems = "Do you have a history of breast problems?"
	case BeenAbused = "Have you ever been abused?"
	case FeelSafe = "Do you feel safe?"
	//"\(finalFamilyHistory(historyList: familyHistory)!)" +
	case Allergies = "Do you have any allergies?"
	case Allergens = ""
	//"On a scale of 0 to 10, with 0 being no symptoms and 10 being severe symptoms, how would you describe the following:\n" +
	case PeriodPain = "Pain during your usual period:"
	case SexPain = "Pain during sex:"
	case PMSPain = "PMS (premenstrual tension syndrome):"
	//"If you have been pregnant, please indicate how many:\n" +
	case Pregnancies = "Pregnancies:"
	case Abortions = "Abortions:"
	case Miscarriages = "Miscarriages:"
	case LivingChildren = "Living children:"
	case LiveBirths = "Full-term live births:"
	case PrematureBirths = "Premature births:"
	case OtherConcerns = "Please list any other concerns:"
}

protocol IsWWEData {
	var questionString:String { get set }
	func processData () -> String
}

class WWEStringData: IsWWEData {
	var questionString:String
	var answerString:String
	var needsDays:Bool
	
	init(questionString: String, answerString:String, needsDays:Bool = false) {
		self.questionString = questionString
		self.answerString = answerString
		self.needsDays = needsDays
	}
	
	func processData() -> String {
		var result = String()
		if !answerString.isEmpty && answerString != "" {
			if needsDays == false {
				result = "\(questionString) \(answerString)"
			} else if needsDays == true {
				result = "\(questionString) \(answerString) days"
			}
		}
		
		return result
	}
	
	func clearWWEStringData() {
		answerString = String()
	}
}

class WWECheckboxData: IsWWEData {
	var questionString:String
	var yesAnswer:Int
	var noAnswer:Int
	
	init(questionString:String, yesAnswer:Int, noAnswer:Int) {
		self.questionString = questionString
		self.yesAnswer = yesAnswer
		self.noAnswer = noAnswer
	}
	
	func processData() -> String {
		var result = String()
		
		if yesAnswer == 1 {
			result = "\(questionString): YES"
		} else if noAnswer == 1 {
			result = "\(questionString): NO"
		}
		
		return result
	}
	
	func clearWWECheckboxData() {
		yesAnswer = Int()
		noAnswer = Int()
	}
}

class WWEMatrixData: IsWWEData {
	var matrix: NSMatrix
	var questionString: String
	
	init(matrix: NSMatrix, sectionLead: String) {
		self.matrix = matrix
		self.questionString = sectionLead
	}
	
	func processData() -> String {
		let result = String()
		
		return result
	}
	
}


func processFamilyHistory(_ selection: [Int]) -> String {
	var results = [String]()
	var finalString = String()
	for selected in selection {
		if let theSelected = FamilyRelationship(rawValue: selected) {
			results.append(theSelected.fullValue)
		}
	}
	if !results.isEmpty {
		finalString = results.joined(separator: ", ")
	}
	return finalString
}

func processMatrix(_ matrix: NSMatrix, sectionLead: String) -> String {
	var activeCells = [Int]()
	var matrixResults = String()
	for cell in matrix.cells {
		if cell.state == NSOnState {
			activeCells.append(cell.tag)
		}
	}
	
	if !activeCells.isEmpty {
		matrixResults = sectionLead + ": " + processFamilyHistory(activeCells)
	}
	
	return matrixResults
}

func finalFamilyHistory(_ historyList: [(NSMatrix, String)]) -> String {
	var resultsArray = [String]()
	var results = String()
	for list in historyList {
		let processedMatrix = processMatrix(list.0, sectionLead: list.1)
		if !processedMatrix.isEmpty {
		resultsArray.append(processedMatrix)
		}
	}
	if !resultsArray.isEmpty {
		results = "Family history reported: \(resultsArray.joined(separator: "\n"))"
	}
	
	return results
}


func processIsWWEDataGroups(_ dataGroup:[IsWWEData]) -> [String] {
	var results = [String]()
	
	for data in dataGroup {
		let dataResult = data.processData()
		if !dataResult.isEmpty {
			results.append(dataResult)
		}
	}
	
	return results
}


