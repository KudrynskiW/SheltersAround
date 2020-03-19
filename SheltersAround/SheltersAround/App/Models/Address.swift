//
//  Address.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import MapKit

struct Address {
    let streetName: String
    let streetNumber: String
    let city: String
    let postalCode: String
    let country: String
    let location: CLLocationCoordinate2D
    
    init(_ streetName: String,_ streetNumber: String,_ city: String,_ postalCode: String,_ country: String,_ location: CLLocationCoordinate2D) {
        self.streetName = streetName
        self.streetNumber = streetNumber
        self.city = city
        self.postalCode = postalCode
        self.country = country
        self.location = location
    }
}

let exampleAddress = Address("Street name", "1", "Wroclaw", "55-040", "Poland", CLLocationCoordinate2D(latitude: 50.589197, longitude: 16.811438))
