//
//  Labs.swift
//  Labs Injections ROS
//
//  Created by Fool on 11/11/15.
//  Copyright © 2015 Fulgent Wake. All rights reserved.
//

import Cocoa

class Labs: NSObject, NSApplicationDelegate, NSWindowDelegate {
	
	@IBOutlet weak var winOrderPrep: NSWindow!
	@IBOutlet weak var winPrint: NSWindow!
	
	//Lab Controllers
	@IBOutlet weak var bmpView: NSComboBox!
	@IBOutlet weak var cmpView: NSComboBox!
	@IBOutlet weak var cbcView: NSComboBox!
	@IBOutlet weak var tshView: NSComboBox!
	@IBOutlet weak var ft4view: NSComboBox!
	@IBOutlet weak var ft3View: NSComboBox!
	@IBOutlet weak var vitDView: NSComboBox!
	@IBOutlet weak var urACView: NSComboBox!
	@IBOutlet weak var cpkView: NSComboBox!
	@IBOutlet weak var esrView: NSComboBox!
	@IBOutlet weak var crpView: NSComboBox!
	@IBOutlet weak var rfView: NSComboBox!
	@IBOutlet weak var fpsaView: NSComboBox!
	@IBOutlet weak var hsvView: NSComboBox!
	@IBOutlet weak var rprView: NSComboBox!
	@IBOutlet weak var clamView: NSComboBox!
	@IBOutlet weak var lpdView: NSComboBox!
	@IBOutlet weak var psaView: NSComboBox!
	@IBOutlet weak var udipView: NSComboBox!
	@IBOutlet weak var ucxView: NSComboBox!
	@IBOutlet weak var udsView: NSComboBox!
	@IBOutlet weak var ucgView: NSComboBox!
	@IBOutlet weak var pttView: NSComboBox!
	@IBOutlet weak var fshView: NSComboBox!
	@IBOutlet weak var tstView: NSComboBox!
	@IBOutlet weak var anaView: NSComboBox!
	@IBOutlet weak var b12View: NSComboBox!
	@IBOutlet weak var hpylView: NSComboBox!
	@IBOutlet weak var papView: NSComboBox!
	@IBOutlet weak var hivView: NSComboBox!
	@IBOutlet weak var gonView: NSComboBox!
	@IBOutlet weak var lpdnmrView: NSComboBox!
	@IBOutlet weak var hba1cView: NSComboBox!
	@IBOutlet weak var umalbView: NSComboBox!
	@IBOutlet weak var uamicView: NSComboBox!
	@IBOutlet weak var mudsView: NSComboBox!
	@IBOutlet weak var uprcrView: NSComboBox!
	@IBOutlet weak var ptinrView: NSComboBox!
	@IBOutlet weak var hrmpnlView: NSComboBox!
	@IBOutlet weak var ftstView: NSComboBox!
	@IBOutlet weak var anapnlView: NSComboBox!
	@IBOutlet weak var anemiapnlView: NSComboBox!
	@IBOutlet weak var cortisolView: NSComboBox!
	@IBOutlet weak var stoolView: NSComboBox!
	@IBOutlet weak var cheppnlView: NSComboBox!
	@IBOutlet weak var aheppnlView: NSComboBox!
	@IBOutlet weak var other1View: NSComboBox!
	@IBOutlet weak var other2View: NSComboBox!
	@IBOutlet weak var other1TextView: NSTextField!
	@IBOutlet weak var other2TextView: NSTextField!
	
	@IBOutlet weak var reviewedView: NSButton!
	@IBOutlet weak var fastingView: NSButton!
	@IBOutlet weak var nextLabDueView: NSMatrix!
	
	//Order Prep window controllers
	@IBOutlet weak var ptNameView: NSTextField!
	@IBOutlet weak var ptDOBView: NSTextField!
	@IBOutlet weak var currentDateView: NSTextField!
	@IBOutlet weak var mcPrimaryView: NSMatrix!
	
