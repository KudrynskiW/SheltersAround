//
//  InstitutionTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround

class InstitutionTests: XCTestCase {
    let dummyLogo: UIImage? = UIImage()
    let dummyForm: String = "TOZ"
    let dummyName: String = "Example Name"
    let dummyDescription: String = "Optional institution description."
    let dummyAddress: Address = Address("Street", "1a", "city", "00-123", "Country")
    let dummyContact: Contact = Contact("Example Person", ["123123123"], "example@email.com")
    let dummyBank: Bank? = Bank("Example Person", Address("Street", "1a", "city", "00-123", "Country"), "00 1111 2222 3333 4444")
    let dummyAnimals: [Animal]? =
        [ Animal(UUID.init(), nil, "Dog", "Nero", 12, "XL", nil, "Old lovely dog."),
          Animal(UUID.init(), nil, "Cat", "Kocur", 6, "M", nil, "Crazy cat.")]
    
    var dummyInstitution: Institution = Institution(nil, "", "", "", Address("", "", "", "", ""), Contact(nil, [""], ""), nil, nil)
    
    override func setUp() {
        dummyInstitution = Institution(nil, dummyName, dummyForm, dummyDescription, dummyAddress, dummyContact, nil, nil)
    }
    
    func test_didLogoIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertNil(dummyInstitution.logo)
    }
    
    func test_didLogoHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyInstitution.logo = dummyLogo
        
        XCTAssertEqual(dummyLogo, dummyInstitution.logo)
    }
    
    func test_didNameHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyName, dummyInstitution.name)
    }
    
    func test_didFormHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyForm, dummyInstitution.form)
    }
    
    func test_didDescriptionHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyDescription, dummyInstitution.description)
    }
    
    func test_didAddressHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyAddress, dummyInstitution.address)
    }
    
    func test_didContactHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyContact, dummyInstitution.contact)
    }
    
    func test_didBankIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertNil(dummyInstitution.bank)
    }
    
    func test_didBankHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyInstitution.bank = dummyBank
        
        XCTAssertEqual(dummyBank, dummyInstitution.bank)
    }
    
    func test_didAnimalsIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertNil(dummyInstitution.animals)
    }
    
    func test_didAnimalsHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyInstitution.animals = dummyAnimals
        
        XCTAssertEqual(dummyAnimals, dummyInstitution.animals)
    }
}
