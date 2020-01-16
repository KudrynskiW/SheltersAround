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
    
    func test_didStreetNameHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyStreetName, dummyAddress.streetName)
    }
    
    func test_didStreetNumberHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyStreetNumber, dummyAddress.streetNumber)
    }
    
    func test_didCityHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyCity, dummyAddress.city)
    }
    
    func test_didPostalCodeHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyPostalCode, dummyAddress.postalCode)
    }
    
    func test_didCountryHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyCountry, dummyAddress.country)
    }
}
