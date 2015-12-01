//
//  Radiology.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/30/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

class Radiology: NSObject, NSApplicationDelegate, NSWindowDelegate {
	
	//XRAY Outlets
	@IBOutlet weak var xrayChestView: NSButton!
	@IBOutlet weak var xrayRibView: NSButton!
	@IBOutlet weak var xrayAbView: NSButton!
	@IBOutlet weak var xrayCSpineView: NSButton!
	@IBOutlet weak var xrayTSpineView: NSButton!
	@IBOutlet weak var xrayLSSpineView: NSButton!
	@IBOutlet weak var xrayShoulderView: NSButton!
	@IBOutlet weak var xrayKneeView: NSButton!
	@IBOutlet weak var xrayHipView: NSButton!
	@IBOutlet weak var xrayPelvisView: NSButton!
	@IBOutlet weak var xrayFemurView: NSButton!
	@IBOutlet weak var xrayTibFibView: NSButton!
	@IBOutlet weak var xrayAnkleView: NSButton!
	@IBOutlet weak var xrayFootView: NSButton!
	@IBOutlet weak var xrayElbowView: NSButton!
	@IBOutlet weak var xrayWristView: NSButton!
	@IBOutlet weak var xrayHandView: NSButton!
	@IBOutlet weak var xrayMyeloView: NSButton!
	@IBOutlet weak var xrayMyeloTextView: NSTextField!
	@IBOutlet weak var xrayGIView: NSButton!
	@IBOutlet weak var xrayBariumView: NSButton!
	@IBOutlet weak var xraySwallowView: NSButton!
	@IBOutlet weak var xrayGastroView: NSButton!
	
	//USND Outlets
	@IBOutlet weak var usndThyroidView: NSButton!
	@IBOutlet weak var usndGallbladderView: NSButton!
	@IBOutlet weak var usndAbView: NSButton!
	@IBOutlet weak var usndKidneysView: NSButton!
	@IBOutlet weak var usndPelvicView: NSButton!
	@IBOutlet weak var usndTransVagView: NSButton!
	@IBOutlet weak var usndTesticleView: NSButton!
	@IBOutlet weak var usndBreastBiView: NSButton!
	@IBOutlet weak var usndBreastRView: NSButton!
	@IBOutlet weak var usndBreastLView: NSButton!
	@IBOutlet weak var usndArteryView: NSButton!
	@IBOutlet weak var usndVDBLEView: NSButton!
	@IBOutlet weak var usndVDLLEView: NSButton!
	@IBOutlet weak var usndVDRLEView: NSButton!
	@IBOutlet weak var usndVDBUEView: NSButton!
	@IBOutlet weak var usndVDLUEView: NSButton!
	@IBOutlet weak var usndVDRUEView: NSButton!
	@IBOutlet weak var usndRefluxBLEView: NSButton!
	@IBOutlet weak var usndADBLEView: NSButton!
	@IBOutlet weak var usndADLLEView: NSButton!
	@IBOutlet weak var usndADRLEView: NSButton!
	@IBOutlet weak var usndADBUEView: NSButton!
	@IBOutlet weak var usndADLUEView: NSButton!
	@IBOutlet weak var usndADRUEView: NSButton!
	
	//MAM Outlets
	@IBOutlet weak var mamSBView: NSButton!
	@IBOutlet weak var mamDBView: NSButton!
	@IBOutlet weak var mamDRView: NSButton!
	@IBOutlet weak var mamDLView: NSButton!
	@IBOutlet weak var bmdView: NSButton!
	
	//Nuclear Outlets
	@IBOutlet weak var nucGallbladderView: NSButton!
	@IBOutlet weak var nucNGESView: NSButton!
	@IBOutlet weak var nucThyroidView: NSButton!
	@IBOutlet weak var nucBreastView: NSButton!
	@IBOutlet weak var nucBoneView: NSButton!
	
