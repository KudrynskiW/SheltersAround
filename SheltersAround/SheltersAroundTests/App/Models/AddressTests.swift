//
//  AddressTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround

class AddressTests: XCTestCase {
    let dummyStreetName: String = "Street"
    let dummyStreetNumber: String = "1a"
    let dummyCity: String = "City"
    let dummyPostalCode: String = "00-123"
    let dummyCountry: String = "Poland"
    
    var dummyAddress = Address("", "", "", "", "")
    
    override func setUp() {
        dummyAddress = Address(dummyStreetName, dummyStreetNumber, dummyCity, dummyPostalCode, dummyCountry)
    }
}
