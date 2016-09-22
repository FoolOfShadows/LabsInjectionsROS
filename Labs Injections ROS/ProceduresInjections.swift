//
//  ProceduresInjections.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/6/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

class ProceduresInjections: NSObject, NSApplicationDelegate, NSWindowDelegate {
	
	@IBOutlet weak var winMini: NSWindow!
	
	//Procedures
	@IBOutlet weak var papView: NSButton!
	@IBOutlet weak var dreView: NSButton!
	@IBOutlet weak var stoolCardView: NSButton!
	@IBOutlet weak var idView: NSButton!
	@IBOutlet weak var ekgView: NSButton!
	@IBOutlet weak var earLavageView: NSPopUpButton!
	@IBOutlet weak var nebulizerView: NSPopUpButton!
	@IBOutlet weak var cryoTextView: NSTextField!
	@IBOutlet weak var skinTagTextView: NSTextField!
	@IBOutlet weak var sutureRemovalTextView: NSTextField!
	
	//Labs
	@IBOutlet weak var udipView: NSButton!
	@IBOutlet weak var ucgView: NSButton!
	@IBOutlet weak var mudsView: NSButton!
	@IBOutlet weak var udsView: NSButton!
	@IBOutlet weak var fluSwabView: NSButton!	
	@IBOutlet weak var glucometerTextView: NSTextField!
	
	//Injections
	@IBOutlet weak var dkSiteView: NSPopUpButton!
	@IBOutlet weak var cSiteView: NSPopUpButton!
	@IBOutlet weak var solSiteView: NSPopUpButton!
	@IBOutlet weak var b12SiteView: NSPopUpButton!
	@IBOutlet weak var phSiteView: NSPopUpButton!
	@IBOutlet weak var torSiteView: NSPopUpButton!
	@IBOutlet weak var torAmountView: NSPopUpButton!
	@IBOutlet weak var tstSiteView: NSPopUpButton!
	@IBOutlet weak var estSiteView: NSPopUpButton!
	@IBOutlet weak var ppdSiteView: NSPopUpButton!
	@IBOutlet weak var fluSiteView: NSPopUpButton!
	@IBOutlet weak var fluTypeView: NSPopUpButton!
	@IBOutlet weak var pnvSiteView: NSPopUpButton!
	@IBOutlet weak var tdapSiteView: NSPopUpButton!
	@IBOutlet weak var nphSiteView: NSPopUpButton!
	@IBOutlet weak var rocSiteView: NSPopUpButton!
	@IBOutlet weak var rocAmountView: NSPopUpButton!
	@IBOutlet weak var depoSiteView: NSPopUpButton!
	@IBOutlet weak var epoSiteView: NSPopUpButton!
	@IBOutlet weak var arthSiteView: NSPopUpButton!
	@IBOutlet weak var synvSiteView: NSPopUpButton!
	@IBOutlet weak var trigSiteView: NSComboBox!
	@IBOutlet weak var hepA1View: NSButton!
	@IBOutlet weak var hepA2View: NSButton!
	@IBOutlet weak var hepB1View: NSButton!
	@IBOutlet weak var hepB2View: NSButton!
	@IBOutlet weak var hepB3View: NSButton!
	@IBOutlet weak var hepTRx1View: NSButton!
	@IBOutlet weak var hepTRx2View: NSButton!
	@IBOutlet weak var hepTRx3View: NSButton!
	@IBOutlet weak var hepSiteView: NSPopUpButton!
	@IBOutlet weak var otherTextView: NSTextField!
	
	//Samples & Education
	@IBOutlet var samplesTextView: NSTextView!
	@IBOutlet weak var weightLossView: NSButton!
	@IBOutlet weak var diabeticDietView: NSButton!
	@IBOutlet weak var lowCholesterolView: NSButton!
	@IBOutlet weak var lowSaltView: NSButton!
	@IBOutlet weak var hypertensionView: NSButton!
	@IBOutlet weak var dietaryFiberView: NSButton!
	@IBOutlet weak var coumadinView: NSButton!
	@IBOutlet weak var exerciseView: NSButton!
	@IBOutlet weak var tobaccoView: NSButton!
	@IBOutlet weak var stressView: NSButton!
	@IBOutlet weak var tagView: NSButton!
	@IBOutlet weak var strokeView: NSButton!
	@IBOutlet weak var depressionView: NSButton!
	@IBOutlet weak var alcoholView: NSButton!
	@IBOutlet weak var gerdView: NSButton!
	@IBOutlet weak var thyroidSymptomsView: NSButton!
	
