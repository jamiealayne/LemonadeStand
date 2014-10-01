//
//  CustomersVS.swift
//  Lemonade Stand
//
//  Created by Jamie Layne on 9/25/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import UIKit

class CustomersVC: UIViewController, UITableViewDelegate, UITableViewDataSource  {

	
	let headerCell = "headerCell"
	let customerCell = "customerCell"

	@IBOutlet var weatherLabel: UILabel!
	@IBOutlet var weatherImage: UIImageView!
	@IBOutlet var customersLabel: UILabel!
	@IBOutlet var customersTable: UITableView!
	
	var tableView: CustomersTableVC = CustomersTableVC()
	var tableData: [String]
	
	override init() {
		self.tableData = []
		super.init()
		println("base init")
	}
	
	required init(coder aDecoder: NSCoder) {
		self.tableData = [String]()
		super.init(coder: aDecoder)
		//fatalError("init(coder:) has not been implemented")
		println("Coder init")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Make this dynamic based on weather
		let numberOfCustomers = 5
		
		for var i=0; i<numberOfCustomers; i++ {
			//self.tableData.append( Customer() )
			self.tableData.append("Jamie")
			println( self.tableData.count )
			
		}
		
		self.customersTable.registerClass(CustomerTableCell.classForCoder(), forCellReuseIdentifier: self.customerCell)
		self.customersTable.dataSource = self
		
		println("View Did Load")
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		println("Mem warning")
	}
	
	
	//UITableViewDataSource Protocol Conformance
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// Define the Number of sections necessary
		println("number of sections called: 1 for")
		return 1
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		//return tableData.count
		println("tableView count called: \(self.tableData.count) ")
		return self.tableData.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		println("Showing TableView Cell for row \(indexPath.row)")
		println(self.tableData)
		
		var cell = tableView.dequeueReusableCellWithIdentifier( self.customerCell ) as CustomerTableCell
		//cell.customerNameLabel.text = "\(self.tableData[indexPath.row].name)"
		cell.customerNameLabel.text = "\(self.tableData[indexPath.row])"
		//cell.customerPreferenceLabel.text = "\(self.tableData[indexPath.row].lemonadePreference)"
		cell.accessoryType = .Checkmark
		return cell
	}
	
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return 51
	}
	
}
