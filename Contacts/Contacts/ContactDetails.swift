//
//  ContactDetails.swift
//  Contacts
//
//  Created by Christopher Sanders on 9/13/14.
//  Copyright (c) 2014 Chris Sanders. All rights reserved.
//

import UIKit

class ContactDetails: UIViewController {
    
    @IBOutlet var contactNameLabel: UILabel!
    @IBOutlet var contactPhoneLabel: UILabel!
    
    var contactName = ""
    var contactPhone = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactNameLabel.text = contactName
        contactPhoneLabel.text = contactPhone
    }

}
