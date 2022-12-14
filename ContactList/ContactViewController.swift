//
//  ViewController.swift
//  ContactList
//
//  Created by Геннадий Ведерников on 27.10.2022.
//

import UIKit

class ContactViewController: UIViewController {
    

    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.fullName
        mailLabel.text = "Mail: \(contact.mail)"
        phoneNumberLabel.text = "Phone: \(contact.numberPhone)"
    }
}

