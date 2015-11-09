//
//  SystemsReview.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/5/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

class SystemsReview: NSObject, NSApplicationDelegate, NSWindowDelegate {
	
	//General Symptoms
	@IBOutlet weak var chkbxWeightLoss: NSButton!
	@IBOutlet weak var chkbxWeightGain: NSButton!
	@IBOutlet weak var chkbxLossOfAppetite: NSButton!
	@IBOutlet weak var chkbxFever: NSButton!
	@IBOutlet weak var chkbxChills: NSButton!
	@IBOutlet weak var chkbxSweats: NSButton!
	@IBOutlet weak var chkbxFatigue: NSButton!
	@IBOutlet weak var chkbxWeakness: NSButton!
	@IBOutlet weak var chkbxInsomnia: NSButton!
	
	//Gastro Symptoms
	@IBOutlet weak var chkbxAbdominalPain: NSButton!
	@IBOutlet weak var chkbxGas: NSButton!
	@IBOutlet weak var chkbxBloating: NSButton!
	@IBOutlet weak var chkbxConstipation: NSButton!
	@IBOutlet weak var chkbxDiarrhea: NSButton!
	@IBOutlet weak var chkbxBloodyStool: NSButton!
	@IBOutlet weak var chkbxEarlySatiety: NSButton!
	@IBOutlet weak var chkbxTroubleSwallowing: NSButton!
	@IBOutlet weak var chkbxHeartburn: NSButton!
	@IBOutlet weak var chkbxIndigestion: NSButton!
	@IBOutlet weak var chkbxNausea: NSButton!
	@IBOutlet weak var chkbxVomiting: NSButton!
	@IBOutlet weak var chkbxBloodyVomit: NSButton!
	@IBOutlet weak var chkbxHemorrhoids: NSButton!
	@IBOutlet weak var chkbxPelvicPain: NSButton!
	
	//Psych Symptoms
	@IBOutlet weak var chkbxStress: NSButton!
	@IBOutlet weak var chkbxDepression: NSButton!
	@IBOutlet weak var chkbxAnxiety: NSButton!
	@IBOutlet weak var chkbxMoodSwings: NSButton!
	@IBOutlet weak var chkbxCrying: NSButton!
	@IBOutlet weak var chkbxMemoryLoss: NSButton!
	@IBOutlet weak var chkbxConfusion: NSButton!
	@IBOutlet weak var chkbxHallucinations: NSButton!
	@IBOutlet weak var chkbxSuicidalThoughts: NSButton!
	@IBOutlet weak var chkbxParanoidThoughts: NSButton!
	@IBOutlet weak var chkbxPoorConcentration: NSButton!
	@IBOutlet weak var chkbxPanicAttacks: NSButton!
	
	//Genital/Urinary
	@IBOutlet weak var chkbxPainfulUrination: NSButton!
	@IBOutlet weak var chkbxBloodInUrine: NSButton!
	@IBOutlet weak var chkbxFrequencyInUrination: NSButton!
	@IBOutlet weak var chkbxUrgencyInUrination: NSButton!
	@IBOutlet weak var chkbxUrinaryIncontinence: NSButton!
	@IBOutlet weak var chkbxStoolIncontinence: NSButton!
	@IBOutlet weak var chkbxNocturia: NSButton!
	@IBOutlet weak var chkbxHesitency: NSButton!
	@IBOutlet weak var chkbxErectileDysfunction: NSButton!
	@IBOutlet weak var chkbxDecreasedLibido: NSButton!
	@IBOutlet weak var chkbxIrregularPeriods: NSButton!
	@IBOutlet weak var chkbxVaginalDischarge: NSButton!
	@IBOutlet weak var chkbxBreastDischarge: NSButton!
	
	//Endo Symptoms
	@IBOutlet weak var chkbxHotFlashes: NSButton!
	@IBOutlet weak var chkbxFlushing: NSButton!
	@IBOutlet weak var chkbxGoiter: NSButton!
	@IBOutlet weak var chkbxSwollenGlands: NSButton!
	@IBOutlet weak var chkbxExcessiveThirst: NSButton!
	@IBOutlet weak var chkbxHeatIntolerance: NSButton!
	@IBOutlet weak var chkbxColdIntolerance: NSButton!
	