	var popupButtonList: [NSPopUpButton] {return [earLavageView, nebulizerView, dkSiteView, cSiteView, solSiteView, b12SiteView, phSiteView, torSiteView, torAmountView, tstSiteView, estSiteView, ppdSiteView, fluSiteView, fluTypeView, pnvSiteView, tdapSiteView, nphSiteView, rocSiteView, rocAmountView, depoSiteView, epoSiteView, arthSiteView, synvSiteView, hepSiteView]}
	var popupItemList = [earLavageList, nebulizerList, deltGlutIMOnlyList, deltGlutIMSCList, deltGlutIMOnlyList, deltGlutIMSCList, deltGlutIMOnlyList, deltGlutIMOnlyList, torAmountList, deltGlutIMOnlyList, deltGlutIMOnlyList, forearmSCList, deltIMOnlyList, fluTypeList, deltIMSCList, deltIMOnlyList, deltGlutIMOnlyList, glutIMOnlyList, rocAmountList, deltGlutIMOnlyList, upperArmSCOnlyList, jointList, kneeList, deltGlutIMSCList]
	var checkboxButtonList: [NSButton] {return [papView, dreView, stoolCardView, idView, ekgView, hepA1View, hepA2View, hepB1View, hepB2View, hepB3View, hepTRx1View, hepTRx2View, hepTRx3View, weightLossView, diabeticDietView, lowCholesterolView, lowSaltView, hypertensionView, dietaryFiberView, coumadinView, exerciseView, tobaccoView, stressView, tagView, udipView, ucgView, udsView, mudsView, fluSwabView]}
	var textFieldList: [NSTextField] {return [cryoTextView, skinTagTextView, sutureRemovalTextView, otherTextView, glucometerTextView]}
	

	func clearPI() {
		clearPopupButtons(popupButtonList, values: popupItemList)
		clearCheckboxes(checkboxButtonList)
		clearTextFields(textFieldList)
		self.samplesTextView.string = ""
	}
	
	@IBAction func takeClearPI(_ sender: AnyObject) {
		clearPI()
	}
	
	override func awakeFromNib() {
		clearPI()
	}
	
	func processProcedures() -> [String] {
		let procedureVarListSimple:[NSButton] = [papView, dreView, stoolCardView, idView, ekgView]
		let procedureVerbiageListSimple = ["Pap smear", "Digital rectal exam", "Hemoccult Stool cards x 3 given for colon cancer screening", "Incision and drainage of abscess, consent signed", "EKG, consent signed"]
		var procedureList = processAllControlTypes(procedureVarListSimple, stringArray: procedureVerbiageListSimple)
		//Process ear lavage into variable procedureList
		if (earLavageView.titleOfSelectedItem != nil) && (earLavageView.titleOfSelectedItem != "") {
			procedureList.append("Ear lavage of \(earLavageView.titleOfSelectedItem!), consent signed")
		}
		//Process nebulizer into variable procedureList
		if (nebulizerView.titleOfSelectedItem != nil) && (nebulizerView.titleOfSelectedItem != "") {
			let nebType = nebulizerView.titleOfSelectedItem!
			switch nebType {
			case "Albuterol":
				procedureList.append("Nebulizer treatment using Abluterol Sulfate 0.083% (2.5 mg/3 ml) solution")
			case "Atrovent":
				procedureList.append("Nebulizer treatment using Atrovent (Ipratropium Bromide) 0.02% (0.5 mg/2.5 ml) solution")
			case "Duoneb":
				procedureList.append("Nebulizer treatment using Duoneb (Ipratropium Bromide 0.5 mg + Albuterol sulfate 3 mg) in 3 ml solution")
			default:
				break
			}
		}
		let procedureVarListComplex: [NSTextField] = [cryoTextView, skinTagTextView, sutureRemovalTextView]
		let procedureVarVerbiageComplex = ["Cryo treatment x \(cryoTextView.stringValue), consent signed", "Skin tag removal x \(skinTagTextView.stringValue), consent signed", "Suture/staple removal x \(sutureRemovalTextView.stringValue), consent signed"]
		procedureList += (processAllControlTypes(procedureVarListComplex, stringArray: procedureVarVerbiageComplex))
		
		return procedureList
	}
	