	@IBOutlet var textToPrint: NSTextView!
	
	var comboBoxArrayLab: [NSComboBox] {return [bmpView, cmpView, cbcView, tshView, ft4view, ft3View, vitDView, urACView, cpkView, esrView, crpView, rfView, fpsaView, hsvView, rprView, clamView, lpdView, psaView, udipView, ucxView, udsView, ucgView, pttView, fshView, tstView, anaView, b12View, hpylView, papView, hivView, gonView, lpdnmrView, hba1cView, umalbView, uamicView, mudsView, uprcrView, ptinrView, hrmpnlView, ftstView, anapnlView, anemiapnlView, cortisolView, stoolView, cheppnlView, aheppnlView, other1View, other2View]}
	var comboBoxValuesLab = [bmpDxValues, cmpDxValues, cbcDxValues, tshDxValues, ft4DxValues, ft3DxValues, vitDDxValues, urACDxValues, cpkDxValues, esrDxValues, crpDxValues, rfDxValues, fpsaDxValues, hsvDxValues, rprDxValues, clamDxValues, lpdDxValues, psaDxValues, udipDxValues, ucxDxValues, udsDxValues, ucgDxValues, pttDxValues, fshDxValues, tstDxValues, anaDxValues, b12DxValues, hpylDxValues, papDxValues, hivDxValues, gonDxValues, lpdnmrDxValues, hba1cDxValues, umalbDxValues, uamicDxValues, mudsDxValues, uprcrDxValues, ptinrDxValues, hrmpnlDxValues, ftstDxValues, anapnlDxValues, anemiapnlDxValues, cortisolDxValues, stoolDxValues, cheppnlDxValues, aheppnlDxValues, other1DxValues, other2DxValues]
	var labVerbiageList: [String] {return ["BMP", "CMP", "CBC", "TSH", "Free T4", "Free T3", "Vitamin D", "Uric Acid", "CPK", "ESR", "CRP", "RF", "Free PSA", "HSV1/HSV2", "RPR", "Clamydia", "Lipids", "PSA", "Urine dip", "Urine Culture", "UDS", "UCG", "PTT", "FSH", "Testosterone", "ANA", "Vitamin B12", "H Pylori", "PAP Smear", "HIV", "Gonorhea", "NMR Lipids", "HbA1c", "Urine Microalbumin", "Urine Micro Analysis", "m UDS", "Urine Protein/Creatinine", "PT/INR", "Hormone Panel (FSH, LH, Progesterone, Prolactin, Estradiol, Testosterone)", "Free Testosterone", "ANA Panel (SSA/SSB, SCL/70, Centromere AB, Jo-1 Antibody, RA, ANA, C3, C4, DNA AB DS, Thyroid Peroxidase AB)", "Anemia Panel (CBC, Ferritin, Folic Acid, Iron/TIBC, LDH, Retic, B12)", "Cortisol", "Stool studies", "Comprehensive hepatitis panel", "Acute hepatitis panel", other1TextView.stringValue, other2TextView.stringValue]}
	var labVerbiageWithDXList: [String] {return ["Basic Metabolic Panel (BMP) - \(bmpView.stringValue)", "Complete Metabolic Panel (CMP) - \(cmpView.stringValue)", "Complete Blood Count with Differential (CBC) - \(cbcView.stringValue)", "Thyroid Stimulating Hormone High Sensitivity (TSH) - \(tshView.stringValue)", "Free Thyroxine Level (T4F) - \(ft4view.stringValue)", "Free Triiodothyronine Level (T3F) - \(ft3View.stringValue)", "Vitamin D Total (25 Hydroxy) - \(vitDView.stringValue)", "Uric Acid - \(urACView.stringValue)", "Creatine Kinase (CPK) - \(cpkView.stringValue)", "Erythrocyte Sedimentation Rate (ESR) - \(esrView.stringValue)", "C-Reactive Protien (CRP) - \(crpView.stringValue)", "Rheumatoid Factor (RF) - \(rfView.stringValue)", "Free Prostate Specific Antigen (FPSA) - \(fpsaView.stringValue)", "HSV1/HSV2 - \(hsvView.stringValue)", "RPR - \(rprView.stringValue)", "Clamydia - \(clamView.stringValue)", "Lipid Panel - \(lpdView.stringValue)", "Prostate Specific Antigen (PSA) - \(psaView.stringValue)", "Urine Culture & Sensitivities - \(ucxView.stringValue)", "Urine Drug Screen (UDS) - \(udsView.stringValue)", "UCG - \(ucgView.stringValue)", "Partial Thromboplastin Time (PTT) - \(pttView.stringValue)", "Follicle Stimulating Hormone (FSH) - \(fshView.stringValue)", "Total Testosterone - \(tstView.stringValue)", "Antinuclear Anibody Titer & Pattern (ANA) - \(anaView.stringValue)", "Cyanocobalamin Level (Vitamin B12) - \(b12View.stringValue)", "Helicobacter Pylori Antibody Panel (H Pylori) - \(hpylView.stringValue)", "Papanicolaou Smear (PAP) - \(papView.stringValue)", "HIV - \(hivView.stringValue)", "Gonorhea - \(gonView.stringValue)", "NMR Lipid Panel - \(lpdnmrView.stringValue)", "Hemoglobin A1c (HbA1c) - \(hba1cView.stringValue)", "Urine Microalbumin - \(umalbView.stringValue)", "Urinalysis w/microanalysis - \(uamicView.stringValue)", "Urine Protein/Creatinine Ratio - \(uprcrView.stringValue)", "Protime w/International Normalizing Ration (PT/INR) - \(ptinrView.stringValue)", "Hormone Panel (Follicle Stimulating Hormone, Luteinizing Hormone, Progesterone, Prolactin, Estradiol, Testosterone) - \(hrmpnlView.stringValue)", "Free Testosterone - \(ftstView.stringValue)", "ANA Panel (SSA/SSB, SCL/70, Centromere AB, Jo-1 Antibody, RA, ANA, C3, C4, DNA AB DS, Thyroid Peroxidase AB) - \(anapnlView.stringValue)", "Anemia Panel (CBC, Ferritin, Folic Acid, Iron/TIBC, LDH, Retic, B12) - \(anemiapnlView.stringValue)", "Cortisol Level - \(cortisolView.stringValue)", "Stool Studies (Stool Culture, Ova & Parasites, C Diff Ag/Toxin, Fecal WBC) - \(stoolView.stringValue)", "Comprehensive hepatitis panel - \(cheppnlView.stringValue)", "Acute hepatitis panel - \(aheppnlView.stringValue)", "\(other1TextView.stringValue) - \(other1View.stringValue)", "\(other2TextView.stringValue) - \(other2View.stringValue)"]}
	