	//HEENT Symptoms
	@IBOutlet weak var chkbxEarAche: NSButton!
	@IBOutlet weak var chkbxEarDrainage: NSButton!
	@IBOutlet weak var chkbxHearingLoss: NSButton!
	@IBOutlet weak var chkbxTinnitus: NSButton!
	@IBOutlet weak var chkbxLossOfSmell: NSButton!
	@IBOutlet weak var chkbxLossOfTaste: NSButton!
	@IBOutlet weak var chkbxSoreThroat: NSButton!
	@IBOutlet weak var chkbxMouthSores: NSButton!
	@IBOutlet weak var chkbxHoarseVoice: NSButton!
	@IBOutlet weak var chkbxLaryngitis: NSButton!
	@IBOutlet weak var chkbxRunnyNose: NSButton!
	@IBOutlet weak var chkbxSneezing: NSButton!
	@IBOutlet weak var chkbxNasalCongestion: NSButton!
	@IBOutlet weak var chkbxPostNasalDrip: NSButton!
	@IBOutlet weak var chkbxNoseBleed: NSButton!
	
	//Eye Symptoms
	@IBOutlet weak var chkbxEyePain: NSButton!
	@IBOutlet weak var chkbxBlurryVision: NSButton!
	@IBOutlet weak var chkbxPoorVision: NSButton!
	@IBOutlet weak var chkbxWateryEyes: NSButton!
	@IBOutlet weak var chkbxDoubleVision: NSButton!
	
	//MusculoSkeletal Symptoms
	@IBOutlet weak var chkbxMSWeakness: NSButton!
	@IBOutlet weak var chkbxStiffness: NSButton!
	@IBOutlet weak var chkbxSwelling: NSButton!
	@IBOutlet weak var chkbxJointAche: NSButton!
	@IBOutlet weak var chkbxMuscleAche: NSButton!
	@IBOutlet weak var chkbxSpasms: NSButton!
	@IBOutlet weak var chkbxCramps: NSButton!
	
	//Hemo Symptoms
	@IBOutlet weak var chkbxBruising: NSButton!
	@IBOutlet weak var chkbxBloodTransfusion: NSButton!
	
	//Respiratory Symptoms
	@IBOutlet weak var chkbxWheezing: NSButton!
	@IBOutlet weak var chkbxCough: NSButton!
	@IBOutlet weak var chkbxProductiveCough: NSButton!
	@IBOutlet weak var chkbxBloodySputum: NSButton!
	@IBOutlet weak var chkbxShortnessOfBreath: NSButton!
	@IBOutlet weak var chkbxSnoring: NSButton!
	@IBOutlet weak var chkbxApnea: NSButton!
	@IBOutlet weak var chkbxDaytimeSleepiness: NSButton!
	@IBOutlet weak var chkbxPleurisy: NSButton!
	@IBOutlet weak var chkbxPainfulBreaths: NSButton!
	@IBOutlet weak var chkbxDyspnea: NSButton!
	
	//Neurological Symptoms
	@IBOutlet weak var chkbxSeizures: NSButton!
	@IBOutlet weak var chkbxTIA: NSButton!
	@IBOutlet weak var chkbxHeadaches: NSButton!
	@IBOutlet weak var chkbxTremors: NSButton!
	@IBOutlet weak var chkbxTwitches: NSButton!
	@IBOutlet weak var chkbxJerks: NSButton!
	@IBOutlet weak var chkbxNumbness: NSButton!
	@IBOutlet weak var chkbxTingling: NSButton!
	@IBOutlet weak var chkbxSyncope: NSButton!
	@IBOutlet weak var chkbxDizziness: NSButton!
	@IBOutlet weak var chkbxLightHeaded: NSButton!
	@IBOutlet weak var chkbxVertigo: NSButton!
	@IBOutlet weak var chkbxPoorBalance: NSButton!
	@IBOutlet weak var chkbxFalling: NSButton!
	
	//Cardiovascular Symptoms
	@IBOutlet weak var chkbxChestPain: NSButton!
	@IBOutlet weak var chkbxAngina: NSButton!
	@IBOutlet weak var chkbxPalpitations: NSButton!
	@IBOutlet weak var chkbxPalpRacing: NSButton!
	@IBOutlet weak var chkbxPalpSkipping: NSButton!
	@IBOutlet weak var chkbxIrregularHeartBeat: NSButton!
	@IBOutlet weak var chkbxLegCramps: NSButton!
	@IBOutlet weak var chkbxCVSwelling: NSButton!
	@IBOutlet weak var chkbxCantBreathLying: NSButton!
	@IBOutlet weak var chkbxWakeUpGasping: NSButton!
	