	func processInjections() -> [String] {
		//Set up variable for flu controllers to indicate which vaccine was used
		var vaccineType = "No flu vaccine type chosen"
		if (fluTypeView.titleOfSelectedItem != nil){
			vaccineType = fluTypeView.titleOfSelectedItem!
		}
		//Set up variables for Toradol and Rocephin doses
		var torDose = ""
		var rocDose = ""
		if (torAmountView.titleOfSelectedItem != nil){
			torDose = torAmountView.titleOfSelectedItem!
		}
		if (rocAmountView.titleOfSelectedItem != nil) {
			rocDose = rocAmountView.titleOfSelectedItem!
		}
		//Process simple injections into variable injList
		let injVarList:[NSPopUpButton] = [dkSiteView, ppdSiteView, cSiteView, fluSiteView, solSiteView, pnvSiteView, b12SiteView, tdapSiteView, phSiteView, nphSiteView, torSiteView, rocSiteView, tstSiteView, depoSiteView, estSiteView, epoSiteView]
		let injVerbiageList = ["Decadron 4 mg/1 ml + Kenalog 40 mg/1 ml \(dkSiteView.titleOfSelectedItem!), consent signed", "PPD (Purified Protein Derivative) Mantoux TB Skin Test 0.1 ml/5 TU \(ppdSiteView.titleOfSelectedItem!), consent signed", "Celestone 6 mg/1 ml \(cSiteView.titleOfSelectedItem!), consent signed", "Flu shot: \(vaccineType) 0.5 ml \(fluSiteView.titleOfSelectedItem!), consent signed, education: VIS given", "Solumedrol 125 mg \(solSiteView.titleOfSelectedItem!), consent signed", "Pneumovax 23: 0.5 ml \(pnvSiteView.titleOfSelectedItem!), consent signed education: VIS given", "B12 1000 mcg/1 ml \(b12SiteView.titleOfSelectedItem!), consent signed", "Tdap 0.5 ml \(tdapSiteView.titleOfSelectedItem!), consent signed", "Phenergan 25 mg \(phSiteView.titleOfSelectedItem!), consent signed", "Nubain 10 mg + Phenergan 25 mg \(nphSiteView.titleOfSelectedItem!), consent signed", "Toradol (Ketoralac) \(torDose) mg \(torSiteView.titleOfSelectedItem!), consent signed", "Rocephin \(rocDose) Lidocaine \(rocSiteView.titleOfSelectedItem!), consent signed", "Testosterone Cypionate 200 mg/1 ml \(tstSiteView.titleOfSelectedItem!), consent signed", "DepoProvera 150 mg/1 ml \(depoSiteView.titleOfSelectedItem!), consent signed", "Estradiol Cypionate 5 mg/1ml \(estSiteView.titleOfSelectedItem!), consent signed", "Procrit/Epogen 10,000 u \(epoSiteView.titleOfSelectedItem!), consent signed"]
		var injList = processAllControlTypes(injVarList, stringArray: injVerbiageList)
		
		//Process arthorcentesis into variable injList
		if (arthSiteView.titleOfSelectedItem != nil) && (arthSiteView.titleOfSelectedItem != "") {
			
			let titleString = arthSiteView.titleOfSelectedItem!
			if titleString.range(of: "Knee") != nil {
				injList.append("Arthrocentesis \(arthSiteView.titleOfSelectedItem!) medial flexed knee approach, with injection of 1 cc 1% lidocaine + 1 cc Marcaine + 1 cc (6 mg) Celestone, after cleansed and prepped with betadine and alcohol.  Pt tolerated procedure well. EBL: none. Consent signed.")
			} else if titleString.range(of: "Elbow") != nil  {
				injList.append("Arthrocentesis \(arthSiteView.titleOfSelectedItem!) olecranon bursa / lateral epicondyle, with injection of 1 cc 1% lidocaine + 1 cc (6 mg) Celestone, after cleansed and prepped with betadine and alcohol.  Pt tolerated procedure well. EBL: none. Consent signed.")
			} else if titleString.range(of: "Shoulder") != nil  {
				injList.append("Arthrocentesis \(arthSiteView.titleOfSelectedItem!) posterior approach, with injection of 1 cc 1% lidocaine + 1 cc Marcaine + 1 cc (6 mg) Celestone, after cleansed and prepped with betadine and alcohol.  Pt tolerated procedure well. EBL: none. Consent signed.")
			}
		}
		
		//Process Synvisc injection into variable injList
		if (synvSiteView.titleOfSelectedItem != nil) && (synvSiteView.titleOfSelectedItem != "") {
			injList.append("Arthrocentesis \(synvSiteView.titleOfSelectedItem!) medial flexed knee approach, with injection of 1 cc 1% lidocaine + Synvisc ONE, after cleansed and prepped with betadine and alcohol.  Pt tolerated procedure well. EBL: none. Consent signed.")
		}

		//Process trigger point injection into variable injList
		if (trigSiteView.indexOfSelectedItem != 0) && !(trigSiteView.stringValue.isEmpty){
			injList.append("Trigger point injection with Lidocaine 1 ml + Celestone 6 mg/1 ml \(trigSiteView.stringValue)")
		}

		//Process hepatitis section into variable injList
		var hepSite = ""
		if hepSiteView.titleOfSelectedItem != nil {
			hepSite = hepSiteView.titleOfSelectedItem!
		}
		let hepVarList:[NSButton] = [hepA1View, hepA2View, hepB1View, hepB2View, hepB3View, hepTRx1View, hepTRx2View, hepTRx3View]
		let hepVarVerbiage = ["Hepatitis A Vaccine #1: 0.5 ml \(hepSite), consent signed, education: VIS given", "Hepatitis A Vaccine #2: 0.5 ml \(hepSite), consent signed, education: VIS given", "Hepatitis B Vaccine #1: 0.5 ml \(hepSite), consent signed, education: VIS given", "Hepatitis B Vaccine #2: 0.5 ml \(hepSite), consent signed, education: VIS given", "Hepatitis B Vaccine #3: 0.5 ml \(hepSite), consent signed, education: VIS given", "Hepatitis Trx Vaccine #1: 0.5 ml \(hepSite), consent signed, education: VIS given", "Hepatitis Trx Vaccine #2: 0.5 ml \(hepSite), consent signed, education: VIS given", "Hepatitis Trx Vaccine #3: 0.5 ml \(hepSite), consent signed, education: VIS given"]
		injList += processAllControlTypes(hepVarList, stringArray: hepVarVerbiage)
		
		//Process "Other" text box into variable injList
		if otherTextView.stringValue != "" {
			injList.append(otherTextView.stringValue)
		}
		
		return injList
		
	}
	
