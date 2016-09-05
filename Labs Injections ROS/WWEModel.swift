//
//  WWEModel.swift
//  Labs Injections ROS
//
//  Created by Fool on 7/20/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Cocoa

enum YesNo:Int {
	case No = 0
	case Yes
	
	var stringValue: String {
		switch self {
		case .No: return "no"
		case .Yes: return "yes"
		}
	}
}

enum FamilyRelationship:Int {
	case Mother = 0
	case Father
	case Brother
	case Sister
	case MaternalGrandmother
	case MaternalGrandfather
	case PaternalGrandmother
	case PaternalGrandfather
	case MaternalAunt
	case MaternalUncle
	case PaternalAunt
	case PaternalUncle
	case Cousin
	case Son
	case Daughter
	
	var fullValue: String {
		switch self {
		case .Mother: return "mother"
		case .Father: return "father"
		case .Brother: return "brother"
		case .Sister: return "sister"
		case .MaternalGrandmother: return "maternal grandmother"
		case .MaternalGrandfather: return "maternal grandfather"
		case .PaternalGrandmother: return "paternal grandmother"
		case .PaternalGrandfather: return "paternal grandfather"
		case .MaternalAunt: return "maternal aunt"
		case .MaternalUncle: return "maternal uncle"
		case .PaternalAunt: return "paternal aunt"
		case .PaternalUncle: return "paternal uncle"
		case .Cousin: return "cousin"
		case .Son: return "son"
		case .Daughter: return "daughter"
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


class WellWomanExam {
	var lastMAM:String
	var lastPeriod:String
	var lastPAPTime:String
	var papAbnormal:Int
	var papAbnormalTime:String
	var periodFreq:String
	var periodRegular:Int
	var periodLength:String
	var bloodFlow:String
	var bleedingBetween:Int
	var discharge:Int
	var sexuallyActive:Int
	var birthControl:Int
	var birthControlMethod:String
	var std:Int
	var des:Int
	var fertilityMeds:Int
	var hotFlashes:Int
	var hormoneReplacement:Int
	var smoker:Int
	var freqBreastExams:String
	var hxBreastProblems:Int
	var abused:Int
	var safe:Int
	var familyHistory:[(matrix: NSMatrix, lead: String)]
	var allergies:Int
	var allergens:String
	var periodPain:String
	var sexPain:String
	var pmsPain:String
	var pregnancies:String
	var abortions:String
	var miscarriages:String
	var livingChildren:String
	var liveBirths:String
	var prematureBirths:String
	var otherConcerns:String
	
	var familyHistoryResults = ""
	
	//var stringsArray:[String] {return [lastMAM, lastPeriod, lastPAPTime, papAbnormalTime, periodFreq, periodLength, bloodFlow, birthControlMethod, freqBreastExams, periodPain, sexPain, pmsPain, otherConcerns]}
	
	init(lastMAM:String, lastPeriod:String, lastPAPTime:String, papAbnormal:Int, papAbnormalTime:String, periodFreq:String, periodRegular:Int, periodLength:String, bloodFlow:String, bleedingBetween:Int, discharge:Int, sexuallyActive:Int, birthControl:Int, birthControlMethod:String, std:Int, des:Int, fertilityMeds:Int, hotFlashes:Int, hormoneReplacement:Int, smoker:Int, freqBreastExams:String, hxBreastProblems:Int, abused:Int, safe:Int, familyHistory:[(matrix:NSMatrix,lead:String)], allergies:Int, allergens:String, periodPain:String, sexPain:String, pmsPain:String, pregnancies:String, abortions:String, miscarriages:String, livingChildren:String, liveBirths:String, prematureBirths:String, otherConcerns:String, familyHistoryResults:String) {
		self.lastMAM = lastMAM
		self.lastPeriod = lastPeriod
		self.lastPAPTime = lastPAPTime
		self.papAbnormal = papAbnormal
		self.papAbnormalTime = papAbnormalTime
		self.periodFreq = periodFreq
		self.periodRegular = periodRegular
		self.periodLength = periodLength
		self.bloodFlow = bloodFlow
		self.bleedingBetween = bleedingBetween
		self.discharge = discharge
		self.sexuallyActive = sexuallyActive
		self.birthControl = birthControl
		self.birthControlMethod = birthControlMethod
		self.std = std
		self.des = des
		self.fertilityMeds = fertilityMeds
		self.hotFlashes = hotFlashes
		self.hormoneReplacement = hormoneReplacement
		self.smoker = smoker
		self.freqBreastExams = freqBreastExams
		self.hxBreastProblems = hxBreastProblems
		self.abused = abused
		self.safe = safe
		self.familyHistory = familyHistory
		self.allergies = allergies
		self.allergens = allergens
		self.periodPain = periodPain
		self.sexPain = sexPain
		self.pmsPain = pmsPain
		self.pregnancies = pregnancies
		self.abortions = abortions
		self.miscarriages = miscarriages
		self.livingChildren = livingChildren
		self.liveBirths = liveBirths
		self.prematureBirths = prematureBirths
		self.otherConcerns = otherConcerns
		self.familyHistoryResults = familyHistoryResults
	}
	
	func processTextFields() -> String {
		var resultArray = [String]()
		var result = String()
	
		
		return result
	}
	func createOutput() -> String {

		let result = "Questionnaire prior to PAP test:\n" +
			"When was your last mammogram? \(lastMAM)\n" +
			"When was your last period? \(lastPeriod)\n" +
			"When was your last PAP test? \(lastPAPTime)\n" +
			"Were the results normal? \(YesNo(rawValue:papAbnormal)!.stringValue)\n" +
			"Have you ever had an abnormal PAP test? \(papAbnormalTime)\n" +
			"How often do you usually get your period? \(periodFreq) days\n" +
			"Are your periods usually regular?  \(YesNo(rawValue:periodRegular)!.stringValue)\n" +
			"How many days do your periods usually last?  \(periodLength) days\n" +
			"The blood flow is: \(bloodFlow)\n" +
			"Do you have any bleeding between periods? \(YesNo(rawValue:bleedingBetween)!.stringValue)\n" +
			"Do you have any vaginal discharge? \(YesNo(rawValue:discharge)!.stringValue)\n" +
			"Are you sexually active? \(YesNo(rawValue:sexuallyActive)!.stringValue)\n" +
			"If yes, do you and your partner use birth control?  \(YesNo(rawValue:birthControl)!.stringValue)   Method: \(birthControlMethod)\n" +
			"Have you ever had a sexually transmitted disease? \(YesNo(rawValue:std)!.stringValue)\n" +
			"Has your mother ever been exposed to DES? \(YesNo(rawValue:des)!.stringValue)\n" +
			"Have you ever used fertility medicines? \(YesNo(rawValue:fertilityMeds)!.stringValue)\n" +
			"Do you have hot flashes? \(YesNo(rawValue:hotFlashes)!.stringValue)\n" +
			"Are you on hormone replacement? \(YesNo(rawValue:hormoneReplacement)!.stringValue)\n" +
			"Do you smoke? \(YesNo(rawValue:smoker)!.stringValue)\n" +
			"How often do you perform self breast-exams? \(freqBreastExams)\n" +
			"Do you have a history of breast problems? \(YesNo(rawValue:hxBreastProblems)!.stringValue)\n" +
			"Have you ever been abused? \(YesNo(rawValue:abused)!.stringValue)\n" +
			"Do you feel safe? \(YesNo(rawValue:safe)!.stringValue)\n" +
			//"\(finalFamilyHistory(historyList: familyHistory)!)" +
			"Do you have any allergies? \(YesNo(rawValue:allergies)!.stringValue)  \(allergens)\n" +
			"On a scale of 0 to 10, with 0 being no symptoms and 10 being severe symptoms, how would you describe the following:\n" +
			"Pain during your usual period:  \(periodPain)\n" +
			"Pain during sex:  \(sexPain)\n" +
			"PMS (premenstrual tension syndrome): \(pmsPain)\n" +
			"If you have been pregnant, please indicate how many:\n" +
			"Pregnancies: \(pregnancies), Abortions: \(abortions), Miscarriages: \(miscarriages), Living children: \(livingChildren), Full-term live births: \(liveBirths), Premature births: \(prematureBirths)\n" +
			"Please list any other concerns: \(otherConcerns)."
		
		return result
	}
}

func processFamilyHistory(selection: [Int]) -> String {
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

func processMatrix(matrix: NSMatrix, sectionLead: String) -> String {
	var activeCells = [Int]()
	var matrixResults = String()
	for cell in matrix.cells {
		if cell.state == NSOnState {
			activeCells.append(cell.tag)
		}
	}
	
	if !activeCells.isEmpty {
		matrixResults = sectionLead + ": " + processFamilyHistory(selection: activeCells)
	}
	
	return matrixResults
}

func finalFamilyHistory(historyList: [(matrix: NSMatrix, lead: String)]) -> String {
	var resultsArray = [String]()
	var results = String()
	for list in historyList {
		let processedMatrix = processMatrix(matrix: list.matrix, sectionLead: list.lead)
		if !processedMatrix.isEmpty {
		resultsArray.append(processedMatrix)
		}
	}
	if !resultsArray.isEmpty {
		results = "Family history reported: \(resultsArray.joined(separator: "\n"))\n"
	}
	
	return results
}


func processIsWWEDataGroups(dataGroup:[IsWWEData]) -> [String] {
	var results = [String]()
	
	for data in dataGroup {
		let dataResult = data.processData()
		if !dataResult.isEmpty {
			results.append(dataResult)
		}
	}
	
	return results
}