	//Dermetological Symptoms
	@IBOutlet weak var chkbxDermBruising: NSButton!
	@IBOutlet weak var chkbxItching: NSButton!
	@IBOutlet weak var chkbxJaundice: NSButton!
	@IBOutlet weak var chkbxRash: NSButton!
	@IBOutlet weak var chkbxHives: NSButton!
	@IBOutlet weak var chkbxLumps: NSButton!
	@IBOutlet weak var chkbxDermSwollenGlands: NSButton!
	@IBOutlet weak var chkbxHairLoss: NSButton!
	@IBOutlet weak var chkbxExcessHair: NSButton!
	@IBOutlet weak var chkbxDrySkin: NSButton!
	@IBOutlet weak var chkbxPoorHealing: NSButton!
	@IBOutlet weak var chkbxDermSores: NSButton!
	@IBOutlet weak var chkbxUlcers: NSButton!
	@IBOutlet weak var chkbxChangingMoles: NSButton!
	@IBOutlet weak var chkbxAbscesses: NSButton!
	
	var genVarList: [NSButton] {return [chkbxWeightLoss, chkbxWeightGain, chkbxLossOfAppetite, chkbxFever, chkbxChills, chkbxSweats, chkbxFatigue, chkbxWeakness, chkbxInsomnia]}
	let genVerbList = ["Weight loss", "Weight gain", "Loss of appetite", "Fever", "Chills", "Sweats", "Fatigue, malaise", "Weakness", "Insomnia"]
	var giVarList: [NSButton] {return [chkbxAbdominalPain, chkbxGas, chkbxBloating, chkbxConstipation, chkbxDiarrhea, chkbxBloodyStool, chkbxEarlySatiety, chkbxTroubleSwallowing, chkbxHeartburn, chkbxIndigestion, chkbxNausea, chkbxVomiting, chkbxBloodyVomit, chkbxHemorrhoids, chkbxPelvicPain]}
	let giVerbList = ["Abdominal pain", "Gas", "Bloating", "Constipation", "Diarrhea", "Bloody or black stool", "Early satiety/fullness", "Trouble or pain swallowing", "Heartburn", "Indigestion", "Nausea", "Vomiting", "Bloody vomit", "Hemorrhoids", "Pelvic pain"]
	var psychVarList: [NSButton] {return [chkbxStress, chkbxDepression, chkbxAnxiety, chkbxMoodSwings, chkbxCrying, chkbxMemoryLoss, chkbxConfusion, chkbxHallucinations, chkbxSuicidalThoughts, chkbxParanoidThoughts, chkbxPoorConcentration, chkbxPanicAttacks]}
	let psychVerbList = ["Stress", "Depression", "Anxiety-nerves", "Mood swings", "Crying", "Memory loss", "Confusion", "Hallucinations (audio/visual)", "Suicidal-Homicidal thoughts", "Paranoid thoughts", "Poor concentration", "Panic attacks"]
	var guVarList: [NSButton] {return [chkbxPainfulUrination, chkbxBloodInUrine, chkbxFrequencyInUrination, chkbxUrgencyInUrination, chkbxUrinaryIncontinence, chkbxStoolIncontinence, chkbxNocturia, chkbxHesitency, chkbxErectileDysfunction, chkbxDecreasedLibido, chkbxIrregularPeriods, chkbxVaginalDischarge, chkbxBreastDischarge]}
	let guVerbList = ["Painful urination", "Blood in urine", "Frequency in urination", "Urgency in urination", "Urinary incontinence", "Stool incontinence", "Nocturia", "Hesitency or dribbling", "Erectile dysfunction", "Decreased libido", "Irregular or heavy periods", "Vaginal discharge", "Breast discharge"]
	var endoVarList: [NSButton] {return [chkbxHeatIntolerance, chkbxColdIntolerance, chkbxHotFlashes, chkbxFlushing, chkbxGoiter, chkbxSwollenGlands, chkbxExcessiveThirst]}
	let endoVerbList = ["Heat intolerance", "Cold intolerance", "Hot flashes", "Flushing", "Goiter", "Swollen glands", "Excessive thirst"]
	var entVarList: [NSButton] {return [chkbxEarAche, chkbxEarDrainage, chkbxHearingLoss, chkbxTinnitus, chkbxLossOfSmell, chkbxLossOfTaste, chkbxSoreThroat, chkbxMouthSores, chkbxHoarseVoice, chkbxLaryngitis, chkbxRunnyNose, chkbxSneezing, chkbxNasalCongestion, chkbxPostNasalDrip, chkbxNoseBleed]}
	let entVerbList = ["Ear ache", "Ear drainage", "Hearing loss", "Tinnitus", "Loss of smell", "Loss of taste", "Sore throat", "Mouth sores", "Hoarse voice", "Laryngitis", "Runny nose", "Sneezing", "Nasal-Sinus congestion", "Post nasal drip", "Nose bleed"]
	var eyeVarList: [NSButton] {return [chkbxBlurryVision, chkbxPoorVision, chkbxWateryEyes, chkbxDoubleVision, chkbxEyePain]}
	let eyeVerbList = ["Blurry vision", "Poor vision", "Watery, itchy or red eyes", "Double vision", "Eye pain"]
	var mskVarList: [NSButton] {return [chkbxMSWeakness, chkbxStiffness, chkbxSwelling, chkbxJointAche, chkbxMuscleAche, chkbxSpasms, chkbxCramps]}
	let mskVerbList = ["Weakness", "Stiffness", "Swelling", "Joint ache", "Muscle ache", "Spasms", "Cramps"]
	var hemoVarList: [NSButton] {return [chkbxBruising, chkbxBloodTransfusion]}
	let hemoVerbList = ["Bruising", "Blood transfusion"]
	var resVarList: [NSButton] {return [chkbxWheezing, chkbxCough, chkbxProductiveCough, chkbxBloodySputum, chkbxShortnessOfBreath, chkbxSnoring, chkbxApnea, chkbxDaytimeSleepiness, chkbxPleurisy, chkbxPainfulBreaths, chkbxDyspnea]}
	let resVerbList = ["Wheezing", "Dry cough", "Productive cough", "Bloody sputum", "Shortness of breath", "Snoring", "Apnea", "Excess daytime sleepiness", "Pleurisy", "Painful breaths", "Dyspnea on exertion"]
	var neuroVarList: [NSButton] {return [chkbxSeizures, chkbxTIA, chkbxHeadaches, chkbxTremors, chkbxTwitches, chkbxJerks, chkbxNumbness, chkbxTingling, chkbxSyncope, chkbxDizziness, chkbxLightHeaded, chkbxVertigo, chkbxPoorBalance, chkbxFalling]}
	let neuroVerbList = ["Seizures", "TIA or stroke symptoms", "Headaches", "Tremors", "Twitches", "Jerks", "Numbness", "Tingling", "Syncope, fainting", "Dizziness", "Light headed", "Vertigo, spinning", "Poor balance", "Falling"]
	var cardioVarList: [NSButton] {return [chkbxChestPain, chkbxAngina, chkbxPalpitations, chkbxPalpRacing, chkbxPalpSkipping, chkbxIrregularHeartBeat, chkbxLegCramps, chkbxCVSwelling, chkbxCantBreathLying, chkbxWakeUpGasping]}
	let cardioVerbList = ["Chest pain", "Angina", "Palpitations", "Palpitations - racing", "Palpitations - skipping", "Irregular heart beat", "Leg cramps", "Swelling", "Can't breath lying down", "Wake up gasping"]
	var dermVarList: [NSButton] {return [chkbxDermBruising, chkbxItching, chkbxJaundice, chkbxRash, chkbxHives, chkbxLumps, chkbxDermSwollenGlands, chkbxHairLoss, chkbxExcessHair, chkbxDrySkin, chkbxPoorHealing, chkbxDermSores, chkbxUlcers, chkbxChangingMoles, chkbxAbscesses]}
	let dermVerbList = ["Bruising", "Itching", "Jaundice", "Rash", "Hives", "Lumps", "Swollen glands", "Hair loss", "Excess hair", "Dry skin, eyes or mouth", "Poor healing", "Sores", "Ulcers", "Changing moles", "Abscesses-Boils"]
	
