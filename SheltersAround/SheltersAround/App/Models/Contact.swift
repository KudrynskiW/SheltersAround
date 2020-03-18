//
//  Contact.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation

struct Contact: Equatable {
    var contactPerson: String?
    var phoneNumbers: [String]
    var emailAddress: String
    
    init(_ contactPerson: String? = nil,_ phoneNumbers: [String],_ emailAdress: String) {
        self.contactPerson = contactPerson
        self.phoneNumbers = phoneNumbers
        self.emailAddress = emailAdress
    }
}

let exampleContact = Contact("Wojciech", ["123456789", "987654321"], "wojciech@kudrynski.pl")
