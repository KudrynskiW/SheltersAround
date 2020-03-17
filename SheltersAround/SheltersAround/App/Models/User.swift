//
//  User.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation

struct User {
    let id: UUID
    let email: String
    var phone: String?
    var animals: [Animal]
    var payments: [Payment]
    
    init(_ email: String,_ phone: String? = nil,_ animals: [Animal] = [],_ payments: [Payment] = []) {
        self.id = UUID.init()
        self.email = email
        self.phone = phone
        self.animals = animals
        self.payments = payments
    }
}