	//MRI Outlets
	@IBOutlet weak var mriBrainWView: NSButton!
	@IBOutlet weak var mriBrainWOView: NSButton!
	@IBOutlet weak var mriBrainWWOView: NSButton!
	@IBOutlet weak var mriCSpineView: NSButton!
	@IBOutlet weak var mriTSpineView: NSButton!
	@IBOutlet weak var mriLSpineView: NSButton!
	@IBOutlet weak var mriCTLSpineView: NSButton!
	@IBOutlet weak var mriNeckView: NSButton!
	@IBOutlet weak var mriExtremityView: NSButton!
	@IBOutlet weak var mriExtremityTextView: NSTextField!
	@IBOutlet weak var mriAbView: NSButton!
	@IBOutlet weak var mriAbPelvisWOView: NSButton!
	@IBOutlet weak var mriAbPelvisPOIVView: NSButton!
	@IBOutlet weak var mriAbPelvisPOView: NSButton!
	@IBOutlet weak var mriChestWView: NSButton!
	@IBOutlet weak var mriChestWOView: NSButton!
	@IBOutlet weak var mriChestWWOView: NSButton!
	@IBOutlet weak var mriSinusView: NSButton!
	
	//MRA Outlets
	@IBOutlet weak var mraBrainWView: NSButton!
	@IBOutlet weak var mraBrainWOView: NSButton!
	@IBOutlet weak var mraBrainWWOView: NSButton!
	@IBOutlet weak var mraNeckView: NSButton!
	@IBOutlet weak var mraBUEView: NSButton!
	@IBOutlet weak var mraBLEView: NSButton!
	@IBOutlet weak var mraAbPelvisView: NSButton!
	
	//Neuro Outlets
	@IBOutlet weak var eegView: NSButton!
	@IBOutlet weak var emgView: NSButton!
	@IBOutlet weak var petVeiw: NSButton!
	@IBOutlet weak var petTextView: NSTextField!
	
	//CT Outlets
	@IBOutlet weak var ctAngioBrainView: NSButton!
	@IBOutlet weak var ctAngioAbView: NSButton!
	@IBOutlet weak var ctBrainWView: NSButton!
	@IBOutlet weak var ctBrainWOView: NSButton!
	@IBOutlet weak var ctBrainWWOView: NSButton!
	@IBOutlet weak var ctChestWView: NSButton!
	@IBOutlet weak var ctChestWOView: NSButton!
	@IBOutlet weak var ctChestWWOView: NSButton!
	@IBOutlet weak var ctPEView: NSButton!
	@IBOutlet weak var ctLowDoseView: NSButton!
	@IBOutlet weak var ctCalciumView: NSButton!
	@IBOutlet weak var ctArteriesView: NSButton!
	@IBOutlet weak var ctAbView: NSButton!
	@IBOutlet weak var ctAbPelvWOView: NSButton!
	@IBOutlet weak var ctAbPelvPOIVView: NSButton!
	@IBOutlet weak var ctAbPelvPOView: NSButton!
	@IBOutlet weak var ctRenalStoneView: NSButton!
	@IBOutlet weak var ctSinusView: NSButton!
	@IBOutlet weak var ctNeckView: NSButton!
	@IBOutlet weak var ctExtremityView: NSButton!
	@IBOutlet weak var ctExtremityTextView: NSTextField!
	@IBOutlet weak var ctCSpineView: NSButton!
	@IBOutlet weak var ctTSpineView: NSButton!
	@IBOutlet weak var ctLSpineView: NSButton!
	@IBOutlet weak var ctCTLSpineView: NSButton!
	
	//Resp Outlets
	@IBOutlet weak var resSleepHomeView: NSButton!
	@IBOutlet weak var resPolysomView: NSButton!
	@IBOutlet weak var resSleepSplitView: NSButton!
	@IBOutlet weak var resCPAPView: NSButton!
	@IBOutlet weak var resMSLTView: NSButton!
	@IBOutlet weak var resMWTView: NSButton!
	@IBOutlet weak var resPulsOxView: NSButton!
	@IBOutlet weak var resPFTCompleteView: NSButton!
	@IBOutlet weak var resPFTBasicView: NSButton!
	@IBOutlet weak var resSpiroView: NSButton!
	@IBOutlet weak var resSpiroPostBronchView: NSButton!
	@IBOutlet weak var resSpiroExerciseView: NSButton!
	@IBOutlet weak var resABGRoomAirView: NSButton!
	@IBOutlet weak var resABGO2View: NSButton!
	
