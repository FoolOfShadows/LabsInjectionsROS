//
//  Referrals.swift
//  Labs Injections ROS
//
//  Created by Fool on 12/1/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

class Referrals: NSObject, NSApplicationDelegate, NSWindowDelegate {
	//Medical Specialties
	@IBOutlet weak var refAllergistView: NSButton!
	@IBOutlet weak var refCardioView: NSButton!
	@IBOutlet weak var refChiropractorView: NSButton!
	@IBOutlet weak var refDentistView: NSButton!
	@IBOutlet weak var refDermView: NSButton!
	@IBOutlet weak var refEndoView: NSButton!
	@IBOutlet weak var refGastroView: NSButton!
	@IBOutlet weak var refImmunologyView: NSButton!
	@IBOutlet weak var refInfectiousDisView: NSButton!
	@IBOutlet weak var refNephroView: NSButton!
	@IBOutlet weak var refNeuroView: NSButton!
	@IBOutlet weak var refHemoView: NSButton!
	@IBOutlet weak var refOncRadiationView: NSButton!
	@IBOutlet weak var refOptometryView: NSButton!
	@IBOutlet weak var refRehabView: NSButton!
	@IBOutlet weak var refPsychiatristView: NSButton!
	@IBOutlet weak var refPulmView: NSButton!
	@IBOutlet weak var refRheumView: NSButton!
	
	
	
	//Surgical Specialties
	@IBOutlet weak var refBariatricView: NSButton!
	@IBOutlet weak var refCardioSurgView: NSButton!
	@IBOutlet weak var refColorectalSurgView: NSButton!
	@IBOutlet weak var refENTView: NSButton!
	@IBOutlet weak var refSurgeryView: NSButton!
	@IBOutlet weak var refGynoView: NSButton!
	@IBOutlet weak var refOncGynocologyView: NSButton!
	@IBOutlet weak var refNeuroSurgeryView: NSButton!
	@IBOutlet weak var refObstetricianView: NSButton!
	@IBOutlet weak var refOphthoView: NSButton!
	@IBOutlet weak var refOralSurgeonView: NSButton!
	@IBOutlet weak var refOrthoView: NSButton!
	@IBOutlet weak var refPainManagementView: NSButton!
	@IBOutlet weak var refPodView: NSButton!
	@IBOutlet weak var refUrologyView: NSButton!
	
	//Therapy-Ancillary
	@IBOutlet weak var refCounselorView: NSButton!
	@IBOutlet weak var refDMEdCounselor: NSButton!
	@IBOutlet weak var refHomeHealthView: NSButton!
	@IBOutlet weak var refLymphedemaView: NSButton!
	@IBOutlet weak var refNutritionistView: NSButton!
	@IBOutlet weak var refPsychologistView: NSButton!
	@IBOutlet weak var refSocialWorkerView: NSButton!
	@IBOutlet weak var refOTView: NSButton!
	@IBOutlet weak var refPTView: NSButton!
	@IBOutlet weak var refSpeechView: NSButton!
	@IBOutlet weak var refWoundClinicView: NSButton!
	
	var refCheckboxes: [NSButton] {return [refAllergistView, refCardioView, refChiropractorView, refDentistView, refDermView, refEndoView, refGastroView, refImmunologyView, refInfectiousDisView, refNephroView, refNeuroView, refHemoView, refOncRadiationView, refOptometryView, refRehabView, refPsychiatristView, refPulmView, refRheumView, refBariatricView, refCardioSurgView, refColorectalSurgView, refENTView, refSurgeryView, refGynoView, refOncGynocologyView, refNeuroSurgeryView, refObstetricianView, refOphthoView, refOralSurgeonView, refOrthoView, refPainManagementView, refPodView, refUrologyView, refCounselorView, refDMEdCounselor, refHomeHealthView, refLymphedemaView, refNutritionistView, refPsychologistView, refSocialWorkerView, refOTView, refPTView, refSpeechView, refWoundClinicView]}
	let refVerbiage = ["Allergist", "Cardiologist", "Chiropractor", "Dentist", "Dermatologist", "Endocrinologist", "Gastroenterologist", "Immunologist", "Infectious Disease", "Nephrologist", "Neurologist", "Oncologist/Hematologist", "Radiation Oncologist", "Optometrist", "Physical Medicine and Rehab", "Psychiatrist", "Pulmonologist", "Rhuematologist", "Bariatric surgeon", "Cardiac surgeon", "Colorectal surgeon", "ENT/Otolaryngology", "General surgeon", "Gynecologist", "Gynecologic Oncology", "Neurosurgeon", "Obstetrician", "Ophthalmology", "Oral surgeon", "Orthopedic", "Pain Management", "Podiatrist", "Urologist", "Counselor", "Diabetic Education", "Home Health", "Lymphedema clinic", "Nutritionist", "Psychologist", "Social worker", "Occupaitonal therapy", "Physical therapy", "Speech therapy", "Wound clinic"]
	
	@IBAction func takeClear(_ sender: AnyObject) {
		clearCheckboxes(refCheckboxes)
	}
	
	override func awakeFromNib() {
		takeClear(self)
	}
	
	@IBAction func takeProcessReferrals(_ sender: AnyObject) {
		var referralsText = ""
		let processedReferrals = processAllControlTypes(refCheckboxes, stringArray: refVerbiage)
		if !processedReferrals.isEmpty {
			referralsText = "Referrals made: " + processedReferrals.joined(separator: ", ")
		}
		//Clear the system clipboard
		let pasteBoard = NSPasteboard.general()
		pasteBoard.clearContents()
		//Set the system clipboard to the final text
		pasteBoard.setString(referralsText, forType: NSPasteboardTypeString)
		print(referralsText)
		
	}
	
}
