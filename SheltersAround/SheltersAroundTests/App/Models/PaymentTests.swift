//
//  PaymentTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround

class PaymentTests: XCTestCase {
    let dummyAmount: Double = 10.0
    let dummyUserId: UUID = UUID.init()
    let dummyInstitutionId: UUID = UUID.init()
    
    var dummyPayment: Payment = Payment(0.0, UUID.init(), UUID.init())
    

    override func setUp() {
        dummyPayment = Payment(dummyAmount, dummyUserId, dummyInstitutionId)
    }
    
    func test_didAmmountHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyAmount, dummyPayment.amount)
    }
    
    func test_didUserIdHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyUserId, dummyPayment.userId)
    }
    
    func test_didInstitutionIdHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyInstitutionId, dummyPayment.institutionId)
    }
    
    func test_didAnimalIdIsEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertNil(dummyPayment.animalId)
    }
    
    func test_didAnimalIsAssignedCorrectly_shouldReturnTrue() {
        let dummyAnimalId = UUID.init()
        
        dummyPayment = Payment(dummyAmount, dummyUserId, dummyInstitutionId, dummyAnimalId)
        
        XCTAssertEqual(dummyAnimalId, dummyPayment.animalId)
    }

}
