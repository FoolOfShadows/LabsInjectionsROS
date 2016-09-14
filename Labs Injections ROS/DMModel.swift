//
//  DMModel.swift
//  Labs Injections ROS
//
//  Created by Fool on 9/8/16.
//  Copyright © 2016 Fulgent Wake. All rights reserved.
//

import Foundation

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

enum Assessment:String {
	case FluctuatingBS = "with fluctuating blood sugars"
	case HypoEpisodes = "with hypoglycemia episodes"
	case Hypoglycemia
	case PeripheralNeuropathy = "periperal neuropathy"
	case Numbness = "with numbness"
	case NeuropathicFeet = "neuropathic pain in feet"
	case NeuropathicLegs = "neuropathic pain in legs"
	case Retinopathy
	case Nephropathy
	case Amyotrophy
	case PoorCirculation = "poor circulation"
	case DiabeticFoo = "diabetic foot"
	case FootUlcer = "diabetic foot ulcer"
	case HxFootUlcer = "history of foot ulcers"
	case PreUlcerativeCallus = "pre-ulcerative callus"
	case Bunion
	case HammerToes = "hammer toes"
	case Onycomycosis
}

struct EyeExam {
	let lastExam = String()
	let visionChange = Bool()
	var visionChangeString:String {
		var result = String()
		if visionChange == true {
			result = "was"
		} else if visionChange == false {
			result = "was not"
		}
		return result
	}
	let physician = String()
	let retinopathy = String()
	
	func processEyeExam() -> String {
		return "Patient reports last eye exam on \(lastExam) with \(physician).  A change in vision \(visionChangeString) noted. Retinopathy: \(retinopathy)"
	}
}

