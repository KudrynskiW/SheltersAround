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
    let dummyLogo: UIImage?
    let dummyName: String = "Example Name"
    let dummyDescription: String = "Optional institution description."
    let dummyAddress: Address = Address("Street", "1a", "city", "00-123", "Country")
    let dummyContact: Contact = Contact("Example Person", ["123123123"], "example@email.com")
    let dummyBank: Bank = Bank("Example Person", Address("Street", "1a", "city", "00-123", "Country"), "00 1111 2222 3333 4444")
    let dummyAnimals: [Animal] =
        [ Animal(UUID.init(), nil, "Dog", "Nero", 12, "XL", nil, "Old lovely dog."),
          Animal(UUID.init(), nil, "Cat", "Kocur", 6, "M", nil, "Crazy cat.")]
    
    var dummyInstitution: Institution = Institution()
}
