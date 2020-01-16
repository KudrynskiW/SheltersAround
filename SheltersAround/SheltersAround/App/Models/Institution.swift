//
//  Institution.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import UIKit

struct Institution {
    let id: UUID
    var logo: UIImage?
    var name: String
    var description: String
    var address: Address
    var contact: Contact
    var bank: Bank?
    var animals: [Animal]?
    
    init(_ logo: UIImage? = nil,_ name: String,_ description: String,_ address: Address,_ contact: Contact,_ bank: Bank? = nil,_ animals: [Animal]? = nil) {
        self.id = UUID.init()
        self.logo = logo
        self.name = name
        self.description = description
        self.address = address
        self.contact = contact
        self.bank = bank
        self.animals = animals
    }
}
