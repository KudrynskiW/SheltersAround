//
//  Address.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation

struct Address {
    let streetName: String
    let streetNumber: String
    let city: String
    let postalCode: String
    let country: String
    
    init(_ streetName: String,_ streetNumber: String,_ city: String,_ postalCode: String,_ country: String) {
        self.streetName = streetName
        self.streetNumber = streetNumber
        self.city = city
        self.postalCode = postalCode
        self.country = country
    }
}
