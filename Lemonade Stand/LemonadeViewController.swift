//
//  ViewController.swift
//  Lemonade Stand
//
//  Created by Jamie Layne on 9/24/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import UIKit

class LemonadeViewController: UIViewController {

	
	@IBOutlet var moneyLabel: UILabel!
	@IBOutlet var availableLemonsLabel: UILabel!
	@IBOutlet var availableIceLabel: UILabel!
	@IBOutlet var purchaseLemonsLabel: UILabel!
	@IBOutlet var purchaseIceLabel: UILabel!
	@IBOutlet var mixLemonsLabel: UILabel!
	@IBOutlet var mixIceLabel: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func purchaseLemonsPressed(sender: AnyObject, forEvent event: UIEvent) {
		
	}
	
	@IBAction func purchaseIcePressed(sender: AnyObject, forEvent event: UIEvent) {
	}
	
	
	@IBAction func mixLemonsPressed(sender: AnyObject, forEvent event: UIEvent) {
	}
	
	@IBAction func mixIcePressed(sender: AnyObject, forEvent event: UIEvent) {
	}
	
	@IBAction func startDayPressed(sender: AnyObject) {
		println("Start Day Pressed")
	}
	
	@IBAction func startNewDay(segue: UIStoryboardSegue) {
		println("Start New Day Pressed")
	}

}

