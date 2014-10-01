//
//  CustomerTableCell.swift
//  Lemonade Stand
//
//  Created by Jamie Layne on 9/25/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import UIKit

class CustomerTableCell: UITableViewCell {
	
	@IBOutlet var customerNameLabel: UILabel!
	@IBOutlet var customerPreferenceLabel: UILabel!

	override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
		super.init( style: style, reuseIdentifier: reuseIdentifier)
	}

	required init(coder aDecoder: NSCoder) {
	    //fatalError("init(coder:) has not been implemented")
		super.init(coder: aDecoder)
	}
}