	func processEducation() -> [String] {
		let educationVarList: [NSButton] = [weightLossView, diabeticDietView, lowCholesterolView, lowSaltView, hypertensionView, dietaryFiberView, coumadinView, exerciseView, tobaccoView, stressView, tagView, strokeView, depressionView, alcoholView, gerdView, thyroidSymptomsView]
		let educationVerbiageList: [String] = ["Weight loss diet with calorie restriction and food diary counseled and admonished, info given.", "Diabetic diet and lifestyle counseling and info given, 45 gm carb per meal.", "Low fat, low cholesterol diet and exercise counseling and info given.", "Low salt and cardiac diet counseling and info given, DASH diet, 2400 mg Sodium per day.", "Hypertension goals, lifestyle management counseling and info given.", "Dietary fiber education and info given.", "Coumadin diet education with Vitamin K food content info given.", "Exercise counseling, guidance and education given.", "Tobacco cessation admonished: counseling and info given (3-10 min).", "Stress and anxiety management counseling given.", "Treatment agreement discussed and reviewed with patient. Signed copy given to patient", "Stroke warning signs discussed and info given.", "Depression management counseling and resources given.", "Adverse health consequences of alcohol discussed and alcohol cessation admonished.", "Gastroesophageal Reflux diet and lifestyle modifications discussed and info given.", "Thyroid symptoms discussed."]
		
		return processAllControlTypes(educationVarList, stringArray: educationVerbiageList)
	}
	
	func processLabs() -> [String] {
		let labVarList: [AnyObject] = [udipView, ucgView, udsView, mudsView, fluSwabView, glucometerTextView]
		let labVerbiageList = ["Urine Dip, consent signed", "UCG, consent signed", "UDS, consent signed", "m UDS, consent signed", "Rapid Flu A&B Swab, consent signed", "Glucometer finger blood sugar done in office today = \(glucometerTextView.stringValue)"]
		
		//print(processAllControlTypes(labVarList, stringArray: labVerbiageList))
		
		return processAllControlTypes(labVarList, stringArray: labVerbiageList)
	}
	
	@IBAction func takeProcessPI(_ sender: AnyObject) {
		let procedureList = processProcedures()
		let injectionList = processInjections()
		let labList = processLabs()
		let educationList = processEducation()
		var procedureString = ""
		var injectionString = ""
		var labString = ""
		var educationString = ""
		var samplesString = ""
		
		if !procedureList.isEmpty {
			procedureString = "Office procedure(s) performed:\n\(procedureList.joined(separator: "\n"))\n"
		}
		
		if !injectionList.isEmpty {
			injectionString = "Injection(s) given:\n\(injectionList.joined(separator: "\n"))\n"
		}
		
		if !labList.isEmpty {
			labString = "Lab(s) ordered:\n\(labList.joined(separator: "\n"))\n"
		}
		
		if !educationList.isEmpty {
			educationString = "Patient education done:\n\(educationList.joined(separator: "\n"))\n"
		}
		
		if samplesTextView.string != "" {
			samplesString = "Samples given: \(samplesTextView.string!)"
		}
		
		let finalOutput = procedureString + injectionString + labString + educationString + samplesString
		
		//Clear the system clipboard
		let pasteBoard = NSPasteboard.general()
		pasteBoard.clearContents()
		//Set the system clipboard to the final text
		pasteBoard.setString(finalOutput, forType: NSPasteboardTypeString)
		
		print(finalOutput)
	}

	@IBAction func takeTestON(_ sender: AnyObject) {
		turnOnPopupButtons(popupButtonList, values: popupItemList)
		turnOnTextFields(textFieldList)
		setCheckboxesOn(checkboxButtonList)
	}
	
	@IBAction func openMiniWindow(_ sender: NSButton) {
		winMini.makeKeyAndOrderFront(self)
	}
}