	//Cardio Outlets
	@IBOutlet weak var cardioECHOView: NSButton!
	@IBOutlet weak var cardioTransECHOView: NSButton!
	@IBOutlet weak var cardioBubbleECHOView: NSButton!
	@IBOutlet weak var cardioEKGView: NSButton!
	@IBOutlet weak var cardioStressExerciseView: NSButton!
	@IBOutlet weak var cardioStressTreadmillView: NSButton!
	@IBOutlet weak var cardioStressLexiscanView: NSButton!
	@IBOutlet weak var cardioTreadmillECHOView: NSButton!
	@IBOutlet weak var cardio24HolterView: NSButton!
	@IBOutlet weak var cardio48HolterView: NSButton!
	@IBOutlet weak var cardio30DayEventView: NSButton!
	@IBOutlet weak var cardioTiltTableView: NSButton!

	
	//GI Outlets
	@IBOutlet weak var giCLNView: NSButton!
	@IBOutlet weak var giEGDView: NSButton!
	
	var xrayButtonArray: [NSButton] {return [xrayChestView, xrayRibView, xrayAbView, xrayCSpineView, xrayTSpineView, xrayLSSpineView, xrayShoulderView, xrayKneeView, xrayHipView, xrayPelvisView, xrayFemurView, xrayTibFibView, xrayAnkleView, xrayFootView, xrayElbowView, xrayWristView, xrayHandView, xrayMyeloView, xrayGIView, xrayBariumView, xraySwallowView, xrayGastroView]}
	var xrayVerbiageArray: [String] {return ["Xray - Chest PA&Lat","Xray - Rib series","Xray - Abdomen Flat & Upright","Xray - C spine series","Xray - T spine series","Xray - LS spine series","Xray - Shoulder series","Xray - Knee series with Standing film","Xray - Hip","Xray - Pelvis","Xray - Femur", "Xray - Tib Fib","Xray - Ankle","Xray - Foot","Xray - Elbow","Xray - Wrist","Xray - Hand", "Xray - Plain Myelogram - \(xrayMyeloTextView.stringValue)","Xray - Upper GI","Xray - Barium Swallow","Xray - Swallow Function Study","Xray - Gastrogaffin Enema"]}
	
	var mrimraButtonArray: [NSButton] {return [mriBrainWView, mriBrainWOView, mriBrainWWOView, mriCSpineView, mriTSpineView, mriLSpineView, mriCTLSpineView, mriNeckView, mriExtremityView, mriAbView, mriAbPelvisWOView, mriAbPelvisPOIVView, mriAbPelvisPOView, mriChestWView, mriChestWOView, mriChestWWOView, mriSinusView, mraBrainWView, mraBrainWOView, mraBrainWWOView, mraNeckView, mraBUEView, mraBLEView, mraAbPelvisView]}
	var mrimraVerbiageArray: [String] {return ["MRI - Brain w Contrast","MRI - Brain wo Contrast","MRI - Brain wwo Contrast","MRI - C spine","MRI - T spine","MRI - L spine","MRI - CTL spine","MRI - Neck Soft Tissue","MRI - Extremity - \(mriExtremityTextView.stringValue)","MRI - Abdomen","MRI - Abdomen & Pelvis wo Contrast","MRI - Abdomen & Pelvis w PO&IV Contrast", "MRI - Abdomen & Pelvis w PO Contrast","MRI - Chest w Contrast","MRI - Chest wo Contrast","MRI - Chest wwo Contrast","MRI - Sinuses","MRA - Brain w Contrast","MRA - Brain wo Contrast","MRA - Brain wwo Contrast","MRA - Neck and great vessels","MRA - Bilateral Upper Extremities","MRA - Bilateral Lower Extremities","MRA -Abdomen & Pelvis"]}
	
