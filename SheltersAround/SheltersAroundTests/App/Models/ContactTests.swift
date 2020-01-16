//
//  ContactTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround

class ContactTests: XCTestCase {
    var dummyContactPerson: String?
    let dummyPhoneNumbers: [String] = ["123456789", "12122323"]
    let dummyEmailAddress: String = "example@email.com"
    
    var dummyContact: Contact = Contact(nil, [""] , "")
    
    override func setUp() {
        dummyContact = Contact(nil, dummyPhoneNumbers, dummyEmailAddress)
    }
    
    func test_didContactPersonIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertNil(dummyContact.contactPerson)
    }
    
    func test_didContactPersonHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyContact.contactPerson = dummyContactPerson
        
        XCTAssertEqual(dummyContactPerson, dummyContact.contactPerson)
    }
    
    func test_didPhoneNumberHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyPhoneNumbers, dummyContact.phoneNumbers)
    }
    
    func test_didEmailAddressHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyEmailAddress, dummyContact.emailAddress)
    }
}
