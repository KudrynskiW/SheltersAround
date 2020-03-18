//
//  Institution.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct Institution: Identifiable {
    let id: UUID
    var logo: Image?
    var form: String
    var name: String
    var description: String
    var address: Address
    var contact: Contact
    var bank: Bank?
    var animals: [Animal]?
    
    init(_ logo: Image? = nil,_ name: String,_ form: String,_ description: String,_ address: Address,_ contact: Contact,_ bank: Bank? = nil,_ animals: [Animal]? = nil) {
        self.id = UUID.init()
        self.logo = logo
        self.form = form
        self.name = name
        self.description = description
        self.address = address
        self.contact = contact
        self.bank = bank
        self.animals = animals
    }
}

let exampleInstitution1 = Institution(Image("generic-image-placeholder"), "Example", "TOZ", "This is example institution with details filled as you can see. This is example institution with details filled as you can see.", exampleAddress, exampleContact, nil, nil)

let exampleInstitution2 = Institution(Image("generic-image-placeholder"), "NotExample", "TOZ", "This is example institution with details filled as you can see. This is example institution with details filled as you can see.", exampleAddress, exampleContact, nil, nil)

let exampleInstitution3 = Institution(Image("generic-image-placeholder"), "Cris", "TOZ", "This is example institution with details filled as you can see. This is example institution with details filled as you can see.", exampleAddress, exampleContact, nil, nil)

let exampleInstitutionArray = [exampleInstitution1, exampleInstitution2, exampleInstitution3]