	var ctneuroButtonArray: [NSButton] {return [ctAngioBrainView, ctAngioAbView, ctBrainWView, ctBrainWOView, ctBrainWWOView, ctChestWView, ctChestWOView, ctChestWWOView, ctPEView, ctLowDoseView, ctCalciumView, ctArteriesView, ctAbView, ctAbPelvWOView, ctAbPelvPOIVView, ctAbPelvPOView, ctRenalStoneView, ctSinusView, ctNeckView, ctExtremityView, ctCSpineView, ctTSpineView, ctLSpineView, ctCTLSpineView, eegView, emgView, petVeiw]}
	var ctneuroVerbiageArray: [String] {return ["CT - Angio Brain","CT - Angio Abdomen/Pelvis w/runoff", "CT - Brain w Contrast", "CT - Brain wo Contrast","CT - Brain wwo Contrast","CT - Chest w Contrast","CT - Chest wo Contrast","CT - Chest wwo Contrast","CT - Chest PE Protocol","CT - Chest Low Dose Lung Cancer Screen","CT - Coronary Calcium","CT - Coronary Arteries", "CT - Abdomen","CT - Abdomen & Pelvis wo Contrast","CT - Abdomen & Pelvis w PO&IV Contrast","CT - Abdomen & Pelvis w PO Contrast","CT - Abdomen & Pelvis Renal stone Protocol","CT - Sinus","CT - Neck Soft Tissue","CT - Extremity - \(ctExtremityTextView.stringValue)","CT - Myelogram C Spine","CT - Myelogram T Spine","CT - Myelogram L Spine","CT - Myelogram CTL Spine", "EEG", "EMG - Nerve conduction study", "PET - \(petTextView.stringValue)"]}
	
	var usndButtonArray: [NSButton] {return [usndThyroidView, usndGallbladderView, usndAbView, usndKidneysView, usndPelvicView, usndTransVagView, usndTesticleView, usndBreastBiView, usndBreastRView, usndBreastLView, usndArteryView, usndVDBLEView, usndVDLLEView, usndVDRLEView, usndVDBUEView, usndVDLUEView, usndVDRUEView, usndRefluxBLEView, usndADBLEView, usndADLLEView, usndADRLEView, usndADBUEView, usndADLUEView, usndADRUEView]}
	var usndVerbiageArray: [String] {return ["Ultrasound - Thyroid","Ultrasound - Gallbladder/RUQ","Ultrasound - Complete abdominal","Ultrasound - Kidneys","Ultrasound - Pelvic","Ultrasound - Pelvic - Transvaginal","Ultrasound - Testicle/Scrotum","Ultrasound - Breasts - Bilateral","Ultrasound - Breast - Right","Ultrasound - Breast - Left", "Ultrasound - Carotid Artery Doppler","Ultrasound - Venous Doppler - Bilateral Lower Extremities","Ultrasound - Venous Doppler - Left Lower Extremities","Ultrasound - Venous Doppler - Right Lower Extremities","Ultrasound - Venous Doppler - Bilateral Upper Extremities","Ultrasound - Venous Doppler - Left Upper Extremities","Ultrasound - Venous Doppler - Right Upper Extremities","Ultrasound - Venous Reflux Doppler - Bilateral Lower Extremities","Ultrasound - Arterial Doppler - Bilateral Lower Extremities","Ultrasound - Arterial Doppler - Left Lower Extremities","Ultrasound - Arterial Doppler - Right Lower Extremites","Ultrasound - Arterial Doppler - Bilateral Upper Extremities","Ultrasound - Arterial Doppler - Left Upper Extremities","Ultrasound - Arterial Doppler - Right Upper Extremities"]}
	
	var mamnucButtonArray: [NSButton] {return [mamSBView, mamDBView, mamDRView, mamDLView, bmdView, nucGallbladderView, nucNGESView, nucThyroidView, nucBreastView, nucBoneView]}
	var mamnucVerbiageArray: [String] {return ["Mammogram - Screening Bilateral","Mammogram - Diagnostic Bilateral","Mammogram - Diagnostic Right","Mammogram - Diagnostic Left", "BMD - Dexa Bone Mineral Density", "Nuclear - Thyroid uptake scan","Nuclear - Gallbladder HIDA scan","Nuclear - NGES Nuclear Gastric Emptying Study","Nuclear - Breast scan","Nuclear - Bone scan 3 phase"]}
	