	func clearLab() {
		//print(comboBoxArrayLab.count, comboBoxValuesLab.count)
		clearComboBoxes(comboBoxArrayLab, values: comboBoxValuesLab)
		other1TextView.stringValue = ""
		other2TextView.stringValue = ""
		reviewedView.state = NSOffState
		fastingView.state = NSOffState
		self.nextLabDueView .deselectAllCells()
	}
	
	override func awakeFromNib() {
		clearLab()
	}
	
	@IBAction func takeClearLabs(sender: AnyObject) {
		clearLab()
	}
	
	func processLabOrdersForNote() -> String {
		var listToReturn = ""
		var labReviewed = ""
		var nextLab = ""
		var nextLabDue = ""
		
		if reviewedView.state == NSOnState {
			labReviewed = "Lab results reviewed with patient during visit.\n"
		}
		
		switch nextLabDueView.selectedTag() {
		case 1:
			nextLab = "today"
		case 2:
			nextLab = "outpatient"
		case 3:
			nextLab = "next visit"
		default:
			nextLab = ""
		}
		if nextLab != "" {
			if fastingView.state == NSOnState {
				nextLabDue = "Fasting lab tests to be done \(nextLab).\n"
			} else {
				nextLabDue = "Lab tests to be done \(nextLab).\n"
			}
		}
		
		var labList = [String]()
		
		for var i = 0; i < comboBoxArrayLab.count; i++ {
			if !comboBoxArrayLab[i].stringValue.isEmpty {
				labList.append(labVerbiageList[i])
			}
		}
		
		if !labList.isEmpty {
			listToReturn = labReviewed + nextLabDue + "Labs ordered: " + labList.joinWithSeparator(", ") + "\n"
		}
		
		return listToReturn
	}
	