	struct ROSVars {
		static var positiveResults = [String]()
		static var negativeResults = [String]()
	}
	
	func applicationDidFinishLaunching(notification: NSNotification) {
		takeClearROS(self)
	}
	

	@IBAction func takeClearROS(sender: AnyObject) {
		clearCheckboxes(genVarList)
		clearCheckboxes(giVarList)
		clearCheckboxes(psychVarList)
		clearCheckboxes(guVarList)
		clearCheckboxes(endoVarList)
		clearCheckboxes(entVarList)
		clearCheckboxes(eyeVarList)
		clearCheckboxes(mskVarList)
		clearCheckboxes(hemoVarList)
		clearCheckboxes(resVarList)
		clearCheckboxes(neuroVarList)
		clearCheckboxes(cardioVarList)
		clearCheckboxes(dermVarList)
	}

	
	@IBAction func takeProcessROS(sender: AnyObject) {
		ROSVars.positiveResults = [String]()
		ROSVars.negativeResults = [String]()
		var finalPositives = String()
		var finalNegatives = String()
		var finalVerbiage = String()
		
		processROS("GEN", controllers: genVarList, verbiage: genVerbList)
		processROS("GI", controllers: giVarList, verbiage: giVerbList)
		processROS("PSYCH", controllers: psychVarList, verbiage: psychVerbList)
		processROS("GU", controllers: guVarList, verbiage: guVerbList)
		processROS("ENDO", controllers: endoVarList, verbiage: endoVerbList)
		processROS("ENT", controllers: entVarList, verbiage: entVerbList)
		processROS("EYE", controllers: eyeVarList, verbiage: eyeVerbList)
		processROS("MSK", controllers: mskVarList, verbiage: mskVerbList)
		processROS("HEMO", controllers: hemoVarList, verbiage: hemoVerbList)
		processROS("RESP", controllers: resVarList, verbiage: resVerbList)
		processROS("NEURO", controllers: neuroVarList, verbiage: neuroVerbList)
		processROS("CARDIO", controllers: cardioVarList, verbiage: cardioVerbList)
		processROS("DERM", controllers: dermVarList, verbiage: dermVerbList)
		
		
		if !ROSVars.positiveResults.isEmpty {
			finalPositives = "(+) " + ROSVars.positiveResults.joinWithSeparator("; ") + "\n"
		}
		if !ROSVars.negativeResults.isEmpty {
			finalNegatives = "(-) " + ROSVars.negativeResults.joinWithSeparator("; ") + "\n"
		}
		
		if finalPositives != "" || finalNegatives != "" {
			finalVerbiage = "REVIEW OF SYSTEMS: ROS as per HPI and:\n" + finalPositives + finalNegatives + "All other systems reviewed and are negative.\nPMH, PSH, SHX, FHX, Meds reviewed."
		} else {
			finalVerbiage = "REVIEW OF SYSTEMS: ROS as per HPI.  All systems reviewed and are negative.\nPMH, PSH, SHX, FHX, Meds reviewed."
		}
		
		print(finalVerbiage)
		
		NSPasteboard.generalPasteboard().clearContents()
		NSPasteboard.generalPasteboard().setString(finalVerbiage, forType: NSStringPboardType)
		
	}
	
