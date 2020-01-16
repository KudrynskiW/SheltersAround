//
//  Contact.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation

struct Contact {
    var contactPerson: String?
    var phoneNumbers: [String]
    var emailAddress: String
    
    init(_ contactPerson: String? = nil,_ phoneNumbers: [String],_ emailAdress: String) {
        self.contactPerson = contactPerson
        self.phoneNumbers = phoneNumbers
        self.emailAddress = emailAdress
    }
}