	func processLabForPrintSave() -> String {
		var listToReturn = ""
		var labReviewed = ""
		
		var labList = [String]()
		
		if reviewedView.state == NSOnState {
			labReviewed = "Lab results reviewed with patient during visit.\n"
		}
		
		//let labsToRemove = [udipView, mudsView]
		
		let adjustedLabList = comboBoxArrayLab.filter() {$0 !== udipView && $0 !== mudsView}
		
		for var i = 0; i < adjustedLabList.count; i++ {
			if !adjustedLabList[i].stringValue.isEmpty {
				labList.append(labVerbiageWithDXList[i])
			}
		}
		
		if !labList.isEmpty {
			listToReturn = labList.joinWithSeparator("\n")
		}
		
		print(listToReturn)
		return listToReturn
	}
	
	@IBAction func takeProcessLabs(sender: AnyObject) {
		//print(processLabOrdersForNote())
		
		let labResults = processLabOrdersForNote()
		let pasteBoard = NSPasteboard.generalPasteboard()
		pasteBoard.clearContents()
		pasteBoard.setString(labResults, forType: NSPasteboardTypeString)
	}
	
	@IBAction func takePrintSave(sender: AnyObject) {
		let dateFormatter = NSDateFormatter()
		dateFormatter.dateFormat = "MM/dd/YYYY"
		let currentDate = dateFormatter.stringFromDate(NSDate())
		winOrderPrep.makeKeyAndOrderFront(self)
		ptNameView.stringValue = ""
		ptDOBView.stringValue = ""
		currentDateView.stringValue = currentDate
		mcPrimaryView.selectCellAtRow(0, column: 0)
	}
	
	@IBAction func takeProcessForPrint(sender: AnyObject) {
		var returnedLabList = ""
		var returnedLabsForNote = ""
		
		let patientName = ptNameView.stringValue
		var patientDOB = ""
		var mcPrimary = ""
		var addOn = ""
		
		if nextLabDueView.stringValue == "Add On" {
			patientDOB = "DOB:  \(ptDOBView.stringValue)" + "\n\n" + "- ADD ON LAB -"
		} else {
			patientDOB = "DOB:  \(ptDOBView.stringValue)"
		}
		
		if mcPrimaryView.selectedCell()!.tag == 1 {
			mcPrimary = "YES"
		} else if mcPrimaryView.selectedCell()!.tag == 0 {
			mcPrimary = "NO"
		}
		
		if nextLabDueView.selectedTag() == 4 {
			addOn = "— ADD ON LAB —\n\n"
		}
		
		returnedLabList = processLabForPrintSave()
		returnedLabsForNote = processLabOrdersForNote()
		
		let headerInfo = ("Whelchel Primary Care Medicine" + "\n" + "401 East Pinecrest, Marshall, TX  75670" + "\n" + "CPL Client #: 36686" + "\n" + "Phone: 903-935-7101     Fax: 903-935-7043")
		
		let patientInfo = ("NAME:  \(patientName)" + "\t\t" + "M/C PRIMARY:  \(mcPrimary)"
			+ "\n"
			+ "\(patientDOB)" + "\n\n"
			+ addOn
			+ "DATE ORDERED:  \(currentDateView.stringValue)")
		let headerLabels = ("TEST" + "\t" + " - " + "\t" + "DX CODE")
		
		let labOrderOutputText = "\(headerInfo)" + "\n\n"
			+ "\(patientInfo)" + "\n\n"
			+ "\(headerLabels)" + "\n"
			+ "\(returnedLabList)" + "\n\n\n\n"
			+ "Dawn Whelchel, MD" + "\n\n\n\n"
			+ "\(returnedLabsForNote)"
		
		winOrderPrep.orderOut(self)
		winPrint.makeKeyAndOrderFront(self)
		//self.textToPrint.textContainerInset = NSSize(width: 0, height: 0)
		self.textToPrint.string = labOrderOutputText
		print(labOrderOutputText)
	}
	
