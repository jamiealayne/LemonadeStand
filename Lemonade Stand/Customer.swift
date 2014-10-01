//
//  Customer.swift
//  Lemonade Stand
//
//  Created by Jamie Layne on 9/25/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import Foundation
import UIKit

class Customer : Printable {
	var name: String = ""
	var lemonadePreferenceRatio: Float = 0.0
	var lemonadePreference: String {
		switch self.lemonadePreferenceRatio {
		case let ratio where ratio < 0.4:
			return "Acidic"
		case let ratio where ratio > 0.6:
			return "Dilluted"
		default:
			return "Normal"
		}
	}
	
	var description: String {
		return "\(name), who prefers \(lemonadePreference)"
	}
	
	
	init() {
		self.name = "Bob"
		self.lemonadePreferenceRatio = 0.2
		//self.name = getRandomCustomerName()
		//self.lemonadePreferenceRatio = Float.random(lower: 0.0, upper: 1.0)
	}
	
	func getRandomCustomerName() -> String {
		var customerNames:[String] = ["Bob", "Mary", "Joe", "James", "Karen", "Jody", "Kim", "Matt", "Jon", "Kelly", "Sandy", "Jim", "Bill", "Tony", "Shelly", "Tim", "Mark", "Hunter", "Sofie", "Sam"]
		
		var randomIndex = Int.random(lower: 0, upper: customerNames.count-1)
		return customerNames[ randomIndex ]
	}
}