	var respcardiogiButtonArray: [NSButton] {return [resSleepHomeView, resPolysomView, resSleepSplitView, resCPAPView, resMSLTView, resMWTView, resPulsOxView, resPFTCompleteView, resPFTBasicView, resSpiroView, resSpiroPostBronchView, resSpiroExerciseView, resABGRoomAirView, resABGO2View, cardioECHOView, cardioTransECHOView, cardioBubbleECHOView, cardioEKGView, cardioStressExerciseView, cardioStressTreadmillView, cardioStressLexiscanView, cardioTreadmillECHOView, cardio24HolterView, cardio48HolterView, cardio30DayEventView, cardioTiltTableView, giCLNView, giEGDView]}
	var respcardiogiVerbiageArray: [String] {return ["Home Sleep Study", "Sleep Study (Polysomnagram)","Sleep Study - Split Night","Sleep Study - CPAP Titration Study","MSLT (Multiple Sleep Latency Test)","MWT (Maintenance of Wakefulness Test)","Overnight Pulse Ox","PFT Complete","PFT Basic","Spirometry","Spirometry w Pre/Post Bronchodilator","Spirometry Exercise","ABG Room Air","ABG w/O2", "ECHO","Trans Esophageal ECHO","ECHO w bubble study","EKG","Stress Test: EKG Exercise","Stress Test: Treadmill Myoview","Stress Test: Lexiscan Myoview","Stress Test: Treadmill Stress ECHO","24 Hr Holter Monitor","48 Hr Holter Monitor","30 Day Cardiac Event Monitor", "Tilt Table Test", "Colonoscopy", "EGD"]}
	

	@IBAction func takeClearXRAY(sender: AnyObject) {
		clearCheckboxes(xrayButtonArray)
		clearCheckboxes(usndButtonArray)
		clearCheckboxes(mamnucButtonArray)
		xrayMyeloTextView.stringValue = ""
		petTextView.stringValue = ""
	}
	
	@IBAction func takeClearMRI(sender: AnyObject) {
		clearCheckboxes(mrimraButtonArray)
		clearCheckboxes(ctneuroButtonArray)
		mriExtremityTextView.stringValue = ""
		ctExtremityTextView.stringValue = ""
	}
	
	@IBAction func takeClearCardio(sender: AnyObject) {
		clearCheckboxes(respcardiogiButtonArray)
	}
	
	@IBAction func takeClearAll(sender: AnyObject) {
		takeClearXRAY(self)
		takeClearMRI(self)
		takeClearCardio(self)
	}
	
	override func awakeFromNib() {
		takeClearAll(self)
	}
	
	@IBAction func takeProcessRadiology(sender: AnyObject) {
		var radiologyVerbiageArray = [String]()
		var radiologyFinalText = ""
		radiologyVerbiageArray += processAllControlTypes(xrayButtonArray, stringArray: xrayVerbiageArray)
		radiologyVerbiageArray += processAllControlTypes(mrimraButtonArray, stringArray: mrimraVerbiageArray)
		radiologyVerbiageArray += processAllControlTypes(ctneuroButtonArray, stringArray: ctneuroVerbiageArray)
		radiologyVerbiageArray += processAllControlTypes(usndButtonArray, stringArray: usndVerbiageArray)
		radiologyVerbiageArray += processAllControlTypes(mamnucButtonArray, stringArray: mamnucVerbiageArray)
		radiologyVerbiageArray += processAllControlTypes(respcardiogiButtonArray, stringArray: respcardiogiVerbiageArray)
		
		if !radiologyVerbiageArray.isEmpty {
			radiologyFinalText = "Tests ordered: " + radiologyVerbiageArray.joinWithSeparator(", ")
			//Clear the system clipboard
			let pasteBoard = NSPasteboard.generalPasteboard()
			pasteBoard.clearContents()
			//Set the system clipboard to the final text
			pasteBoard.setString(radiologyFinalText, forType: NSPasteboardTypeString)
			print(radiologyFinalText)
		}
	}

	

}