	@IBAction func takeSetControlsOn(sender: AnyObject) {
		setCheckboxesOn(genVarList)
		setCheckboxesOn(giVarList)
		setCheckboxesOn(psychVarList)
		setCheckboxesOn(guVarList)
		setCheckboxesOn(endoVarList)
		setCheckboxesOn(entVarList)
		setCheckboxesOn(eyeVarList)
		setCheckboxesOn(mskVarList)
		setCheckboxesOn(hemoVarList)
		setCheckboxesOn(resVarList)
		setCheckboxesOn(neuroVarList)
		setCheckboxesOn(cardioVarList)
		setCheckboxesOn(dermVarList)
	}

	@IBAction func takeSetControlsMixed(sender: AnyObject) {
		setCheckboxesMixed(genVarList)
		setCheckboxesMixed(giVarList)
		setCheckboxesMixed(psychVarList)
		setCheckboxesMixed(guVarList)
		setCheckboxesMixed(endoVarList)
		setCheckboxesMixed(entVarList)
		setCheckboxesMixed(eyeVarList)
		setCheckboxesMixed(mskVarList)
		setCheckboxesMixed(hemoVarList)
		setCheckboxesMixed(resVarList)
		setCheckboxesMixed(neuroVarList)
		setCheckboxesMixed(cardioVarList)
		setCheckboxesMixed(dermVarList)
	}
    
}
