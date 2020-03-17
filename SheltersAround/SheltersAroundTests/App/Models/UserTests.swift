//
//  UserTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround

class UserTests: XCTestCase {
    let dummyEmail: String = "example@mail.com"
    let dummyPhone: String = "000000000"
    let dummyAnimals: [Animal] = [Animal(UUID.init(), nil, "", "", 0, "", nil, ""),
                                  Animal(UUID.init(), nil, "", "", 1, "", nil, "")]
    let dummyPayments: [Payment] = [Payment(10.0, UUID.init(), UUID.init()),
                                    Payment(15.0, UUID.init(), UUID.init())]
    
    var dummyUser: User = User("")
    
    override func setUp() {
        dummyUser = User(dummyEmail)
    }
    
    func test_didEmailHasBeenAssignedCorreclty_shouldReturnTrue() {
        XCTAssertEqual(dummyEmail, dummyUser.email)
    }
   
    
    func test_didPhoneIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertNil(dummyUser.phone)
    }
    
    func test_didPhoneHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyUser.phone = dummyPhone
        
        XCTAssertEqual(dummyPhone, dummyUser.phone)
    }
    
    func test_didAnimalsIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertEqual([], dummyUser.animals)
    }
    
    func test_didAnimalsHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyUser.animals = dummyAnimals
        
        XCTAssertEqual(dummyAnimals, dummyUser.animals)
    }
    
    func test_didPaymentsIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertEqual([], dummyUser.payments)
    }
    
    func test_didPaymentsHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyUser.payments = dummyPayments
        
        XCTAssertEqual(dummyPayments, dummyUser.payments)
    }
}