	@IBAction func takeCancelPrintSave(sender: AnyObject) {
		winOrderPrep.orderOut(self)
	}
	
	@IBAction func takeClosePrint(sender: AnyObject) {
		winPrint.orderOut(self)
	}
	
	@IBAction func takePrintLab(sender: AnyObject) {
		let myPrintInfo = NSPrintInfo.sharedPrintInfo()
		//Don't seem to need these lines
		//myPrintInfo.verticalPagination = NSPrintingPaginationMode.AutoPagination
		//let horizontalMargin: CGFloat = 0
		//let verticalMargin: CGFloat = 0
		
		//Setting the margins to 0 gives the same output as connecting the button
		//to the print action in the interface builder
		myPrintInfo.leftMargin = 0
		myPrintInfo.rightMargin = 0
		//myPrintInfo.horizontallyCentered = true
		myPrintInfo.topMargin = 0
		myPrintInfo.bottomMargin = 0
		let myPrintOperation = NSPrintOperation(view: self.textToPrint, printInfo: myPrintInfo)
		
		myPrintOperation.runOperation()
		
		winPrint.orderOut(self)
	}
	
	
	//Preset lab selectors
	@IBAction func take90DayLab(sender: AnyObject) {
		cmpView.selectItemAtIndex(1)
		cbcView.selectItemAtIndex(1)
		tshView.selectItemAtIndex(1)
		lpdView.selectItemAtIndex(1)
	}
	
	@IBAction func takeDMLab(sender: AnyObject) {
		cmpView.selectItemAtIndex(1)
		cbcView.selectItemAtIndex(1)
		tshView.selectItemAtIndex(1)
		hba1cView.selectItemAtIndex(1)
		umalbView.selectItemAtIndex(1)
	}
	
	@IBAction func takeThyLab(sender: AnyObject) {
		tshView.selectItemAtIndex(1)
		ft4view.selectItemAtIndex(1)
		ft3View.selectItemAtIndex(1)
	}
	
	@IBAction func takeRheumLab(sender: AnyObject) {
		urACView.selectItemAtIndex(1)
		cpkView.selectItemAtIndex(1)
		esrView.selectItemAtIndex(1)
		crpView.selectItemAtIndex(1)
		rfView.selectItemAtIndex(1)
		anaView.selectItemAtIndex(1)
	}
	
	@IBAction func takeYrlyPhysLab(sender: AnyObject) {
		let yrlyPhysCode = "Z00.00"
		cmpView.stringValue = yrlyPhysCode
		cbcView.stringValue = yrlyPhysCode
		tshView.stringValue = yrlyPhysCode
		lpdView.stringValue = yrlyPhysCode
		
	}
	
	@IBAction func takeSTDPanel(sender: AnyObject) {
		hsvView.selectItemAtIndex(1)
		rprView.selectItemAtIndex(1)
		hivView.selectItemAtIndex(1)
		cheppnlView.selectItemAtIndex(1)
	}
	
}
