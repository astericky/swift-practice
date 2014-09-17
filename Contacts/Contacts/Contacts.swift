    //
//  Contacts.swift
//  Contacts
//
//  Created by Christopher Sanders on 9/10/14.
//  Copyright (c) 2014 Chris Sanders. All rights reserved.
//

import UIKit

class Contacts: UITableViewController {
    
    struct contactInfo {
        var name: String
        var phoneNumber: String
    }
    
    var listOfContacts: [contactInfo] = []
    
    // Sample contacts
    var firstContact = contactInfo(name: "John Coffey", phoneNumber: "(111) 111-1111")
    var secondContact = contactInfo(name: "Cathy Kane", phoneNumber: "(222) 222-2222")
    
    // ViewController lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfContacts.append(firstContact)
        listOfContacts.append(secondContact)
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
//        // #warning Potentially incomplete method implementation.
//        // Return the number of sections.
//        return 1
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfContacts.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath) as UITableViewCell

        cell.textLabel!.text = listOfContacts[indexPath.row].name
        cell.detailTextLabel!.text = listOfContacts[indexPath.row].phoneNumber
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ToDetail" {
            
            let indexPath = self.tableView.indexPathForSelectedRow()
            let theSelectedRow = listOfContacts[indexPath!.row]
            let theDestination = (segue.destinationViewController as ContactDetails)
            
            theDestination.contactName = theSelectedRow.name
            theDestination.contactPhone = theSelectedRow.phoneNumber
        }
    }

}
